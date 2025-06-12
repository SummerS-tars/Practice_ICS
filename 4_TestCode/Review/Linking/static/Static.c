#include <stdio.h>

int f();
int g();

int main() {
    printf("f() = %d\n", f());
    printf("g() = %d\n", g());
    printf("f() = %d\n", f());
    printf("g() = %d\n", g());
    return 0;
}

int f() {
    static int x = 1;
    return x++;
}

int g() {
    static int x = 2;
    return x++;
}