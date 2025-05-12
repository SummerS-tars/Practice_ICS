// exercise_2_2.c
#define _DEFAULT_SOURCE // For strcspn if needed by compiler standard
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <signal.h>
#include <string.h>

#define INPUT_BUFFER_SIZE 100

char input_string[INPUT_BUFFER_SIZE];

// SIGCHLD handler to reap zombie processes
void sigchld_handler(int sig) {
    int old_errno = errno; // Save errno
    // Reap all terminated children non-blockingly
    while (waitpid(-1, NULL, WNOHANG) > 0) {
        const char *msg = "Handler reaped child\n";
        write(STDOUT_FILENO, msg, strlen(msg));
    }
    errno = old_errno; // Restore errno
}

int main() {
    pid_t pid;

    // Read input string from console
    printf("Enter the string for child processes to print: ");
    fflush(stdout);
    if (fgets(input_string, sizeof(input_string), stdin) == NULL) {
        perror("fgets error");
        exit(1);
    }
    // Remove trailing newline if present
    input_string[strcspn(input_string, "\n")] = 0;

    // Install SIGCHLD handler
    struct sigaction sa;
    sa.sa_handler = sigchld_handler;
    sigemptyset(&sa.sa_mask);
    sa.sa_flags = SA_RESTART | SA_NOCLDSTOP; // Restart interrupted syscalls, ignore SIGCHLD for stopped children
    if (sigaction(SIGCHLD, &sa, NULL) == -1) {
        perror("sigaction(SIGCHLD) error");
        exit(1);
    }

    printf("Starting main loop... Press Ctrl+C to exit.\n");

    // Main infinite loop
    while (1) {
        // Parent's work in this iteration
        sleep(1); // Parent sleeps for 1 second
        printf("Parent (%d): Processing...\n", getpid());
        fflush(stdout);

        // Create one child process in each iteration (as an example)
        pid = fork();

        if (pid < 0) {
            perror("fork error - continuing loop");
            // Optionally break or exit, here we just continue
        } else if (pid == 0) {
            // ---- Child Process ----
            sleep(1); // Child sleeps for 1 second
            printf("Child (%d) printing: %s\n", getpid(), input_string);
            fflush(stdout);
            exit(0); // Child MUST exit to trigger SIGCHLD
            // ---- End Child Process ----
        }
        // Parent process continues the loop immediately after fork
    } // end while(1)

    // This part is normally unreachable because of the infinite loop
    // unless the loop is broken by other means (like a signal not handled here)
    printf("Main loop finished (unexpectedly).\n");
    return 0;
}

/**
 * when receive SIGUSR1
 * Signal A (SIGUSR1) received. Enter a new string: Child (76972) printing: Hello,Process1!
 * Goodbye,Process!
 * 
 * the second line is user input
 * 
 * we can see the old child process which had not been reaped  
 * still print the old string after the note to input new string
 */