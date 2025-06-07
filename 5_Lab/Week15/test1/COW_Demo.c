#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include <string.h>
#include <stdlib.h>

int global_var = 100;  // 全局变量，位于.data段

int main() {
    int local_var = 200;  // 局部变量，位于栈中
    char *heap_ptr = malloc(100);  // 堆内存分配
    strcpy(heap_ptr, "Original data");
    
    printf("Before fork:\n");
    printf("Global var addr: %p, value: %d\n", &global_var, global_var);
    printf("Local var addr: %p, value: %d\n", &local_var, local_var);
    printf("Heap ptr addr: %p, content: %s\n", heap_ptr, heap_ptr);
    
    pid_t pid = fork();
    
    if (pid == 0) {
        // 子进程：修改各种数据
        printf("\n[Child] Before modification:\n");
        printf("Global: %p -> %d\n", &global_var, global_var);
        printf("Local: %p -> %d\n", &local_var, local_var);
        printf("Heap: %p -> %s\n", heap_ptr, heap_ptr);
        
        // 修改数据（触发COW）
        global_var = 300;
        local_var = 400;
        strcpy(heap_ptr, "Modified by child");
        
        printf("\n[Child] After modification:\n");
        printf("Global: %p -> %d\n", &global_var, global_var);
        printf("Local: %p -> %d\n", &local_var, local_var);
        printf("Heap: %p -> %s\n", heap_ptr, heap_ptr);
        
        free(heap_ptr);
        exit(0);
        
    } else {
        // 父进程：等待子进程完成后检查数据
        wait(NULL);
        
        printf("\n[Parent] After child modification:\n");
        printf("Global: %p -> %d\n", &global_var, global_var);
        printf("Local: %p -> %d\n", &local_var, local_var);
        printf("Heap: %p -> %s\n", heap_ptr, heap_ptr);
        
        free(heap_ptr);
    }
    
    return 0;
}
