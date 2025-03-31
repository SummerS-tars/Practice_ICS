#include <stdio.h>
#include <stdlib.h>

// 从索引(i, j)计算对应的自然数
int positionToNumber(int m, int n, int i, int j) {
    if (i < 0 || i >= m || j < 0 || j >= n) {
        printf("索引越界!\n");
        return -1;
    }

    int result = 0;
    int layer = 0;
    
    // 确定位置在第几层（从外到内）
    layer = (i < j) ? i : j;
    layer = (layer < m - 1 - i) ? layer : m - 1 - i;
    layer = (layer < n - 1 - j) ? layer : n - 1 - j;
    
    // 计算外层圈数的元素总数
    int elementsInOuterLayers = 0;
    for (int l = 0; l < layer; l++) {
        elementsInOuterLayers += 2 * (m - 2 * l) + 2 * (n - 2 * l - 2);
    }
    
    // 当前层的尺寸
    int currentLayerWidth = n - 2 * layer;
    int currentLayerHeight = m - 2 * layer;
    
    // 计算在当前层中的位置
    if (i == layer) { // 上边
        result = elementsInOuterLayers + (j - layer);
    } else if (j == n - 1 - layer) { // 右边
        result = elementsInOuterLayers + currentLayerWidth - 1 + (i - layer);
    } else if (i == m - 1 - layer) { // 下边
        result = elementsInOuterLayers + currentLayerWidth - 1 + currentLayerHeight - 1 + (n - 1 - layer - j);
    } else { // 左边
        result = elementsInOuterLayers + 2 * currentLayerWidth + currentLayerHeight - 3 + (m - 1 - layer - i);
    }
    
    return result;
}

// 从自然数计算对应的索引(i, j)
void numberToPosition(int m, int n, int number, int* i, int* j) {
    if (number < 0 || number >= m * n) {
        printf("数值越界!\n");
        *i = -1;
        *j = -1;
        return;
    }
    
    int layer = 0;
    int remainingNumber = number;
    int elementsInLayer;
    
    // 找到正确的层
    while (1) {
        elementsInLayer = 2 * (m - 2 * layer) + 2 * (n - 2 * layer - 2);
        if (remainingNumber < elementsInLayer) {
            break;
        }
        remainingNumber -= elementsInLayer;
        layer++;
    }
    
    // 当前层的尺寸
    int currentLayerWidth = n - 2 * layer;
    int currentLayerHeight = m - 2 * layer;
    
    // 在当前层中定位
    if (remainingNumber < currentLayerWidth) { // 上边
        *i = layer;
        *j = layer + remainingNumber;
    } else if (remainingNumber < currentLayerWidth + currentLayerHeight - 1) { // 右边
        *i = layer + (remainingNumber - currentLayerWidth + 1);
        *j = n - 1 - layer;
    } else if (remainingNumber < 2 * currentLayerWidth + currentLayerHeight - 2) { // 下边
        *i = m - 1 - layer;
        *j = n - 1 - layer - (remainingNumber - (currentLayerWidth + currentLayerHeight - 1));
    } else { // 左边
        *i = m - 1 - layer - (remainingNumber - (2 * currentLayerWidth + currentLayerHeight - 3));
        *j = layer;
    }
}

// 打印螺旋矩阵
void printSpiralMatrix(int m, int n) {
    int **matrix = (int **)malloc(m * sizeof(int *));
    for (int i = 0; i < m; i++) {
        matrix[i] = (int *)malloc(n * sizeof(int));
    }
    
    // 填充矩阵
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < n; j++) {
            matrix[i][j] = positionToNumber(m, n, i, j);
        }
    }
    
    // 打印矩阵
    printf("螺旋矩阵 (%d x %d):\n", m, n);
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < n; j++) {
            printf("%2d ", matrix[i][j]);
        }
        printf("\n");
    }
    
    // 释放内存
    for (int i = 0; i < m; i++) {
        free(matrix[i]);
    }
    free(matrix);
}

int main() {
    int m = 4, n = 4;
    int i, j, number;
    
    printf("二维数组元素螺旋映射实验\n");
    printf("===========================\n\n");
    
    // 打印示例矩阵
    printSpiralMatrix(m, n);
    
    // 测试从索引到自然数的映射
    printf("\n测试从索引到自然数的映射:\n");
    i = 0; j = 0;
    printf("(i=%d,j=%d) -> %d\n", i, j, positionToNumber(m, n, i, j));
    
    i = 1; j = 1;
    printf("(i=%d,j=%d) -> %d\n", i, j, positionToNumber(m, n, i, j));
    
    i = 2; j = 2;
    printf("(i=%d,j=%d) -> %d\n", i, j, positionToNumber(m, n, i, j));
    
    i = 3; j = 0;
    printf("(i=%d,j=%d) -> %d\n", i, j, positionToNumber(m, n, i, j));
    
    // 测试从自然数到索引的映射
    printf("\n测试从自然数到索引的映射:\n");
    number = 0;
    numberToPosition(m, n, number, &i, &j);
    printf("%d -> (i=%d,j=%d)\n", number, i, j);
    
    number = 5;
    numberToPosition(m, n, number, &i, &j);
    printf("%d -> (i=%d,j=%d)\n", number, i, j);
    
    number = 10;
    numberToPosition(m, n, number, &i, &j);
    printf("%d -> (i=%d,j=%d)\n", number, i, j);
    
    number = 15;
    numberToPosition(m, n, number, &i, &j);
    printf("%d -> (i=%d,j=%d)\n", number, i, j);
    
    // 测试更大规模的矩阵
    printf("\n更大规模的矩阵测试:\n");
    m = 5; n = 6;
    printSpiralMatrix(m, n);
    
    return 0;
}

/*
二维数组元素螺旋映射实验
===========================

螺旋矩阵 (4 x 4):
 0  1  2  3 
11 12 13  4 
10 15 14  5 
 9  8  7  6 

测试从索引到自然数的映射:
(i=0,j=0) -> 0
(i=1,j=1) -> 12
(i=2,j=2) -> 14
(i=3,j=0) -> 9

测试从自然数到索引的映射:
0 -> (i=0,j=0)
5 -> (i=2,j=3)
10 -> (i=2,j=0)
15 -> (i=2,j=2)

更大规模的矩阵测试:
螺旋矩阵 (5 x 6):
 0  1  2  3  4  5 
17 18 19 20 21  6 
16 27 28 29 22  7 
15 26 25 24 23  8 
14 13 12 11 10  9
*/