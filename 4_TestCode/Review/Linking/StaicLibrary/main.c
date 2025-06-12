#include <stdio.h>
#include "libmath.h"

int main() {
    int a = 3, b = 4;
    printf("sum(%d, %d) = %d\n", a, b, sum(a, b));
    printf("mul(%d, %d) = %d\n", a, b, mul(a, b));
    return 0;
}