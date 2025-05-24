#define _POSIX_C_SOURCE 200809L
#include <stdio.h>
#include <signal.h>
#include <stdlib.h>
#include <unistd.h>
#include <wait.h>
#include <errno.h>
#include <sys/types.h>

volatile sig_atomic_t pid;

void sigchld_handler(int signum)
{
    int olderrno = errno;
    pid = waitpid(-1, NULL, 0);
    errno = olderrno;
}

void sigint_handler(int signum) {}

int main()
{
    sigset_t mask, prev;
    signal(SIGCHLD, sigchld_handler);
    signal(SIGINT, sigint_handler);
    sigemptyset(&mask);
    sigaddset(&mask, SIGCHLD);

    while(1)
    {
        sigprocmask(SIG_BLOCK, &mask, &prev);
        if (fork() == 0)
            exit(0);
        
        pid = 0;
        sigprocmask(SIG_SETMASK, &prev, NULL);

        // 通过block signal控制signal的handle时机  
        // 因为block阻止的是reception而非sending

        while(!pid) ;
        // 这是很浪费CPU资源的一种处理

        printf("\n\n.\n\n");
    }
    exit(0);
}