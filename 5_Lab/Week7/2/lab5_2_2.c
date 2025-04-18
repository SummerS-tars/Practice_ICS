#include <stdio.h>
#include <stdlib.h>

// 使用宏定义n，方便修改测试
#define N 1024

int main() {
    printf("尝试创建大小为 %d x %d 的二维数组\n", N, N);
    
    // 声明二维数组
    long a[N][N];
    
    printf("数组创建成功，开始赋值\n");
    
    // 从1开始为数组赋值到n*n
    long value = 1;
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            a[i][j] = value++;
        }
    }
    
    // 输出最后一个元素的值
    printf("a[%d][%d] = %ld\n", N-1, N-1, a[N-1][N-1]);
    
    return 0;
}

/*
尝试创建大小为 100 x 100 的二维数组
数组创建成功，开始赋值
a[99][99] = 10000

尝试创建大小为 200 x 200 的二维数组
数组创建成功，开始赋值
a[199][199] = 40000

尝试创建大小为 300 x 300 的二维数组
数组创建成功，开始赋值
a[299][299] = 90000

尝试创建大小为 400 x 400 的二维数组
数组创建成功，开始赋值
a[399][399] = 160000

尝试创建大小为 500 x 500 的二维数组
数组创建成功，开始赋值
a[499][499] = 250000

尝试创建大小为 600 x 600 的二维数组
数组创建成功，开始赋值
a[599][599] = 360000

尝试创建大小为 700 x 700 的二维数组
数组创建成功，开始赋值
a[699][699] = 490000

尝试创建大小为 800 x 800 的二维数组
数组创建成功，开始赋值
a[799][799] = 640000

尝试创建大小为 1015 x 1015 的二维数组
数组创建成功，开始赋值
a[1014][1014] = 1030225

尝试创建大小为 1023 x 1023 的二维数组
数组创建成功，开始赋值
a[1022][1022] = 104652

N = 1024
Segmentation fault (core dumped)

after set ulimit -s to unlimited

尝试创建大小为 1024 x 1024 的二维数组
数组创建成功，开始赋值
a[1023][1023] = 1048576

尝试创建大小为 2000 x 2000 的二维数组
数组创建成功，开始赋值
a[1999][1999] = 4000000
*/