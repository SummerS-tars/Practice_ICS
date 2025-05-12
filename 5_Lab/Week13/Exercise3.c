// exercise_2_3.c
#define _DEFAULT_SOURCE // For strcspn if needed by compiler standard
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <signal.h>
#include <setjmp.h>
#include <string.h>
#include <errno.h> // Include errno.h

#define INPUT_BUFFER_SIZE 100

char input_string[INPUT_BUFFER_SIZE];
sigjmp_buf input_env, exit_env; // Use sigjmp_buf for signal safety

// SIGCHLD handler to reap zombie processes (same as 2.2)
void sigchld_handler(int sig) {
    int old_errno = errno;
    while (waitpid(-1, NULL, WNOHANG) > 0) {
        const char *msg = "Handler reaped child\n";
        write(STDOUT_FILENO, msg, strlen(msg));
    }
    errno = old_errno;
}

// SIGUSR1 handler (Signal A) - Jump to restart input
void sigusr1_handler(int sig) {
    // Jump back to the sigsetjmp(input_env, ...) location
    siglongjmp(input_env, 1); // Use non-zero value
}

// SIGUSR2 handler (Signal B) - Jump to exit sequence
void sigusr2_handler(int sig) {
    // Jump back to the sigsetjmp(exit_env, ...) location
    siglongjmp(exit_env, 1); // Use non-zero value
}

int main() {
    pid_t pid;

    printf("Program starting. PID: %d\n", getpid());
    printf("Send SIGUSR1 (%d) to this PID to enter a new string.\n", SIGUSR1);
    printf("Send SIGUSR2 (%d) to this PID to exit gracefully.\n", SIGUSR2);
    fflush(stdout);

    // Install signal handlers using sigaction for better control
    struct sigaction sa_chld, sa_usr1, sa_usr2;

    // SIGCHLD
    sa_chld.sa_handler = sigchld_handler;
    sigemptyset(&sa_chld.sa_mask);
    sa_chld.sa_flags = SA_RESTART | SA_NOCLDSTOP;
    if (sigaction(SIGCHLD, &sa_chld, NULL) == -1) {
        perror("sigaction(SIGCHLD) error"); exit(1);
    }

    // SIGUSR1 (Signal A)
    sa_usr1.sa_handler = sigusr1_handler;
    sigemptyset(&sa_usr1.sa_mask);
    sa_usr1.sa_flags = SA_RESTART; // Restart syscalls if possible
    if (sigaction(SIGUSR1, &sa_usr1, NULL) == -1) {
        perror("sigaction(SIGUSR1) error"); exit(1);
    }

    // SIGUSR2 (Signal B)
    sa_usr2.sa_handler = sigusr2_handler;
    sigemptyset(&sa_usr2.sa_mask);
    sa_usr2.sa_flags = 0; // Don't restart syscalls for exit signal
    if (sigaction(SIGUSR2, &sa_usr2, NULL) == -1) {
        perror("sigaction(SIGUSR2) error"); exit(1);
    }

    // --- Set jump point for graceful exit (via SIGUSR2) ---
    // sigsetjmp returns 0 on initial call, non-zero on longjmp
    if (sigsetjmp(exit_env, 1) != 0) {
        // Code here executes *only* after siglongjmp(exit_env, ...)
        printf("\nSignal B (SIGUSR2) received. Exiting!\n");
        fflush(stdout);
        // Optional: Add cleanup code here (e.g., kill remaining children)
        exit(0);
    }

    // --- Input Handling with Jump Point for SIGUSR1 ---
input_section:
    // sigsetjmp returns 0 on initial call, non-zero on longjmp from sigusr1_handler
    if (sigsetjmp(input_env, 1) == 0) {
        // Initial call: Prompt for the first string
        printf("Enter the initial string: ");
    } else {
        // Jumped back via siglongjmp from sigusr1_handler
        printf("\nSignal A (SIGUSR1) received. Enter a new string: ");
    }
    fflush(stdout);

    // Read the string
    if (fgets(input_string, sizeof(input_string), stdin) == NULL) {
        if (feof(stdin)) {
             printf("\nEOF detected. Exiting.\n");
             exit(0);
        }
        // If fgets is interrupted by a signal (SA_RESTART not always effective for fgets),
        // we might loop back or handle the error. For simplicity, exit on error.
        if (errno == EINTR) {
            printf("\nInput interrupted, trying again...\n");
            goto input_section; // Or handle differently
        }
        perror("fgets error");
        exit(1);
    }
    input_string[strcspn(input_string, "\n")] = 0; // Remove trailing newline
    printf("Current string set to: \"%s\"\n", input_string);
    fflush(stdout);


    // --- Main infinite loop ---
    printf("Starting main loop...\n");
    while (1) {
        // Parent's work
        sleep(1);
        printf("Parent (%d): Processing...\n", getpid());
        fflush(stdout);

        // Fork one child
        pid = fork();
        if (pid < 0) {
            perror("fork error - continuing loop");
        } else if (pid == 0) {
            // ---- Child Process ----
            // Child inherits the input_string value at the time of fork
            sleep(1);
            printf("Child (%d) printing: %s\n", getpid(), input_string);
            fflush(stdout);
            exit(0); // Child exits
            // ---- End Child Process ----
        }
        // Parent continues loop
    } // end while(1)

    // Should not be reached due to exit logic via SIGUSR2
    return 0;
}