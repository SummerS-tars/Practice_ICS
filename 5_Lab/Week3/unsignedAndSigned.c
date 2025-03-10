#include <stdio.h>

void printIntBin(int n)
{
    int bytes = (int)sizeof(int) ;
    char bin[bytes * 8 + 1] ;
    for( int i = bytes * 8 - 1 ; i >= 0 ; i-- )
    {
        bin[i] = (n & 1) + '0' ;
        n >>= 1 ;
    }
    printf("%s\n", bin) ;
}

void printUIntBin(unsigned n)
{
    int bytes = (int)sizeof(unsigned) ;
    char bin[bytes * 8 + 1] ;
    for( int i = bytes * 8 - 1 ; i >= 0 ; i-- )
    {
        bin[i] = (n & 1) + '0' ;
        n >>= 1 ;
    }
    printf("%s\n", bin) ;
}

int main()
{
    int int1 = 12345 , int2 = -12345 ;
    unsigned uint1 = int1 , uint2 = int2 ;
    printf("int1 = %d\n", int1) ;
    printIntBin(int1) ;
    printf("int2 = %d\n", int2) ;
    printIntBin(int2) ;
    printf("uint1 = %u\n", uint1) ;
    printUIntBin(uint1) ;
    printf("uint2 = %u\n", uint2) ;
    printUIntBin(uint2) ;

    return 0;
}

/**
 * int1 = 12345
 * 00000000000000000011000000111001
 * int2 = -12345
 * 11111111111111111100111111000111
 * uint1 = 12345
 * 00000000000000000011000000111001
 * uint2 = 4294954951
 * 11111111111111111100111111000111
 */