#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/mman.h>   // for mmap, munmap
#include <sys/stat.h>   // for fstat
#include <fcntl.h>      // for open
#include <string.h>     // for string operations

int main()
{
    const char *filename = "text.txt";
    int fd;
    struct stat sb;
    char *mapped_data;
    
    printf("=== 使用 mmap 读取文件内容 ===\n");
    
    // 1. 打开文件
    fd = open(filename, O_RDONLY);
    if (fd == -1) {
        perror("打开文件失败");
        exit(EXIT_FAILURE);
    }
    printf("成功打开文件: %s\n", filename);
    
    // 2. 获取文件大小
    if (fstat(fd, &sb) == -1) {
        perror("获取文件状态失败");
        close(fd);
        exit(EXIT_FAILURE);
    }
    printf("文件大小: %ld 字节\n", sb.st_size);
    
    // 3. 将文件映射到内存
    // mmap(addr, length, prot, flags, fd, offset)
    // NULL: 让内核选择映射地址
    // sb.st_size: 映射整个文件
    // PROT_READ: 只读权限
    // MAP_PRIVATE: 私有映射（修改不会写回文件）
    // fd: 文件描述符
    // 0: 从文件开头开始映射
    mapped_data = mmap(NULL, sb.st_size, PROT_READ, MAP_PRIVATE, fd, 0);
    if (mapped_data == MAP_FAILED) {
        perror("内存映射失败");
        close(fd);
        exit(EXIT_FAILURE);
    }
    printf("成功创建内存映射\n");
    
    // 4. 映射成功后可以关闭文件描述符
    close(fd);
    
    // 5. 通过内存映射读取文件内容
    printf("\n--- 文件内容 (通过 mmap 读取) ---\n");
    // 使用 printf 的精度控制来打印指定长度的字符串
    printf("%.*s", (int)sb.st_size, mapped_data);
    
    // 如果文件末尾没有换行符，添加一个
    if (sb.st_size > 0 && mapped_data[sb.st_size - 1] != '\n') {
        printf("\n");
    }
    printf("--- 内容结束 ---\n");
    
    // 6. 解除内存映射
    if (munmap(mapped_data, sb.st_size) == -1) {
        perror("解除内存映射失败");
        exit(EXIT_FAILURE);
    }
    printf("成功解除内存映射\n");
    
    printf("程序执行完成！\n");
    return 0;
}