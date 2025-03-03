#include <stdio.h>
#include <limits.h>

int main()
{
    int int1 = INT_MAX ;
    unsigned int uint1 = UINT_MAX;
    int int2 = -1;
    unsigned int uint2 = 1;

    printf("int1  = %d\n", int1);
    printf("uint1 = %u\n", uint1);
    printf("int2  = %d\n", int2);
    printf("uint2 = %u\n", uint2);

    // Arithmetic operations
    printf("int1 + uint1 = %u\n", int1 + uint1);
    printf("int2 + uint2 = %u\n", int2 + uint2);
    printf("int1 - uint1 = %u\n", int1 - uint1);
    printf("int2 - uint2 = %u\n", int2 - uint2);

    // Logical comparisons
    printf("int1 > uint1: %d\n", int1 > uint1);
    printf("int2 < uint2: %d\n", int2 < uint2);
    printf("int1 == uint1: %d\n", int1 == uint1);
    printf("int2 != uint2: %d\n", int2 != uint2);

    return 0;
}