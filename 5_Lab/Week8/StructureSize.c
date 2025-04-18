#include <stdio.h>

int main() {
    struct s1 {
        char name;
        short code;
        int value;
    };

    struct s2 {
        short code;
        int value;
        char name;
    };

    struct s3 {
        int value;
        char name;
        short code;
    };

    struct s1 v1 = {'0', 10, 100};
    struct s2 v2 = {10, 100, '0'};
    struct s3 v3 = {100, '0', 10};

    printf("结构体s1大小：%lu字节\n", sizeof(v1));
    printf("结构体s2大小：%lu字节\n", sizeof(v2));
    printf("结构体s3大小：%lu字节\n", sizeof(v3));

    printf("\n结构体s1地址：%p\n", (void*)&v1);
    printf("s1.name地址：%p\n", (void*)&v1.name);
    printf("s1.code地址：%p\n", (void*)&v1.code);
    printf("s1.value地址：%p\n", (void*)&v1.value);

    printf("\n结构体s2地址：%p\n", (void*)&v2);
    printf("s2.code地址：%p\n", (void*)&v2.code);
    printf("s2.value地址：%p\n", (void*)&v2.value);
    printf("s2.name地址：%p\n", (void*)&v2.name);

    printf("\n结构体s3地址：%p\n", (void*)&v3);
    printf("s3.value地址：%p\n", (void*)&v3.value);
    printf("s3.name地址：%p\n", (void*)&v3.name);
    printf("s3.code地址：%p\n", (void*)&v3.code);

    return 0;
}
