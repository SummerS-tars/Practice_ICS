#include <stdio.h>
#include <limits.h>

//! deprecated for no 32-bits environment

int main()
{
    int x = INT_MIN ;
    int y = INT_MAX ;

    if( x == y + 1) {
        printf("-2147483648 == 2147483648\n");
    } else {
        printf("-2147483648 != 2147483648\n");
    }
}

/**
 * compile by 32-bits
 */