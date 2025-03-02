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
    printf("%d\n" , abs(p)) ;

    printf("-2147483648 == 2147483647 + 1 : %s \n" , -2147483648 == 2147483647 + 1 ? "true" : "false") ;
    scanf("%d" , &p) ;
    return 0 ;
}