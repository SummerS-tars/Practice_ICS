#include <stdio.h>
#define INT_SIZE sizeof(int)
#define FLOAT_SIZE sizeof(float)
#define DOUBLE_SIZE sizeof(double)
#define FLOAT_EXPONENT_SIZE 8
#define FLOAT_EXPONENT_BIAS 127
#define FLOAT_MANTISSA_SIZE 23
#define DOUBLE_EXPONENT_SIZE 11
#define DOUBLE_EXPONENT_BIAS 1023
#define DOUBLE_MANTISSA_SIZE 52
#define NUM1 20250309
#define NUM2 -20250309
#define NUM3 -0.0625

/**
 * Print the binary representation of a number
 * @param num the number to print.
 * here use long long to store the number without lose precision
 * @param size the size of the number in bytes
 */
void printBinary(long long num, int size)
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

int main()
{
    float f1, f2 , f3 ;
    f1 = f2 = f3 = 0;
    double d1, d2 , d3 ;
    d1 = d2 = d3 = 0;
    float fspecial1, fspecial2;
    fspecial1 = fspecial2 = 0;
    double dspecial1, dspecial2;
    dspecial1 = dspecial2 = 0;



    // * 20250309 and -20250309(NUM1 and NUM2)
    printf("20250309 : \n") ;
    printf("int     : ") ;
    printBinary(20250309, INT_SIZE);
    {
        // for positive number sign bit is 0
        long long s = 0;
        // calculate exponent part
        long long E = 0 ;
        while(NUM1 >> E != 1)
        {
            E++ ;
        }               // find the first 1
        long long fe = E + FLOAT_EXPONENT_BIAS ;    // exponent for float
        long long de = E + DOUBLE_EXPONENT_BIAS ;   // exponent for double
        // calculate fraction part
        long long f = NUM1 - (1 << E) ;   // fraction
        // combine the sign, exponent and fraction
        long long llf1 = s << (FLOAT_SIZE * 8 - 1) | fe << FLOAT_MANTISSA_SIZE | 
                        (FLOAT_MANTISSA_SIZE - E > 0 ? f << (FLOAT_MANTISSA_SIZE - E) : f >> (E - FLOAT_MANTISSA_SIZE)) ;
        long long lld1 = s << (DOUBLE_SIZE * 8 - 1) | de << DOUBLE_MANTISSA_SIZE | 
                        (DOUBLE_MANTISSA_SIZE - E > 0 ? f << (DOUBLE_MANTISSA_SIZE - E) : f >> (E - DOUBLE_MANTISSA_SIZE)) ;
        f1 = *(float *)&llf1 ;
        d1 = *(double *)&lld1 ;
        // printf("E test : %lld\n", E);
        // printf("f test : %lld\n", fe);
        // printBinary(f, FLOAT_SIZE);
        // printf("f test : %lld\n", de);
        // printBinary(f, DOUBLE_SIZE);
        // printf("fe test : %lld\n", fe);
        // printBinary(fe, FLOAT_SIZE);
        // printf("de test : %lld\n", de);
        // printBinary(de, DOUBLE_SIZE);
    }
    printf("float   : ") ;
    printBinary(*(long long *)&f1, FLOAT_SIZE);
    printf("double  : ") ;
    printBinary(*(long long *)&d1, DOUBLE_SIZE);
    printf("f1 : %f | d1 : %lf\n", f1 , d1);

    printf("-20250309 : \n") ;
    printf("int     : ") ;
    printBinary(-20250309, INT_SIZE) ;
    {
        // for positive number sign bit is 0
        long long s = 1;
        // calculate exponent part
        long long E = 0 ;
        while((NUM2*(-1)) >> E != 1)
        {
            E++ ;
        }               // find the first 1 for positive number
        long long fe = E + FLOAT_EXPONENT_BIAS ;    // exponent for float
        long long de = E + DOUBLE_EXPONENT_BIAS ;   // exponent for double
        // calculate fraction part
        long long f = (NUM2*(-1)) - (1 << E) ;   // fraction
        // combine the sign, exponent and fraction
        long long llf2 = s << (FLOAT_SIZE * 8 - 1) | fe << FLOAT_MANTISSA_SIZE | 
                        (FLOAT_MANTISSA_SIZE - E > 0 ? f << (FLOAT_MANTISSA_SIZE - E) : f >> (E - FLOAT_MANTISSA_SIZE)) ;
        long long lld2 = s << (DOUBLE_SIZE * 8 - 1) | de << DOUBLE_MANTISSA_SIZE | 
                        (DOUBLE_MANTISSA_SIZE - E > 0 ? f << (DOUBLE_MANTISSA_SIZE - E) : f >> (E - DOUBLE_MANTISSA_SIZE)) ;
        f2 = *(float *)&llf2 ;
        d2 = *(double *)&lld2 ;
    }
    printf("float   : ") ;
    printBinary(*(long long *)&f2, FLOAT_SIZE);
    printf("double  : ") ;
    printBinary(*(long long *)&d2, DOUBLE_SIZE);
    printf("f2 : %f | d2 : %lf\n", f2 , d2);



    // * -0.0625(NUM3)
    printf("-0.0625 : \n") ;
    {
        // for positive number sign bit is 0
        long long s = 1;
        // calculate exponent part
        long long E = 0 ;
        while((NUM3*(-1)) * (1<<(-E)) < 1)
        {
            E-- ;
            // printf("%lf , %lld\n", (NUM3*(-1)) * (1<<(-E)), E);
        }               // find the first 1 for positive number
        long long fe = E + FLOAT_EXPONENT_BIAS ;    // exponent for float
        long long de = E + DOUBLE_EXPONENT_BIAS ;   // exponent for double
        // calculate fraction part
        long long f = (NUM3*(-1)) - 1.0/(1 << E) ;   // fraction
        // combine the sign, exponent and fraction
        long long llf2 = s << (FLOAT_SIZE * 8 - 1) | fe << FLOAT_MANTISSA_SIZE | f << (FLOAT_MANTISSA_SIZE - E) ;
        long long lld2 = s << (DOUBLE_SIZE * 8 - 1) | de << DOUBLE_MANTISSA_SIZE | f << (DOUBLE_MANTISSA_SIZE - E) ;
        f3 = *(float *)&llf2 ;
        d3 = *(double *)&lld2 ;
    }
    printf("float   : ") ;
    printBinary(*(long long *)&f3, FLOAT_SIZE);
    printf("double  : ") ;
    printBinary(*(long long *)&d3, DOUBLE_SIZE);
    printf("f3 : %f | d3 : %lf\n", f3 , d3);



    // * positive infinity
    printf("positive infinity : \n") ;
    {
        long long s = 0;
        long long fe = 255;
        long long de = 2047;
        long long llf1 = s << (FLOAT_SIZE * 8 - 1) | fe << FLOAT_MANTISSA_SIZE  ;
        long long lld1 = s << (DOUBLE_SIZE * 8 - 1) | de << DOUBLE_MANTISSA_SIZE  ;
        fspecial1 = *(float *)&llf1 ;
        dspecial1 = *(double *)&lld1 ;
    }
    printf("float   : ") ;
    printBinary(*(long long *)&fspecial1, FLOAT_SIZE);
    printf("double  : ") ;
    printBinary(*(long long *)&dspecial1, DOUBLE_SIZE);
    printf("fspecial1 : %f | dspecial1 : %lf\n", fspecial1 , dspecial1);


    // * NaN
    printf("NaN : \n") ;
    {
        long long s = 0;
        long long fe = 255;
        long long de = 2047;
        long long f = 1;
        long long llf1 = s << (FLOAT_SIZE * 8 - 1) | fe << FLOAT_MANTISSA_SIZE | f << (FLOAT_MANTISSA_SIZE - 1) ;
        long long lld1 = s << (DOUBLE_SIZE * 8 - 1) | de << DOUBLE_MANTISSA_SIZE | f << (DOUBLE_MANTISSA_SIZE - 1) ;
        fspecial2 = *(float *)&llf1 ;
        dspecial2 = *(double *)&lld1 ;
    }
    printf("float   : ") ;
    printBinary(*(long long *)&fspecial2, FLOAT_SIZE);
    printf("double  : ") ;
    printBinary(*(long long *)&dspecial2, DOUBLE_SIZE);
    printf("fspecial2 : %f | dspecial2 : %lf\n", fspecial2 , dspecial2);

    // printf("int size : %d\n", INT_SIZE);
    // printf("long size : %d\n", sizeof(long));
    // printf("float size : %d\n", FLOAT_SIZE);
    // printf("double size : %d\n", DOUBLE_SIZE);
    // printf("long long size : %d\n", sizeof(long long));
    // printf("long double size : %d\n", sizeof(long double));

    return 0;
}

/**
 * 20250309 : 
 * int : Binary representation: 0000 0001 0011 0100 1111 1110 1100 0101 
 * float : Binary representation: 0100 1011 1000 0000 0000 0000 0000 0000 
 * double : Binary representation: 0100 0001 0111 0011 0100 1111 1110 1100 0101 0000 0000 0000 0000 0000 0000 0000 
 * f1 : 16777216.000000 | d1 : 20250309.000000
 * -20250309 : 
 * int : Binary representation: 1111 1110 1100 1011 0000 0001 0011 1011 
 * float : Binary representation: 1100 1011 1000 0000 0000 0000 0000 0000 
 * double : Binary representation: 1100 0001 0111 0011 0100 1111 1110 1100 0101 0000 0000 0000 0000 0000 0000 0000 
 * f2 : -16777216.000000 | d2 : -20250309.000000
 * -0.0625 : 
 * float : Binary representation: 1011 1101 1000 0000 0000 0000 0000 0000 
 * double : Binary representation: 1011 1111 1011 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 
 * f3 : -0.062500 | d3 : -0.062500
 * positive infinity : 
 * float : Binary representation: 0111 1111 1000 0000 0000 0000 0000 0000 
 * double : Binary representation: 0111 1111 1111 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 
 * fspecial1 : inf | dspecial1 : inf
 * NaN : 
 * float : Binary representation: 0111 1111 1100 0000 0000 0000 0000 0000 
 * double : Binary representation: 0111 1111 1111 1000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 
 * fspecial2 : nan | dspecial2 : nan
 */