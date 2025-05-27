/* 
 * tsh - A tiny shell program with job control
 * 
 * 朱文凯 23307110192
 */
#define _POSIX_C_SOURCE 200809L
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <ctype.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <errno.h>

/* Misc manifest constants */
#define MAXLINE    1024   /* max line size */
#define MAXARGS     128   /* max args on a command line */
#define MAXJOBS      16   /* max jobs at any point in time */
#define MAXJID    1<<16   /* max job ID */

/* Job states */
#define UNDEF 0 /* undefined */
#define FG 1    /* running in foreground */
#define BG 2    /* running in background */
#define ST 3    /* stopped */

/* 
 * Jobs states: FG (foreground), BG (background), ST (stopped)
 * Job state transitions and enabling actions:
 *     FG -> ST  : ctrl-z
 *     ST -> FG  : fg command
 *     ST -> BG  : bg command
 *     BG -> FG  : fg command
 * At most 1 job can be in the FG state.
 */

/* Global variables */
extern char **environ;      /* defined in libc */
char prompt[] = "tsh> ";    /* command line prompt (DO NOT CHANGE) */
int verbose = 0;            /* if true, print additional output */
int nextjid = 1;            /* next job ID to allocate */
char sbuf[MAXLINE];         /* for composing sprintf messages */

struct job_t {              /* The job struct */
    pid_t pid;              /* job PID */
    int jid;                /* job ID [1, 2, ...] */
    int state;              /* UNDEF, BG, FG, or ST */
    char cmdline[MAXLINE];  /* command line */
};
struct job_t jobs[MAXJOBS]; /* The job list */
/* End global variables */


/* Function prototypes */

/* Here are the functions that you will implement */
void eval(char *cmdline);
int builtin_cmd(char **argv);
void do_bgfg(char **argv);
void waitfg(pid_t pid);

void sigchld_handler(int sig);
void sigtstp_handler(int sig);
void sigint_handler(int sig);

/* Here are helper routines that we've provided for you */
int parseline(const char *cmdline, char **argv); 
void sigquit_handler(int sig);

void clearjob(struct job_t *job);
void initjobs(struct job_t *jobs);
int maxjid(struct job_t *jobs); 
int addjob(struct job_t *jobs, pid_t pid, int state, char *cmdline);
int deletejob(struct job_t *jobs, pid_t pid); 
pid_t fgpid(struct job_t *jobs);
struct job_t *getjobpid(struct job_t *jobs, pid_t pid);
struct job_t *getjobjid(struct job_t *jobs, int jid); 
int pid2jid(pid_t pid); 
void listjobs(struct job_t *jobs);

void usage(void);
void unix_error(char *msg);
void app_error(char *msg);
typedef void handler_t(int);
handler_t *Signal(int signum, handler_t *handler);

/*
 * main - The shell's main routine 
 */
int main(int argc, char **argv) 
{
    char c;
    char cmdline[MAXLINE];
    int emit_prompt = 1; /* emit prompt (default) */

    /* Redirect stderr to stdout (so that driver will get all output
     * on the pipe connected to stdout) */
    dup2(1, 2);

    /* Parse the command line */
    while ((c = getopt(argc, argv, "hvp")) != EOF) {
        switch (c) {
        case 'h':             /* print help message */
            usage();
	    break;
        case 'v':             /* emit additional diagnostic info */
            verbose = 1;
	    break;
        case 'p':             /* don't print a prompt */
            emit_prompt = 0;  /* handy for automatic testing */
	    break;
        default:
            usage();
        }
    }

    /* Install the signal handlers */

    /* These are the ones you will need to implement */
    Signal(SIGINT,  sigint_handler);   /* ctrl-c */
    Signal(SIGTSTP, sigtstp_handler);  /* ctrl-z */
    Signal(SIGCHLD, sigchld_handler);  /* Terminated or stopped child */

    /* This one provides a clean way to kill the shell */
    Signal(SIGQUIT, sigquit_handler); 

    /* Initialize the job list */
    initjobs(jobs);

    /* Execute the shell's read/eval loop */
    while (1) {

	/* Read command line */
	if (emit_prompt) {
	    printf("%s", prompt);
	    fflush(stdout);
	}
	if ((fgets(cmdline, MAXLINE, stdin) == NULL) && ferror(stdin))
	    app_error("fgets error");
	if (feof(stdin)) { /* End of file (ctrl-d) */
	    fflush(stdout);
	    exit(0);
	}

	/* Evaluate the command line */
	eval(cmdline);
	fflush(stdout);
	fflush(stdout);
    } 

    exit(0); /* control never reaches here */
}
  
/* 
 * eval - Evaluate the command line that the user has just typed in
 * 
 * If the user has requested a built-in command (quit, jobs, bg or fg)
 * then execute it immediately. Otherwise, fork a child process and
 * run the job in the context of the child. If the job is running in
 * the foreground, wait for it to terminate and then return.  Note:
 * each child process must have a unique process group ID so that our
 * background children don't receive SIGINT (SIGTSTP) from the kernel
 * when we type ctrl-c (ctrl-z) at the keyboard.  
*/
void eval(char *cmdline) 
{
    char *argv[MAXARGS] = {0};  /* Argument list execve() */
    int bg;                     /* bg or fgs */
    sigset_t mask, prev;        /* Signal mask */

    // TODO: the mask control needs to be considered
    sigemptyset(&mask);
    sigaddset(&mask, SIGCHLD);  /* Block SIGCHLD */
    sigprocmask(SIG_BLOCK, &mask, &prev); /* Block SIGCHLD */

    /**
     * Parse the command line and get the type how it runs.
     * Get 1 when getting bg or null cmd, and get 0 when 
     * getting fg cmd.
     */
    bg = parseline(cmdline, argv);

    if(argv[0] == NULL) {
        printf("Empty command line\n");
        return;
    }

    /**
     * try to execute the builtin cmd  
     * get 0 if the cmd is not a builtin cmd
     */
    if(builtin_cmd(argv)) {
        // TODO: use builtin_cmd to try to exec the command
        /**
         * if the command is a builtin cmd(quit, jobs, bg or fg),
         * here can be executed, no matter the built_in cmd is
         * executed successfully or not.
         */
        return ;
    }

    /**
     * if the program reached here, means the command should be treated
     * as an external cmd, then we should exec the cmd in such order:
     * 1. add to the job list; 2. exec the cmd in a child process; 3. 
     * judge the type of the job, if fg go to the waitfg, if bg just go
     * to the next loop.
     */
    // TODO: how to control the mask of signal here?
    pid_t pid = fork(); /* Fork a child process */
    if(pid == -1) {
        perror("fork error");
    } else if(!pid) { /* Child process */
        setpgid(0, 0); /* Set the child process group ID to its PID */
        execve(argv[0], argv, environ);
        /* If execve returns, it must have failed */
        printf("%s: Command not found\n", argv[0]);
        exit(1); /* Exit the child process */
    }
    addjob(jobs, pid, bg ? BG : FG, cmdline); /* Add the job to the job list */
    if(!bg) {
        waitfg(pid); /* Wait for the foreground job to terminate */
    } else {
        struct job_t *job = getjobpid(jobs, pid);
        printf("[%d] (%d) %s", job->jid, job->pid, job->cmdline);
    }

    sigprocmask(SIG_SETMASK, &prev, NULL); /* Unblock SIGCHLD */
    return;
}

/* 
 * parseline - Parse the command line and build the argv array.
 * 
 * Characters enclosed in single quotes are treated as a single
 * argument.  Return true if the user has requested a BG job, false if
 * the user has requested a FG job.  
 */
int parseline(const char *cmdline, char **argv) 
{
    static char array[MAXLINE]; /* holds local copy of command line */
    char *buf = array;          /* ptr that traverses command line */
    char *delim;                /* points to first space delimiter */
    int argc;                   /* number of args */
    int bg;                     /* background job? */

    strcpy(buf, cmdline);
    buf[strlen(buf)-1] = ' ';  /* replace trailing '\n' with space */
    while (*buf && (*buf == ' ')) /* ignore leading spaces */
	buf++;

    /* Build the argv list */
    argc = 0;
    if (*buf == '\'') {
	buf++;
	delim = strchr(buf, '\'');
    }
    else {
	delim = strchr(buf, ' ');
    }

    while (delim) {
	argv[argc++] = buf;
	*delim = '\0';
	buf = delim + 1;
	while (*buf && (*buf == ' ')) /* ignore spaces */
	       buf++;

	if (*buf == '\'') {
	    buf++;
	    delim = strchr(buf, '\'');
	}
	else {
	    delim = strchr(buf, ' ');
	}
    }
    argv[argc] = NULL;
    
    if (argc == 0)  /* ignore blank line */
	return 1;

    /* should the job run in the background? */
    if ((bg = (*argv[argc-1] == '&')) != 0) {
	argv[--argc] = NULL;
    }
    return bg;
}

/* 
 * builtin_cmd - If the user has typed a built-in command then execute
 *    it immediately.  
 */
int builtin_cmd(char **argv) 
{
    // TODO: how to handle the possible extraneous arguments?  

    if(strcmp(argv[0], "quit") == 0) { /* quit command */
        // TODO: if there is any job running or stopped, can't exit( to be tested )
        if(jobs[0].pid != 0) {
            printf("There are still jobs not terminated in this shell.\n");
            return 1;
        }
        exit(0);
    } else if(strcmp(argv[0], "jobs") == 0) {
        listjobs(jobs);
        return 1;
    } else if(strcmp(argv[0], "bg") == 0 || (strcmp(argv[0], "fg")) == 0) {
        do_bgfg(argv);
        return 1;
    }

    return 0;     /* not a builtin command */
}

/* 
 * do_bgfg - Execute the builtin bg and fg commands
 */
void do_bgfg(char **argv) 
{
    /**
     * The bg/fg command requires a PID or JID argument.
     */
    if(argv[1] == NULL) {
        printf("%s command requires PID or %%jobid argument\n", argv[0]);
        return;
    }
    if(argv[2] != NULL) {
        printf("too many arguments for bg/fg command\n");
        return;
    }

    /**
     * the second argument should be a PID or JID. The Pid is a
     * positive integer, and the JID is a positive integer prefixed
     * with a % sign.
     */
    char *id_arg = argv[1];
    int is_jid = 0;
    int arg_cp = 0;
    struct job_t *job = NULL;
    int bg = (strcmp(argv[0], "bg") == 0);

    if(id_arg[0] == '%') {
        is_jid = 1;
        arg_cp = 1;
    }

    /* get job by PID or JID */
    if(is_jid) {
        int jid = atoi(&id_arg[arg_cp]);
        if(!jid) {
            printf("%s: argument must be a PID or %%jobid\n", argv[0]);
            return;
        }
        job = getjobjid(jobs, jid);
        if(job == NULL) {
            printf("%s: No such job\n", id_arg);
            return;
        }
    } else {
        pid_t pid = atoi(id_arg);
        if(!pid) {
            printf("%s: argument must be a PID or %%jobid\n", argv[0]);
            return;
        }
        job = getjobpid(jobs, pid);
        if(job == NULL) {
            printf("(%s): No such process\n", id_arg);
            return;
        }
    }

    if(job->state == UNDEF) {
        printf("job %s is not defined\n", id_arg);
        return;
    }
    if(bg && job->state == BG) {
        printf("job is already running in background\n");
        return;
    } /* no need to judge wether the argument is FG, it is waited explicitly */

    if(bg) {
        job->state = BG;
        printf("[%d] (%d) %s", job->jid, job->pid, job->cmdline);
        if(kill(-job->pid, SIGCONT) < 0) {
            perror("kill error");
        }
    }
    else { // TODO: the logic of fg command is to be implemented
        job->state = FG;
        kill(-job->pid, SIGCONT); /* send SIGCONT to the foreground job */
        waitfg(job->pid); /* wait for the foreground job to terminate */
        /* need not to mask signal here as it has been done in the eval*/
    }

    return;
}

/* 
 * waitfg - Block until process pid is no longer the foreground process
 */
void waitfg(pid_t pid)
{
    // TODO: only have one parameter pid, then how to handle the signal mask?
    sigset_t empty;
    sigemptyset(&empty);

    struct job_t *job = getjobpid(jobs, pid);
    if(job == NULL) {
        printf("waitfg: job not found\n");
        return;
    }

    /**
     * wait until the fg job is finished and then deleted
     */
    while(fgpid(jobs) == pid) {
        /* Wait for the foreground job to terminate */
        sigsuspend(&empty); /* Wait for a signal to be delivered */
    }

    return;
}

/*****************
 * Signal handlers
 *****************/

/* 
 * sigchld_handler - The kernel sends a SIGCHLD to the shell whenever
 *     a child job terminates (becomes a zombie), or stops because it
 *     received a SIGSTOP or SIGTSTP signal. The handler reaps all
 *     available zombie children, but doesn't wait for any other
 *     currently running children to terminate.  
 */
void sigchld_handler(int sig) 
{
    // TODO: reap handler
    /**
     * possible sequence: 1. get a SIGCHLD signal; 2. call 
     * sigchld_handler; 3. traverse the job list to reap the
     * zombie children; 4. delete the job from the job list.
     */
    int i;
    pid_t pid;
    int status;

    for(i = 0; i < MAXJOBS; i++) {
        if(jobs[i].pid == 0) continue; /* skip the empty job */
        pid = waitpid(jobs[i].pid, &status, WNOHANG | WUNTRACED);
        if(pid < 0) {
            perror("waitpid error");
            return;
        }
        if(pid == 0) continue; /* no child process terminated */

        // TODO: to pass the test, the info prompt is omitted here
        if(WIFEXITED(status)) { /* child terminated normally */
            // printf("Job [%d] %d done\n",
            //     jobs[i].jid, jobs[i].pid);
            deletejob(jobs, pid);
        } else if(WIFSIGNALED(status)) { /* child terminated by a signal */
            printf("Job [%d] (%d) terminated by signal %d\n",
                   jobs[i].jid, jobs[i].pid, WTERMSIG(status));
            deletejob(jobs, pid);
        } else if(WIFSTOPPED(status)) { /* child stopped by a signal */
            jobs[i].state = ST; /* change the state to ST */
            printf("Job [%d] (%d) stopped by signal %d\n",
                   jobs[i].jid, jobs[i].pid, WSTOPSIG(status));
        }
    }
    return;
}

/* 
 * sigint_handler - The kernel sends a SIGINT to the shell whenver the
 *    user types ctrl-c at the keyboard.  Catch it and send it along
 *    to the foreground job.  
 */
void sigint_handler(int sig) 
{
    // TODO: sigint handler to be tested
    pid_t fg_pid = fgpid(jobs);
    if(fg_pid == 0) return; /* no foreground job */
    if(kill(-fg_pid, SIGINT) < 0) { /* send SIGINT to the foreground job */
        perror("kill error");
    }
    return;
}

/*
 * sigtstp_handler - The kernel sends a SIGTSTP to the shell whenever
 *     the user types ctrl-z at the keyboard. Catch it and suspend the
 *     foreground job by sending it a SIGTSTP.  
 */
void sigtstp_handler(int sig) 
{
    // TODO: sigtstp handler to be tested
    pid_t fg_pid = fgpid(jobs);
    if(fg_pid == 0) return;
    if(kill(-fg_pid, SIGTSTP) < 0) { /* send SIGTSTP to the foreground job */
        perror("kill error");
    }
    return;
}

/*********************
 * End signal handlers
 *********************/

/***********************************************
 * Helper routines that manipulate the job list
 **********************************************/

/* clearjob - Clear the entries in a job struct */
void clearjob(struct job_t *job) {
    job->pid = 0;
    job->jid = 0;
    job->state = UNDEF;
    job->cmdline[0] = '\0';
}

/* initjobs - Initialize the job list */
void initjobs(struct job_t *jobs) {
    int i;

    for (i = 0; i < MAXJOBS; i++)
	clearjob(&jobs[i]);
}

/* maxjid - Returns largest allocated job ID */
int maxjid(struct job_t *jobs) 
{
    int i, max=0;

    for (i = 0; i < MAXJOBS; i++)
	if (jobs[i].jid > max)
	    max = jobs[i].jid;
    return max;
}

/* addjob - Add a job to the job list */
int addjob(struct job_t *jobs, pid_t pid, int state, char *cmdline) 
{
    int i;
    
    if (pid < 1)
	return 0;

    for (i = 0; i < MAXJOBS; i++) {
        if (jobs[i].pid == 0) {
            jobs[i].pid = pid;
            jobs[i].state = state;
            jobs[i].jid = nextjid++;
            if (nextjid > MAXJOBS) nextjid = 1;
            strcpy(jobs[i].cmdline, cmdline);
            if(verbose){
                printf("Added job [%d] %d %s\n", jobs[i].jid, jobs[i].pid, jobs[i].cmdline);
            }
            return 1;
        }
    }
    printf("Tried to create too many jobs\n");
    return 0;
}

/* deletejob - Delete a job whose PID=pid from the job list */
int deletejob(struct job_t *jobs, pid_t pid) 
{
    int i;

    if (pid < 1)
	return 0;

    for (i = 0; i < MAXJOBS; i++) {
	if (jobs[i].pid == pid) {
	    clearjob(&jobs[i]);
	    nextjid = maxjid(jobs)+1;
	    return 1;
	}
    }
    return 0;
}

/* fgpid - Return PID of current foreground job, 0 if no such job */
pid_t fgpid(struct job_t *jobs) {
    int i;

    for (i = 0; i < MAXJOBS; i++)
	if (jobs[i].state == FG)
	    return jobs[i].pid;
    return 0;
}

/* getjobpid  - Find a job (by PID) on the job list */
struct job_t *getjobpid(struct job_t *jobs, pid_t pid) {
    int i;

    if (pid < 1)
	return NULL;
    for (i = 0; i < MAXJOBS; i++)
	if (jobs[i].pid == pid)
	    return &jobs[i];
    return NULL;
}

/* getjobjid  - Find a job (by JID) on the job list */
struct job_t *getjobjid(struct job_t *jobs, int jid) 
{
    int i;

    if (jid < 1)
	return NULL;
    for (i = 0; i < MAXJOBS; i++)
	if (jobs[i].jid == jid)
	    return &jobs[i];
    return NULL;
}

/* pid2jid - Map process ID to job ID */
int pid2jid(pid_t pid) 
{
    int i;

    if (pid < 1)
	return 0;
    for (i = 0; i < MAXJOBS; i++)
	if (jobs[i].pid == pid) {
            return jobs[i].jid;
        }
    return 0;
}

/* listjobs - Print the job list */
void listjobs(struct job_t *jobs) 
{
    int i;
    
    for (i = 0; i < MAXJOBS; i++) {
	if (jobs[i].pid != 0) {
	    printf("[%d] (%d) ", jobs[i].jid, jobs[i].pid);
	    switch (jobs[i].state) {
		case BG: 
		    printf("Running ");
		    break;
		case FG: 
		    printf("Foreground ");
		    break;
		case ST: 
		    printf("Stopped ");
		    break;
	    default:
		    printf("listjobs: Internal error: job[%d].state=%d ", 
			   i, jobs[i].state);
	    }
	    printf("%s", jobs[i].cmdline);
	}
    }
}
/******************************
 * end job list helper routines
 ******************************/


/***********************
 * Other helper routines
 ***********************/

/*
 * usage - print a help message
 */
void usage(void) 
{
    printf("Usage: shell [-hvp]\n");
    printf("   -h   print this message\n");
    printf("   -v   print additional diagnostic information\n");
    printf("   -p   do not emit a command prompt\n");
    exit(1);
}

/*
 * unix_error - unix-style error routine
 */
void unix_error(char *msg)
{
    fprintf(stdout, "%s: %s\n", msg, strerror(errno));
    exit(1);
}

/*
 * app_error - application-style error routine
 */
void app_error(char *msg)
{
    fprintf(stdout, "%s\n", msg);
    exit(1);
}

/*
 * Signal - wrapper for the sigaction function
 */
handler_t *Signal(int signum, handler_t *handler) 
{
    struct sigaction action, old_action;

    action.sa_handler = handler;  
    sigemptyset(&action.sa_mask); /* block sigs of type being handled */
    action.sa_flags = SA_RESTART; /* restart syscalls if possible */

    if (sigaction(signum, &action, &old_action) < 0)
	unix_error("Signal error");
    return (old_action.sa_handler);
}

/*
 * sigquit_handler - The driver program can gracefully terminate the
 *    child shell by sending it a SIGQUIT signal.
 */
void sigquit_handler(int sig) 
{
    printf("Terminating after receipt of SIGQUIT signal\n");
    exit(1);
}



