#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <signal.h>

void sigint_handler(int signum)
{
    write(STDOUT_FILENO, "SIGINT received, exiting...\n", 29);
    _exit(0); // Exit the process on receiving SIGINT
}

int main()
{
    signal(SIGINT, sigint_handler); // Register signal handler for SIGINT
    pid_t parent_pid, child_pid;

    parent_pid = getpid(); // Get the parent process ID
    printf("Parent process ID: %d\n", parent_pid);

    if((child_pid = fork()) == 0)
    {
        printf("Child process ID: %d\n", getpid());
        while(1)
        {
            // Child process runs indefinitely
            sleep(1); // Sleep to prevent busy waiting
        }
    }

    while(1)
    {
        // Parent process runs indefinitely
        sleep(1); // Sleep to prevent busy waiting
    }
}