#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <string.h>
#include <fcntl.h>

// 全局变量，用于演示不同内存区域的行为
int global_initialized = 42;        // .data段
int global_uninitialized;          // .bss段
const int global_const = 100;      // .rodata段

// 函数用于读取并显示进程的内存映射
void display_memory_mappings(pid_t pid, const char* process_name) {
    char maps_path[256];
    char buffer[512];
    FILE *maps_file;
    
    snprintf(maps_path, sizeof(maps_path), "/proc/%d/maps", pid);
    maps_file = fopen(maps_path, "r");
    
    if (maps_file == NULL) {
        perror("Failed to open maps file");
        return;
    }
    
    printf("\n=== Memory mappings for %s (PID: %d) ===\n", process_name, pid);
    printf("Address Range        Perms  Offset   Device   Inode   Pathname\n");
    printf("-------------------------------------------------------------------\n");
    
    while (fgets(buffer, sizeof(buffer), maps_file)) {
        printf("%s", buffer);
    }
    
    fclose(maps_file);
}

// 函数用于显示变量的地址信息
void display_variable_addresses(const char* process_name) {
    static int static_var = 200;    // 静态变量
    int local_var = 300;            // 局部变量（栈）
    char *heap_ptr = malloc(100);   // 堆内存
    
    printf("\n=== Variable addresses in %s ===\n", process_name);
    printf("Global initialized (.data):  %p = %d\n", &global_initialized, global_initialized);
    printf("Global uninitialized (.bss): %p = %d\n", &global_uninitialized, global_uninitialized);
    printf("Global const (.rodata):      %p = %d\n", &global_const, global_const);
    printf("Static variable:             %p = %d\n", &static_var, static_var);
    printf("Local variable (stack):      %p = %d\n", &local_var, local_var);
    printf("Heap allocation:             %p\n", heap_ptr);
    printf("Function address (text):     %p\n", display_variable_addresses);
    
    if (heap_ptr) {
        free(heap_ptr);
    }
}

// 演示写时复制机制
void demonstrate_cow() {
    printf("\n=== Copy-on-Write Demonstration ===\n");
    
    // 分配一页内存并写入数据
    size_t page_size = getpagesize();
    char *shared_memory = malloc(page_size);
    strcpy(shared_memory, "Original data shared between parent and child");
    
    printf("Before fork - shared memory address: %p\n", shared_memory);
    printf("Page size: %zu bytes\n", page_size);
    
    pid_t pid = fork();
    
    if (pid == 0) {
        // 子进程
        printf("\n[Child] Memory address after fork: %p\n", shared_memory);
        printf("[Child] Original content: %s\n", shared_memory);
        
        // 触发写时复制
        printf("[Child] Modifying memory (triggering COW)...\n");
        strcpy(shared_memory, "Modified by child process - COW triggered!");
        
        printf("[Child] After modification: %s\n", shared_memory);
        printf("[Child] Memory address remains: %p\n", shared_memory);
        
        free(shared_memory);
        exit(0);
    } else {
        // 父进程等待子进程完成
        wait(NULL);
        
        printf("\n[Parent] After child modification:\n");
        printf("[Parent] Content: %s\n", shared_memory);
        printf("[Parent] Memory address: %p\n", shared_memory);
        printf("[Parent] Data unchanged due to COW mechanism\n");
        
        free(shared_memory);
    }
}

int main() {
    printf("=== Fork Memory Analysis Demonstration ===\n");
    printf("Process demonstration based on CSAPP Chapter 8\n\n");
    
    pid_t parent_pid = getpid();
    
    // 显示父进程的内存映射和变量地址
    display_memory_mappings(parent_pid, "Parent Process");
    display_variable_addresses("Parent Process");
    
    printf("\n\nPress Enter to fork child process...");
    getchar();
    
    pid_t child_pid = fork();
    
    if (child_pid == 0) {
        // 子进程代码
        printf("\n=== CHILD PROCESS STARTED ===\n");
        pid_t my_pid = getpid();
        
        // 显示子进程的内存映射和变量地址
        display_memory_mappings(my_pid, "Child Process");
        display_variable_addresses("Child Process");
        
        printf("\n[Child] Comparing with parent - note identical virtual addresses!\n");
        printf("[Child] This demonstrates that fork() copies the entire address space\n");
        printf("[Child] Child process will exit in 3 seconds...\n");
        
        sleep(3);
        exit(0);
        
    } else if (child_pid > 0) {
        // 父进程代码
        printf("\n[Parent] Child process created with PID: %d\n", child_pid);
        printf("[Parent] Waiting for child to complete...\n");
        
        // 等待子进程完成
        int status;
        wait(&status);
        
        printf("\n[Parent] Child process completed\n");
        
        // 演示写时复制机制
        demonstrate_cow();
        
        printf("\n=== Analysis Summary ===\n");
        printf("1. fork() creates identical virtual memory mappings\n");
        printf("2. Both processes see the same virtual addresses\n");
        printf("3. Copy-on-Write ensures memory efficiency\n");
        printf("4. Physical pages are shared until modified\n");
        printf("5. This demonstrates CSAPP concepts of virtual memory and process management\n");
        
    } else {
        perror("fork failed");
        exit(1);
    }
    
    return 0;
}
