#include <stdio.h>

void f() ;

int y = 114514;
int x = 1919810;

int main() {
    printf("%d%d\n", y, x);

    printf("x = %X, y = %X\n", x, y);
    f();
    printf("x = %X, y = %X\n", x, y);

    return 0;
}