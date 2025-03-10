#include <stdio.h>
#include <string.h>

void printBinary(unsigned long num, int size)
{
    printf("Binary representation: ");
    for (int i = size * 8 - 1; i >= 0; i--)
    {
        printf("%d", (num >> i) & 1);
        if (i % 4 == 0)
        {
            printf(" ");
        }
    }
    printf("\n");
}

void printAllBinaryForInt(int num)
{
    int negnum = -num ;
    float fnum = num ;
    double dnum = num ;
    printf("int : %d | fnum : %f | dnum : %lf\n", num , fnum , dnum);
    printf("int    : ") ;
    printBinary(num, sizeof(int));
    printf("negint : ") ;
    printBinary(negnum, sizeof(int));
    printf("float  : ") ;
    printBinary(*(unsigned long *)&fnum, sizeof(float));
    printf("double : ") ;
    printBinary(*(unsigned long *)&dnum, sizeof(double));
}

void printAllBinaryForLong(long num)
{
    long negnum = -num ;
    float fnum = num ;
    double dnum = num ;
    printf("long : %ld | fnum : %f | dnum : %lf\n", num , fnum , dnum);
    printf("long    : ") ;
    printBinary(num, sizeof(long));
    printf("neglong : ") ;
    printBinary(negnum, sizeof(long));
    printf("float   : ") ;
    printBinary(*(unsigned long *)&fnum, sizeof(float));
    printf("double  : ") ;
    printBinary(*(unsigned long *)&dnum, sizeof(double));
}

void getBinaryString(unsigned long num, char* binaryString, int size)
{
    for (int i = 0 ; i < size * 8 ; i++, binaryString++)
        *binaryString = ((num >> (size * 8 - 1 - i)) & 1) + '0' ;
}

void getMaxSubstring(char *str1 , char *str2 )
{
    int maxLen = 0;
    int endIndex = 0;
    int len1 = strlen(str1);
    int len2 = strlen(str2);
    int table[len1 + 1][len2 + 1];

    for (int i = 0; i <= len1; i++)
    {
        for (int j = 0; j <= len2; j++)
        {
            if (i == 0 || j == 0)
            {
                table[i][j] = 0;
            }
            else if (str1[i - 1] == str2[j - 1])
            {
                table[i][j] = table[i - 1][j - 1] + 1;
                if (table[i][j] > maxLen)
                {
                    maxLen = table[i][j];
                    endIndex = i - 1;
                }
            }
            else
            {
                table[i][j] = 0;
            }
        }
    }

    if (maxLen > 0)
    {
        char substring[maxLen + 1];
        strncpy(substring, &str1[endIndex - maxLen + 1], maxLen);
        substring[maxLen] = '\0';
        printf("Max Substring: %s\n", substring);
    }
    else
    {
        printf("No common substring found.\n");
    }
}

void findMaxSubstringForInt(int num)
{
    if(num < 0) num = -num ;
    float fnum = num ;
    double dnum = num ;
    char intBinary[sizeof(int)*8+1] = {0} ;
    char floatBinary[sizeof(float)*8+1] = {0} ;
    char doubleBinary[sizeof(double)*8+1] = {0} ;

    getBinaryString(num, intBinary, sizeof(int)) ;
    getBinaryString(*(unsigned long *)&fnum, floatBinary, sizeof(float)) ;
    getBinaryString(*(unsigned long *)&dnum, doubleBinary, sizeof(double)) ;

    printf("decimal : %d\n", num) ;
    printf("int     : %s\n", intBinary) ;
    printf("float   : %s\n", floatBinary) ;
    printf("double  : %s\n", doubleBinary) ;
    printf("substring between int and float\n") ;
    getMaxSubstring(intBinary, floatBinary) ;
    printf("substring between int and double\n") ;
    getMaxSubstring(intBinary, doubleBinary) ;
}

int main()
{
    printAllBinaryForInt(114514) ;
    // findMaxSubstringForInt(114514) ;
    printAllBinaryForLong(1919810) ;
    // findMaxSubstringForInt(1919810) ;
    puts("") ;


    int t = 0 ;
    for(int i = 1 ; i <= 10 ; i ++)
    {
        findMaxSubstringForInt(t) ;
        puts("") ;
        findMaxSubstringForInt(-t) ;
        puts("") ;
        t *= 10 ;
        t += i ;
    }

    return 0 ;
}

/**
 * int : 114514 | fnum : 114514.000000 | dnum : 114514.000000
 * int    : Binary representation: 0000 0000 0000 0001 1011 1111 0101 0010 
 * negint : Binary representation: 1111 1111 1111 1110 0100 0000 1010 1110 
 * float  : Binary representation: 0100 0111 1101 1111 1010 1001 0000 0000 
 * double : Binary representation: 0100 0000 1111 1011 1111 0101 0010 0000 0000 0000 0000 0000 0000 0000 0000 0000 
 * 
 * long : 1919810 | fnum : 1919810.000000 | dnum : 1919810.000000
 * long    : Binary representation: 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0001 1101 0100 1011 0100 0010 
 * neglong : Binary representation: 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1110 0010 1011 0100 1011 1110 
 * float   : Binary representation: 0100 1001 1110 1010 0101 1010 0001 0000 
 * double  : Binary representation: 0100 0001 0011 1101 0100 1011 0100 0010 0000 0000 0000 0000 0000 0000 0000 0000 
 * 
 * decimal : 0
 * int     : 00000000000000000000000000000000
 * float   : 00000000000000000000000000000000
 * double  : 0000000000000000000000000000000000000000000000000000000000000000
 * substring between int and float
 * Max Substring: 00000000000000000000000000000000
 * substring between int and double
 * Max Substring: 00000000000000000000000000000000
 * 
 * decimal : 0
 * int     : 00000000000000000000000000000000
 * float   : 00000000000000000000000000000000
 * double  : 0000000000000000000000000000000000000000000000000000000000000000
 * substring between int and float
 * Max Substring: 00000000000000000000000000000000
 * substring between int and double
 * Max Substring: 00000000000000000000000000000000
 * 
 * decimal : 1
 * int     : 00000000000000000000000000000001
 * float   : 00111111100000000000000000000000
 * double  : 0011111111110000000000000000000000000000000000000000000000000000
 * substring between int and float
 * Max Substring: 00000000000000000000000
 * substring between int and double
 * Max Substring: 0000000000000000000000000000000
 * 
 * decimal : 1
 * int     : 00000000000000000000000000000001
 * float   : 00111111100000000000000000000000
 * double  : 0011111111110000000000000000000000000000000000000000000000000000
 * substring between int and float
 * Max Substring: 00000000000000000000000
 * substring between int and double
 * Max Substring: 0000000000000000000000000000000
 * 
 * decimal : 12
 * int     : 00000000000000000000000000001100
 * float   : 01000001010000000000000000000000
 * double  : 0100000000101000000000000000000000000000000000000000000000000000
 * substring between int and float
 * Max Substring: 0000000000000000000000
 * substring between int and double
 * Max Substring: 0000000000000000000000000000
 * 
 * decimal : 12
 * int     : 00000000000000000000000000001100
 * float   : 01000001010000000000000000000000
 * double  : 0100000000101000000000000000000000000000000000000000000000000000
 * substring between int and float
 * Max Substring: 0000000000000000000000
 * substring between int and double
 * Max Substring: 0000000000000000000000000000
 * 
 * decimal : 123
 * int     : 00000000000000000000000001111011
 * float   : 01000010111101100000000000000000
 * double  : 0100000001011110110000000000000000000000000000000000000000000000
 * substring between int and float
 * Max Substring: 00000000000000000
 * substring between int and double
 * Max Substring: 0000000000000000000000000
 * 
 * decimal : 123
 * int     : 00000000000000000000000001111011
 * float   : 01000010111101100000000000000000
 * double  : 0100000001011110110000000000000000000000000000000000000000000000
 * substring between int and float
 * Max Substring: 00000000000000000
 * substring between int and double
 * Max Substring: 0000000000000000000000000
 * 
 * decimal : 1234
 * int     : 00000000000000000000010011010010
 * float   : 01000100100110100100000000000000
 * double  : 0100000010010011010010000000000000000000000000000000000000000000
 * substring between int and float
 * Max Substring: 00000000000000
 * substring between int and double
 * Max Substring: 000000000000000000000
 * 
 * decimal : 1234
 * int     : 00000000000000000000010011010010
 * float   : 01000100100110100100000000000000
 * double  : 0100000010010011010010000000000000000000000000000000000000000000
 * substring between int and float
 * Max Substring: 00000000000000
 * substring between int and double
 * Max Substring: 000000000000000000000
 * 
 * decimal : 12345
 * int     : 00000000000000000011000000111001
 * float   : 01000110010000001110010000000000
 * double  : 0100000011001000000111001000000000000000000000000000000000000000
 * substring between int and float
 * Max Substring: 1000000111001
 * substring between int and double
 * Max Substring: 000000000000000000
 * 
 * decimal : 12345
 * int     : 00000000000000000011000000111001
 * float   : 01000110010000001110010000000000
 * double  : 0100000011001000000111001000000000000000000000000000000000000000
 * substring between int and float
 * Max Substring: 1000000111001
 * substring between int and double
 * Max Substring: 000000000000000000
 * 
 * decimal : 123456
 * int     : 00000000000000011110001001000000
 * float   : 01000111111100010010000000000000
 * double  : 0100000011111110001001000000000000000000000000000000000000000000
 * substring between int and float
 * Max Substring: 11110001001000000
 * substring between int and double
 * Max Substring: 11110001001000000
 * 
 * decimal : 123456
 * int     : 00000000000000011110001001000000
 * float   : 01000111111100010010000000000000
 * double  : 0100000011111110001001000000000000000000000000000000000000000000
 * substring between int and float
 * Max Substring: 11110001001000000
 * substring between int and double
 * Max Substring: 11110001001000000
 * 
 * decimal : 1234567
 * int     : 00000000000100101101011010000111
 * float   : 01001001100101101011010000111000
 * double  : 0100000100110010110101101000011100000000000000000000000000000000
 * substring between int and float
 * Max Substring: 100101101011010000111
 * substring between int and double
 * Max Substring: 100101101011010000111
 * 
 * decimal : 1234567
 * int     : 00000000000100101101011010000111
 * float   : 01001001100101101011010000111000
 * double  : 0100000100110010110101101000011100000000000000000000000000000000
 * substring between int and float
 * Max Substring: 100101101011010000111
 * substring between int and double
 * Max Substring: 100101101011010000111
 * 
 * decimal : 12345678
 * int     : 00000000101111000110000101001110
 * float   : 01001011001111000110000101001110
 * double  : 0100000101100111100011000010100111000000000000000000000000000000
 * substring between int and float
 * Max Substring: 01111000110000101001110
 * substring between int and double
 * Max Substring: 01111000110000101001110
 * 
 * decimal : 12345678
 * int     : 00000000101111000110000101001110
 * float   : 01001011001111000110000101001110
 * double  : 0100000101100111100011000010100111000000000000000000000000000000
 * substring between int and float
 * Max Substring: 01111000110000101001110
 * substring between int and double
 * Max Substring: 01111000110000101001110
 * 
 * decimal : 123456789
 * int     : 00000111010110111100110100010101
 * float   : 01001100111010110111100110100011
 * double  : 0100000110011101011011110011010001010100000000000000000000000000
 * substring between int and float
 * Max Substring: 0011101011011110011010001
 * substring between int and double
 * Max Substring: 00111010110111100110100010101
 * 
 * decimal : 123456789
 * int     : 00000111010110111100110100010101
 * float   : 01001100111010110111100110100011
 * double  : 0100000110011101011011110011010001010100000000000000000000000000
 * substring between int and float
 * Max Substring: 0011101011011110011010001
 * substring between int and double
 * Max Substring: 00111010110111100110100010101
 */