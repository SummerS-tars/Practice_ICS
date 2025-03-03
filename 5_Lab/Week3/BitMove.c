#include <stdio.h>
#include <limits.h>

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
    int int1 = 1 ;
    unsigned uint1 = int1 ;
    printf("int1 = %d\n", int1) ;
    printIntBin(int1) ;
    printf("uint1 = %u\n", uint1) ;
    printUIntBin(uint1) ;

    puts("") ;
    printf("after left shift 31 bits\n") ;
    int1 <<= 31;
    uint1 <<= 31;
    printf("int1 = %d\n", int1) ;
    printIntBin(int1) ;
    printf("uint1 = %u\n", uint1) ;
    printUIntBin(uint1) ;

    puts("") ;
    int int2 = INT_MAX ;
    unsigned uint2 = int2 ;
    printf("int2 = %d\n", int2) ;
    printIntBin(int2) ;
    printf("uint2 = %u\n", uint2) ;
    printUIntBin(uint2) ;

    puts("") ;
    printf("after left shift 1 bit\n") ;
    int2 <<= 1;
    uint2 <<= 1;
    printf("int2 = %d\n", int2) ;
    printIntBin(int2) ;
    printf("uint2 = %u\n", uint2) ;
    printUIntBin(uint2) ;

    puts("") ;
    unsigned uint3 = UINT_MAX ;
    int int3 = uint3 ;
    printf("int3 = %d\n", int3) ;
    printIntBin(int3) ;
    printf("uint3 = %u\n", uint3) ;
    printUIntBin(uint3) ;

    puts("") ;
    printf("after right shift 31 bit\n") ;
    int3 >>= 31;
    uint3 >>= 31;
    printf("int3 = %d\n", int3) ;
    printIntBin(int3) ;
    printf("uint3 = %u\n", uint3) ;
    printUIntBin(uint3) ;
    return 0;
}

/**
 * int1 = 1
 * 00000000000000000000000000000001
 * uint1 = 1
 * 00000000000000000000000000000001
 * 
 * after left shift 31 bits
 * int1 = -2147483648
 * 10000000000000000000000000000000
 * uint1 = 2147483648
 * 10000000000000000000000000000000
 * 
 * int2 = 2147483647
 * 01111111111111111111111111111111
 * uint2 = 2147483647
 * 01111111111111111111111111111111
 * 
 * after left shift 1 bit
 * int2 = -2
 * 11111111111111111111111111111110
 * uint2 = 4294967294
 * 11111111111111111111111111111110
 * 
 * int3 = -1
 * 11111111111111111111111111111111
 * uint3 = 4294967295
 * 11111111111111111111111111111111
 * 
 * after right shift 31 bit
 * int3 = -1
 * 11111111111111111111111111111111
 * uint3 = 1
 * 00000000000000000000000000000001
 */