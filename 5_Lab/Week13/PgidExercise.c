#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/types.h>

int main()
{
    pid_t pid;
    pid_t pgid;

    pid = getpid();
    pgid = getpgid(pid);
    printf("Process ID of the main program: %d\n", pid);
    printf("Process Group ID of the main program: %d\n", pgid);

    if(pid=fork() == 0)
    {
        pid = getpid();
        pgid = getpgid(pid);
        printf("Process ID of the child process 1: %d\n", pid);
        printf("Process Group ID of the child process 1: %d\n", pgid);
        _exit(0);
    }

    if(pid=fork() == 0)
    {
        setpgid(0, 0);
        pid = getpid();
        pgid = getpgid(pid);
        printf("Process ID of the child process 2: %d\n", pid);
        printf("Process Group ID of the child process 2: %d\n", pgid);
        _exit(0);
    }
}

/**
 * result:
 * Process ID of the main program: 68482
 * Process Group ID of the main program: 68482
 * Process ID of the child process 1: 68483
 * Process Group ID of the child process 1: 68482
 * Process ID of the child process 2: 68484
 * Process Group ID of the child process 2: 68484
 */