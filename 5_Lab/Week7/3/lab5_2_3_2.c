#include <stdio.h>

int main() {
    // 声明数组并初始化第一个元素
    short a[100] = {0x0f0f};
    
    printf("数组越界访问实验\n");
    printf("========================\n");
    
    // 计算并打印正常范围内的地址和值
    printf("a = %p\n", (void*)a);
    printf("a[0] = 0x%hx\n", a[0]);
    printf("a[99] = 0x%hx (数组最后一个元素)\n", a[99]);
    
    // 越界访问
    short *x = a + 1000;
    printf("\n越界访问:\n");
    printf("x = a + 1000 = %p\n", (void*)x);
    printf("越界地址与起始地址的差距: %ld 字节\n", (char*)x - (char*)a);
    
    // 尝试读取越界值
    printf("\n尝试读取越界地址的值:\n");
    printf("*x = 0x%hx\n", *x);
    
    // 设置越界地址的值（可能导致程序崩溃）
    printf("\n尝试修改越界地址的值:\n");
    *x = 0xdead;
    printf("修改后 *x = 0x%hx\n", *x);
    
    return 0;
}

/*
数组越界访问实验
========================
a = 0x7fffef5355c0
a[0] = 0xf0f
a[99] = 0x0 (数组最后一个元素)

越界访问:
x = a + 1000 = 0x7fffef535d90
越界地址与起始地址的差距: 2000 字节

尝试读取越界地址的值:
*x = 0x0

尝试修改越界地址的值:
修改后 *x = 0xdead
*/