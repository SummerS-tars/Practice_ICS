#include <stdio.h>
#include <signal.h>
#include <unistd.h>

// 信号处理程序
void handle_sigalrm(int sig) {
    printf("Caught signal %d: Alarm triggered\n", sig);
    _exit(0); // 退出程序
}

int main() {
    // 设置 SIGALRM 的信号处理程序
    signal(SIGALRM, handle_sigalrm);

    // 设置闹钟，在 5 秒后触发 SIGALRM 信号
    alarm(5);
    printf("Alarm set for 5 seconds\n");

    // 无限循环，等待信号
    while (1) {
        printf("Running...\n");
        sleep(1);
    }

    return 0;
}