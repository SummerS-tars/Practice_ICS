#include <stdio.h>

int main()
{
    int arr[5] = {1, 2, 3, 4, 5} ;
    int *ptr = arr;

    int i1 = arr[3] ;

    int t = 1 ; 
    int i2 = arr[t + 2] ;

    int i3 = *(ptr + 3) ;

    return 0;
}