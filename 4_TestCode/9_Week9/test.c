#include <stdio.h>

int exchange(int *ap, int b)
{
    int a = *ap ;

    *ap = b ;
    return a ;
}

int main()
{
    int a = 12 ;
    
    int b = exchange(&a, 20) ;  

    return 0;
}