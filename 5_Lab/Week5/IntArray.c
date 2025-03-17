#include <stdio.h>

int main()
{
    int arr[5] = {0} ;
    int *ptr = arr;

    arr[1] = 1;
    int i1 = arr[1] ;

    int t = 1 ;
    arr[t + 1] = 2 ; 
    int i2 = arr[t + 1] ;

    *(ptr + 3) = 3 ;
    int i3 = *(ptr + 3) ;

    return 0;
}