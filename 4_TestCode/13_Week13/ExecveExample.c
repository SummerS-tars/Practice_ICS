#include <stdio.h>
#include <signal.h>
#include <unistd.h>

extern char **environ;
// 传递当前进程的环境变量

int main()
{
    char *args[] = {"/usr/bin/ls", "-al", "/usr/bin", NULL} ;
    // 尾部的NULL是必须的

    if((fork()) == 0)
    {
        if(execve(args[0], args, environ) < 0)
        {
            perror("execve");
            return 1;
        }
    }

    printf("PP\n") ;
}
