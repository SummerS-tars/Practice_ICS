#include <stdio.h>

int i = 114514;

void f() ;

int main() {
    printf("%d\n", i);
    f();
    printf("%d\n", i);
    return 0;
}