#include <stdio.h>
#define DELTA sizeof(int)

int main()
{
    int i = 0 ;
    for( i = (int)sizeof(int) ; i - DELTA >= 0 ; i -= DELTA )
    {
        printf("%d\n" , i);
    }

    return 0;
}

/**
 * will print in death loop
 * for sizeof() gets the size of the type in unsigned int
 */
