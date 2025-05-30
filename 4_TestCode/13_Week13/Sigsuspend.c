#define _POSIX_C_SOURCE 200809L
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <errno.h>

volatile sig_atomic_t pid;

void sigchld_handler(int signum)
{
    int olderrno = errno;
    pid = waitpid(-1, NULL, 0);
    errno = olderrno;
}

void sigint_handler(int signum) {}

int main(int argc, char **argv)
{
    sigset_t mask, prev;
    signal(SIGCHLD, sigchld_handler);
    signal(SIGINT, sigint_handler);
    sigemptyset(&mask);
    sigaddset(&mask, SIGCHLD);

    while(1)
    {
        sigprocmask(SIG_BLOCK, &mask, &prev);
        pid_t child_pid = fork();

        if(child_pid < 0)
        {
            perror("fork failed");
            break;
        }
        else if(child_pid == 0)
        {
            // Child process
            exit(0);
        }

        pid = 0;
        while(!pid)
            sigsuspend(&prev); // 解除阻塞，等待SIGCHLD信号

        // 使用sigsuspend(sigset_t *set)函数可以解除race，同时不会占CPU资源、占时
        
        sigprocmask(SIG_SETMASK, &prev, NULL);
        printf(".");
    }
    exit(0);
}