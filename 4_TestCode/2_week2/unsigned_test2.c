#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main()
{
    unsigned i = 0 ;
    for( ; i >= 0 ; i -- )
    {
        printf("%u\n" , i);
    }

    return 0;
}

/**
 * will print a loop from 4294967295(UINT_MAX) to 0
 */