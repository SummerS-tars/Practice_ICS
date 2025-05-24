#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <signal.h>
#include <errno.h>

#define N 10

void sigint_handler(int sig) 
{
    write(STDOUT_FILENO, "SIGINT received\n", 16);
    _exit(0); // 将原本不正常退出的Exit_status改为0
}

void fork12()
{
    pid_t pid[N];
    int i;
    int child_status;

    // Set up the signal handler for SIGINT
    signal(SIGINT, sigint_handler);

    for(i = 0 ; i < N ; i ++ )
    {
        if((pid[i] = fork()) == 0)
        {
            while(1) ;
        }
    }

    for(i = 0 ; i < N ; i ++ )
    {
        printf("Killing process %d\n", pid[i]);
        kill(pid[i], SIGINT);
    }

    for(i = 0 ; i < N ; i ++)
    {
        pid_t wpid = wait(&child_status);
        if(WIFEXITED(child_status))
            printf("Child %d terminated with status %d\n", wpid, WEXITSTATUS(child_status));
        else
            printf("Child %d terminated abnormally\n", wpid);
    }

    signal(SIGINT, SIG_DFL); // Reset the signal handler to default
    printf("All child processes terminated\n");
    fflush(stdout);
}

int main()
{
    fork12();
    return 0;
}

