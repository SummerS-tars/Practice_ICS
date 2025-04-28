#include <unistd.h>

int main()
{
    char *filename = "/bin/ls";
    char *argv[] = {filename, "-l", NULL};
    char *envp[] = {NULL};

    execve(filename, argv, envp);
    
    return 0;
}