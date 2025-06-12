#include <stdio.h>

void f() ;

int x;

int main() {
    x = 114514;
    printf("%d\n", x);
    f();
    printf("%d\n", x);
    return 0;
}