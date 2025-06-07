#define _POSIX_C_SOURCE 200809L
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <errno.h>
#include <string.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <time.h>

// 全局变量用于信号处理演示
volatile sig_atomic_t signal_received = 0;

// 信号处理函数
void signal_handler(int sig) {
    signal_received = 1;
    printf("子进程收到信号 %d (SIGUSR1)\n", sig);
}

// 共享内存数据结构定义
typedef struct {
    int counter;              // 计数器
    char message[256];        // 消息缓冲区
    int producer_done;        // 生产者完成标志
    time_t timestamp;         // 时间戳
} shared_data_t;

// 演示mmap共享内存通信
void demo_mmap_shared_memory() {
    printf("\n=== mmap共享内存通信演示 ===\n");
    
    // 创建匿名内存映射用于进程间共享
    shared_data_t *shared_data = mmap(NULL, sizeof(shared_data_t), 
                                      PROT_READ | PROT_WRITE,
                                      MAP_SHARED | MAP_ANONYMOUS, -1, 0);
    
    if (shared_data == MAP_FAILED) {
        perror("mmap失败");
        return;
    }
    
    // 初始化共享数据
    shared_data->counter = 0;
    strcpy(shared_data->message, "初始消息");
    shared_data->producer_done = 0;
    shared_data->timestamp = time(NULL);
    
    printf("创建共享内存区域，地址: %p\n", shared_data);
    printf("初始状态 - 计数器: %d, 消息: %s\n", 
           shared_data->counter, shared_data->message);
    
    pid_t pid = fork();
    if (pid == -1) {
        perror("fork失败");
        munmap(shared_data, sizeof(shared_data_t));
        return;
    }
    
    if (pid == 0) {
        // 子进程：生产者
        printf("生产者进程(PID: %d)开始工作...\n", getpid());
        
        for (int i = 1; i <= 5; i++) {
            // 更新共享数据
            shared_data->counter = i;
            snprintf(shared_data->message, sizeof(shared_data->message),
                    "生产者消息 #%d", i);
            shared_data->timestamp = time(NULL);
            
            printf("生产者写入: 计数器=%d, 消息='%s'\n", 
                   shared_data->counter, shared_data->message);
            
            sleep(1); // 模拟工作时间
        }
        
        shared_data->producer_done = 1;
        printf("生产者完成工作\n");
        exit(0);
    } else {
        // 父进程：消费者
        printf("消费者进程(PID: %d)开始监听...\n", getpid());
        
        int last_counter = 0;
        while (!shared_data->producer_done || shared_data->counter > last_counter) {
            if (shared_data->counter > last_counter) {
                printf("消费者读取: 计数器=%d, 消息='%s', 时间戳=%ld\n",
                       shared_data->counter, shared_data->message, 
                       shared_data->timestamp);
                last_counter = shared_data->counter;
            }
            usleep(500000); // 500ms检查一次
        }
        
        printf("消费者完成工作\n");
        wait(NULL); // 等待子进程结束
    }
    
    // 清理共享内存
    if (munmap(shared_data, sizeof(shared_data_t)) == -1) {
        perror("munmap失败");
    } else {
        printf("共享内存已成功释放\n");
    }
}

// 演示基于文件的mmap共享内存
void demo_file_mmap_shared_memory() {
    printf("\n=== 基于文件的mmap共享内存演示 ===\n");
    
    const char *shared_file = "./tmp/ipc_mmap_demo";
    const size_t file_size = sizeof(shared_data_t);
    
    // 创建并初始化共享文件
    int fd = open(shared_file, O_CREAT | O_RDWR | O_TRUNC, 0666);
    if (fd == -1) {
        perror("无法创建共享文件");
        return;
    }
    
    // 设置文件大小
    if (ftruncate(fd, file_size) == -1) {
        perror("设置文件大小失败");
        close(fd);
        unlink(shared_file);
        return;
    }
    
    // 映射文件到内存
    shared_data_t *shared_data = mmap(NULL, file_size, 
                                      PROT_READ | PROT_WRITE,
                                      MAP_SHARED, fd, 0);
    
    if (shared_data == MAP_FAILED) {
        perror("文件mmap失败");
        close(fd);
        unlink(shared_file);
        return;
    }
    
    // 初始化共享数据
    shared_data->counter = 100;
    strcpy(shared_data->message, "文件映射共享内存");
    shared_data->producer_done = 0;
    shared_data->timestamp = time(NULL);
    
    printf("文件映射共享内存创建成功，文件: %s\n", shared_file);
    printf("共享数据地址: %p, 初始计数器: %d\n", 
           shared_data, shared_data->counter);
    
    pid_t pid = fork();
    if (pid == -1) {
        perror("fork失败");
        munmap(shared_data, file_size);
        close(fd);
        unlink(shared_file);
        return;
    }
    
    if (pid == 0) {
        // 子进程：修改共享数据
        printf("子进程开始修改文件映射的共享数据...\n");
        
        for (int i = 0; i < 3; i++) {
            shared_data->counter += 10;
            snprintf(shared_data->message, sizeof(shared_data->message),
                    "子进程更新 #%d (计数器: %d)", i+1, shared_data->counter);
            shared_data->timestamp = time(NULL);
            
            printf("子进程更新: %s\n", shared_data->message);
            
            // 确保数据写入文件
            if (msync(shared_data, file_size, MS_SYNC) == -1) {
                perror("msync失败");
            }
            
            sleep(1);
        }
        
        shared_data->producer_done = 1;
        exit(0);
    } else {
        // 父进程：读取共享数据
        printf("父进程监听文件映射的共享数据变化...\n");
        
        int last_counter = shared_data->counter;
        while (!shared_data->producer_done) {
            if (shared_data->counter != last_counter) {
                printf("父进程检测到变化: %s (时间戳: %ld)\n",
                       shared_data->message, shared_data->timestamp);
                last_counter = shared_data->counter;
            }
            usleep(500000); // 500ms检查一次
        }
        
        wait(NULL); // 等待子进程结束
        printf("最终状态: 计数器=%d, 消息='%s'\n",
               shared_data->counter, shared_data->message);
    }
    
    // 清理资源
    munmap(shared_data, file_size);
    close(fd);
    unlink(shared_file); // 删除临时文件
    printf("文件映射共享内存已清理\n");
}

// 演示管道通信
void demo_pipe() {
    printf("\n=== 管道(Pipe)通信演示 ===\n");
    
    int pipefd[2];
    pid_t pid;
    char buffer[256];
    
    // 创建管道
    if (pipe(pipefd) == -1) {
        perror("pipe创建失败");
        return;
    }
    
    pid = fork();
    if (pid == -1) {
        perror("fork失败");
        return;
    }
    
    if (pid == 0) {
        // 子进程：从管道读取数据
        close(pipefd[1]); // 关闭写端
        
        printf("子进程等待从管道读取数据...\n");
        ssize_t bytes_read = read(pipefd[0], buffer, sizeof(buffer)-1);
        if (bytes_read > 0) {
            buffer[bytes_read] = '\0';
            printf("子进程从管道读取到: %s\n", buffer);
        }
        
        close(pipefd[0]);
        exit(0);
    } else {
        // 父进程：向管道写入数据
        close(pipefd[0]); // 关闭读端
        
        char *message = "Hello from parent process!";
        printf("父进程向管道写入: %s\n", message);
        write(pipefd[1], message, strlen(message));
        
        close(pipefd[1]);
        wait(NULL); // 等待子进程结束
    }
}

// 演示信号通信
void demo_signal() {
    printf("\n=== 信号(Signal)通信演示 ===\n");
    
    pid_t pid;
    
    pid = fork();
    if (pid == -1) {
        perror("fork失败");
        return;
    }
    
    if (pid == 0) {
        // 子进程：设置信号处理器并等待信号
        signal(SIGUSR1, signal_handler);
        
        printf("子进程(PID: %d)等待信号...\n", getpid());
        while (!signal_received) {
            sleep(1);
        }
        printf("子进程收到信号，准备退出\n");
        exit(0);
    } else {
        // 父进程：发送信号给子进程
        sleep(2); // 给子进程时间设置信号处理器
        printf("父进程向子进程(PID: %d)发送SIGUSR1信号\n", pid);
        kill(pid, SIGUSR1);
        
        wait(NULL); // 等待子进程结束
    }
}

// 演示共享内存的概念（简化版）
void demo_shared_memory_concept() {
    printf("\n=== 共享内存概念演示 ===\n");
    
    printf("在传统的IPC中，共享内存是最快的通信方式\n");
    printf("多个进程可以直接访问同一块物理内存区域\n");
    
    // 这里我们用fork演示父子进程如何共享全局变量的概念
    // 注意：fork后，子进程会有独立的内存空间
    
    static int shared_var = 100;
    pid_t pid;
    
    printf("fork前，shared_var = %d (地址: %p)\n", shared_var, &shared_var);
    
    pid = fork();
    if (pid == -1) {
        perror("fork失败");
        return;
    }
    
    if (pid == 0) {
        // 子进程
        shared_var = 200;
        printf("子进程修改后，shared_var = %d (地址: %p)\n", shared_var, &shared_var);
        exit(0);
    } else {
        // 父进程
        wait(NULL); // 等待子进程结束
        printf("子进程结束后，父进程的shared_var = %d (地址: %p)\n", shared_var, &shared_var);
        printf("注意：地址相同但值不同，说明fork后内存空间是独立的\n");
        printf("真正的共享内存需要使用System V IPC或POSIX共享内存\n");
    }
}

// 演示文件描述符在fork中的继承
void demo_fd_inheritance() {
    printf("\n=== 文件描述符继承演示 ===\n");
    
    int pipefd[2];
    pid_t pid1, pid2;
    
    if (pipe(pipefd) == -1) {
        perror("pipe创建失败");
        return;
    }
    
    printf("创建两个子进程，演示它们如何通过继承的管道通信\n");
    
    // 创建第一个子进程（写进程）
    pid1 = fork();
    if (pid1 == -1) {
        perror("fork失败");
        return;
    }
    
    if (pid1 == 0) {
        // 第一个子进程：写入者
        close(pipefd[0]); // 关闭读端
        
        for (int i = 1; i <= 3; i++) {
            char msg[50];
            snprintf(msg, sizeof(msg), "Message %d from writer", i);
            write(pipefd[1], msg, strlen(msg) + 1);
            printf("写进程发送: %s\n", msg);
            sleep(1);
        }
        
        close(pipefd[1]);
        exit(0);
    }
    
    // 创建第二个子进程（读进程）
    pid2 = fork();
    if (pid2 == -1) {
        perror("fork失败");
        return;
    }
    
    if (pid2 == 0) {
        // 第二个子进程：读取者
        close(pipefd[1]); // 关闭写端
        
        char buffer[256];
        printf("读进程开始接收消息...\n");
        
        while (1) {
            ssize_t bytes_read = read(pipefd[0], buffer, sizeof(buffer));
            if (bytes_read <= 0) break;
            printf("读进程收到: %s\n", buffer);
        }
        
        close(pipefd[0]);
        exit(0);
    }
    
    // 父进程：关闭管道并等待子进程
    close(pipefd[0]);
    close(pipefd[1]);
    
    wait(NULL); // 等待第一个子进程
    wait(NULL); // 等待第二个子进程
}

int main() {
    printf("=== 传统IPC机制演示程序 ===\n");
    printf("本程序将演示几种基本的进程间通信方式\n");
    
    // 1. 管道通信演示
    demo_pipe();
    
    // 2. 信号通信演示
    demo_signal();
    
    // 3. 共享内存概念演示
    demo_shared_memory_concept();
    
    // 4. 文件描述符继承演示
    demo_fd_inheritance();
    
    // 5. mmap匿名共享内存演示
    demo_mmap_shared_memory();
    
    // 6. mmap基于文件的共享内存演示
    demo_file_mmap_shared_memory();
    
    printf("\n=== 程序结束 ===\n");
    printf("总结：\n");
    printf("1. 管道：用于相关进程间的数据传输，简单高效\n");
    printf("2. 信号：用于进程间的简单通知，不能传输大量数据\n");
    printf("3. 共享内存：最快的IPC方式，但需要同步机制\n");
    printf("4. 文件描述符：fork后子进程继承父进程的文件描述符\n");
    printf("5. mmap匿名映射：进程间直接共享内存，高效且灵活\n");
    printf("6. mmap文件映射：基于文件的共享内存，支持持久化\n");
    
    return 0;
}