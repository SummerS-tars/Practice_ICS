#include <stdio.h>

int myfunc(unsigned int len) {
    int sum = 0;
    for(unsigned int i = 1; i <= len; i++) {
        sum += i * i;
    }
    return sum;
}

int main() {
    int (*pfun)(unsigned int);
    
    // 情况1: pfun = myfunc
    pfun = myfunc;
    printf("pfun(10) = %d\n", pfun(10));
    printf("(*pfun)(10) = %d\n", (*pfun)(10));
    
    // 情况2: pfun = &myfunc
    pfun = &myfunc;
    printf("pfun(10) = %d\n", pfun(10));
    printf("(*pfun)(10) = %d\n", (*pfun)(10));
    
    return 0;
}
