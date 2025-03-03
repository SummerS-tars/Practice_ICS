#include <stdio.h>

//* 此处传入最大整数类型，基于转换规则，此处可以保证不会在传入int,short,long等类型传入时2进制数不会变
void printIntegerBinary(long long n, int size)
{
    int bytes = size ;
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
    unsigned u = 2345678910 ;
    unsigned short us = u ;
    unsigned long ul = u ;
    printf("u = %u\n", u) ;
    printIntegerBinary(u, sizeof(unsigned)) ;
    printf("us = %u\n", us) ;
    printIntegerBinary(us, sizeof(unsigned short)) ;
    printf("ul = %lu\n", ul) ;
    printIntegerBinary(ul, sizeof(unsigned long)) ;

    puts("") ;

    int int1 = 1234567890 ;
    short short1 = int1 ;
    long long1 = int1 ;
    printf("int1 = %d\n", int1) ;
    printIntegerBinary(int1, sizeof(int)) ;
    printf("short1 = %d\n", short1) ;
    printIntegerBinary(short1, sizeof(short)) ;
    printf("long1 = %ld\n", long1) ;
    printIntegerBinary(long1, sizeof(long)) ;

    puts("") ;

    int int2 = -1234567890 ;
    short short2 = int2 ;
    long long2 = int2 ;
    printf("int2 = %d\n", int2) ;
    printIntegerBinary(int2, sizeof(int)) ;
    printf("short2 = %d\n", short2) ;
    printIntegerBinary(short2, sizeof(short)) ;
    printf("long2 = %ld\n", long2) ;
    printIntegerBinary(long2, sizeof(long)) ;

    return 0;
}

/**
 * u = 2345678910
 * 10001011110100000011100000111110
 * us = 14398
 * 0011100000111110
 * ul = 2345678910
 * 0000000000000000000000000000000010001011110100000011100000111110
 * 
 * int1 = 1234567890
 * 01001001100101100000001011010010
 * short1 = 722
 * 0000001011010010
 * long1 = 1234567890
 * 0000000000000000000000000000000001001001100101100000001011010010
 * 
 * int2 = -1234567890
 * 10110110011010011111110100101110
 * short2 = -722
 * 1111110100101110
 * long2 = -1234567890
 * 1111111111111111111111111111111110110110011010011111110100101110
 */