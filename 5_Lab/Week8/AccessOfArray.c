#include <stdio.h>

char array_store(unsigned int index, char val) {
    char arr[10] ; // 声明一个长度为10的静态字符数组，初始化为0
    char old_val = arr[index]; // 读出index指向的元素值
    arr[index] = val;          // 把val写入index指向的元素
    return old_val;            // 返回原来的值
}

int main() {
    char input[] = "012345678901234567890123456789"; // 30个字符
    int len = sizeof(input) - 1; // 减去结尾的'\0'
    printf("输入字符串长度: %d\n", len);
    
    printf("索引\t输入字符\t返回ASCII码\n");
    printf("------------------------------------\n");
    
    for (int i = 0; i < len; i++) {
        char ret = array_store(i, input[i]);
        printf("%d\t%c\t\t%d\n", i, input[i], ret);
    }
    
    return 0;
}
