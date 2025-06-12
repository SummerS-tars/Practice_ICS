#include <stdio.h>
#include "sum.h"

int array[2] = {1, 2} ;

int main()
{
    int r = sum(array , 2 ) ;
    printf("result = %d\n" , r) ;

    return 0;
}