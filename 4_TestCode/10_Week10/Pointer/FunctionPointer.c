#include <stdio.h>

int foo(int a, int *bp)
{
    return a + *bp ;
}

int main()
{
    int (*fp)(int ,int *) = foo ;

    int a = 1 , b = 2 ;
    int result = fp(a, &b) ;

    printf("result = %d\n" , result) ;
    return 0;
}