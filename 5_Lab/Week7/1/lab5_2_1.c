#include <stdio.h>

void test(int i) {
    int a[10] = {0}; // 初始化数组为全0
    
    if (i > 10) {
        return;
    } else {
        a[i] = i; // 设置当前索引位置的值为i
        
        // 输出当前数组所有元素
        printf("函数调用 test(%d) 的数组值: ", i);
        for (int j = 0; j < 10; j++) {
            printf("%d ", a[j]);
        }
        printf("\n");
        
        // 递归调用
        test(i + 1);
    }
}

int main() {
    printf("开始递归调用函数...\n");
    test(0);
    return 0;
}

/*
开始递归调用函数...
函数调用 test(0) 的数组值: 0 0 0 0 0 0 0 0 0 0 
函数调用 test(1) 的数组值: 0 1 0 0 0 0 0 0 0 0 
函数调用 test(2) 的数组值: 0 0 2 0 0 0 0 0 0 0 
函数调用 test(3) 的数组值: 0 0 0 3 0 0 0 0 0 0 
函数调用 test(4) 的数组值: 0 0 0 0 4 0 0 0 0 0 
函数调用 test(5) 的数组值: 0 0 0 0 0 5 0 0 0 0 
函数调用 test(6) 的数组值: 0 0 0 0 0 0 6 0 0 0 
函数调用 test(7) 的数组值: 0 0 0 0 0 0 0 7 0 0 
函数调用 test(8) 的数组值: 0 0 0 0 0 0 0 0 8 0 
函数调用 test(9) 的数组值: 0 0 0 0 0 0 0 0 0 9 
函数调用 test(10) 的数组值: 0 0 0 0 0 0 0 0 0 0
*/
