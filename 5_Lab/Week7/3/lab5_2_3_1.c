#include <stdio.h>

int main() {
    // 声明数组
    long a[10];
    long b[10][100];
    
    printf("数组地址计算实验\n");
    printf("========================\n");
    
    // 输出数组元素大小
    printf("sizeof(long) = %zu 字节\n", sizeof(long));
    printf("sizeof(a[0]) = %zu 字节\n", sizeof(a[0]));
    printf("sizeof(b[0]) = %zu 字节\n", sizeof(b[0]));
    printf("\n");
    
    // 计算并打印a数组的地址增量
    printf("一维数组a的地址计算:\n");
    printf("a = %p\n", (void*)a);
    int test_values[] = {1, 2, 5, 10};
    for (int i = 0; i < 4; i++) {
        int idx = test_values[i];
        printf("(a + %d) = %p\n", idx, (void*)(a + idx));
        printf("(a + %d) - a = %ld\n", idx, (a + idx) - a);
    }
    printf("\n");
    
    // 计算并打印b数组的地址增量
    printf("二维数组b的地址计算:\n");
    printf("b = %p\n", (void*)b);
    for (int i = 0; i < 4; i++) {
        int idx = test_values[i];
        printf("(b + %d) = %p\n", idx, (void*)(b + idx));
        printf("(b + %d) - b = %ld\n", idx, (b + idx) - b);
    }
    
    return 0;
}

/*
数组地址计算实验
========================
sizeof(long) = 8 字节
sizeof(a[0]) = 8 字节
sizeof(b[0]) = 800 字节

一维数组a的地址计算:
a = 0x7ffe4c23e170
(a + 1) = 0x7ffe4c23e178
(a + 1) - a = 1
(a + 2) = 0x7ffe4c23e180
(a + 2) - a = 2
(a + 5) = 0x7ffe4c23e198
(a + 5) - a = 5
(a + 10) = 0x7ffe4c23e1c0
(a + 10) - a = 10

二维数组b的地址计算:
b = 0x7ffe4c23c230
(b + 1) = 0x7ffe4c23c550
(b + 1) - b = 1
(b + 2) = 0x7ffe4c23c870
(b + 2) - b = 2
(b + 5) = 0x7ffe4c23d1d0
(b + 5) - b = 5
(b + 10) = 0x7ffe4c23e170
(b + 10) - b = 10
*/