#include <stdio.h>
#include <math.h>
#include <stdlib.h> // 添加这个头文件

int main()
{
    printf("the size of int : %lu\n" , sizeof(int)) ;

    int p = 0 ;
    for( int i = 0 ; i <= 31 ; i ++)
    {
        p += 1 << i ;
    }
    printf("%d" , abs(p)) ;
    return 0 ;
}