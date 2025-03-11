#include <stdio.h>

int conditional(int x, int y, int z) {
    int boolization = !!x ;  // nonzero to 1 and 0 still 0
    int selectY = y & (~boolization + 1) ;  // use 1 as -1 and 0 still 0
    int selectZ = z & (boolization + ~1 + 1) ;// use 1 as 0 and 0 as -1
    return selectY | selectZ ;
  }

int main()
{
    int a , b , c ;
    a = b = c = 0;
    scanf("%d%d%d" , &a , &b, &c ) ;
    printf("%d\n" , conditional(a , b, c )) ;
    return 0;
}