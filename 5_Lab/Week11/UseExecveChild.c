#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <stdio.h>

int main()
{
    pid_t pid ;
    if( !(pid = fork()) )
    {
        char *filename = "/bin/ls";
        char *argv[] = {filename, "-l", NULL};
        char *envp[] = {NULL};

        execve(filename, argv, envp);
    }

    waitpid(pid, NULL, 0) ;
    return 0;
}