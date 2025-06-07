#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/stat.h>
#include <fcntl.h>

#define BUFFER_SIZE 4096  // 4KB 缓冲区，常见的页面大小

int main()
{
    const char *filename = "text.txt";
    FILE *file;
    struct stat file_stat;
    char *buffer;
    char *file_content = NULL;
    size_t total_bytes_read = 0;
    size_t bytes_read;
    size_t content_size = 0;
    size_t content_capacity = 0;
    
    printf("=== 使用标准库函数读取文件 ===\n");
    
    // 1. 获取文件信息
    if (stat(filename, &file_stat) == -1) {
        perror("获取文件信息失败");
        return EXIT_FAILURE;
    }
    printf("文件大小: %ld 字节\n", file_stat.st_size);
    
    // 2. 打开文件
    file = fopen(filename, "rb");  // 使用二进制模式确保精确读取
    if (file == NULL) {
        perror("打开文件失败");
        return EXIT_FAILURE;
    }
    printf("成功打开文件: %s\n", filename);
    
    // 3. 分配缓冲区
    buffer = malloc(BUFFER_SIZE);
    if (buffer == NULL) {
        perror("分配缓冲区失败");
        fclose(file);
        return EXIT_FAILURE;
    }
    
    // 4. 初始化动态内容存储
    content_capacity = BUFFER_SIZE;
    file_content = malloc(content_capacity);
    if (file_content == NULL) {
        perror("分配内容存储失败");
        free(buffer);
        fclose(file);
        return EXIT_FAILURE;
    }
    
    printf("开始读取文件内容...\n");
    
    // 5. 循环读取文件内容
    size_t read_count = 0;
    while ((bytes_read = fread(buffer, 1, BUFFER_SIZE, file)) > 0) {
        read_count++;
        
        // 检查是否需要扩展内容存储空间
        if (content_size + bytes_read > content_capacity) {
            content_capacity = content_capacity * 2 + bytes_read;
            char *new_content = realloc(file_content, content_capacity);
            if (new_content == NULL) {
                perror("重新分配内存失败");
                free(buffer);
                free(file_content);
                fclose(file);
                return EXIT_FAILURE;
            }
            file_content = new_content;
        }
        
        // 将读取的数据复制到内容存储中
        memcpy(file_content + content_size, buffer, bytes_read);
        content_size += bytes_read;
        total_bytes_read += bytes_read;
        
        printf("第 %zu 次读取: %zu 字节\n", read_count, bytes_read);
    }
    
    // 6. 检查读取错误
    if (ferror(file)) {
        perror("读取文件时发生错误");
        free(buffer);
        free(file_content);
        fclose(file);
        return EXIT_FAILURE;
    }
    
    printf("读取完成！总共读取: %zu 字节，分 %zu 次读取\n", total_bytes_read, read_count);
    
    // 7. 显示文件内容
    printf("\n--- 文件内容 (通过 fread 读取) ---\n");
    
    // 确保字符串以 null 结尾（如果是文本文件）
    if (content_size < content_capacity) {
        file_content[content_size] = '\0';
    } else {
        // 需要扩展空间添加 null 终止符
        char *temp = realloc(file_content, content_size + 1);
        if (temp != NULL) {
            file_content = temp;
            file_content[content_size] = '\0';
        }
    }
    
    // 显示内容（限制显示长度以避免过长输出）
    if (content_size <= 1000) {
        printf("%s", file_content);
    } else {
        printf("文件较大，显示前 500 字符和后 500 字符：\n");
        printf("前 500 字符:\n%.500s\n", file_content);
        printf("\n...[省略 %zu 字符]...\n\n", content_size - 1000);
        printf("后 500 字符:\n%s", file_content + content_size - 500);
    }
    
    if (content_size > 0 && file_content[content_size - 1] != '\n') {
        printf("\n");
    }
    printf("--- 内容结束 ---\n");
    
    // 8. 显示读取统计信息
    printf("\n=== 读取统计信息 ===\n");
    printf("缓冲区大小: %d 字节\n", BUFFER_SIZE);
    printf("读取次数: %zu\n", read_count);
    printf("平均每次读取: %.2f 字节\n", 
           read_count > 0 ? (double)total_bytes_read / read_count : 0.0);
    printf("文件大小: %ld 字节\n", file_stat.st_size);
    printf("实际读取: %zu 字节\n", total_bytes_read);
    printf("读取效率: %.2f%%\n", 
           file_stat.st_size > 0 ? (double)total_bytes_read / file_stat.st_size * 100 : 0.0);
    
    // 9. 清理资源
    free(buffer);
    free(file_content);
    fclose(file);
    
    printf("程序执行完成！\n");
    return EXIT_SUCCESS;
}