#include <stdio.h>

typedef unsigned char *byte_pointer;

void show_bytes(byte_pointer start, int len)
{
    int i;
    for (i = 0; i < len; i++)
        printf("%.2x", start[i]);
    printf("\n");
}

/**
 * force cast to byte_pointer(pointer to unsigned char)
 * one move equal to one byte
 */

void show_int(int x)
{
    show_bytes((byte_pointer)&x, sizeof(int));
}

void show_float(float x)
{
    show_bytes((byte_pointer)&x, sizeof(float));
}

void show_pointer(void *x)
{
    show_bytes((byte_pointer)&x, sizeof(void *));
}

int main()
{
    // test numbers
    int tint = 12345;
    float tfloat = 12345.0;
    void *tpointer = &tint;

    // show numbers by bytes(int hex)
    show_int(tint);
    show_float(tfloat);
    show_pointer(tpointer);

    return 0;
}

/**
 * Result:
 * 39300000
 * 00e44046
 * dcfb7fc678000000
 */

/**
 * little-endian
 * write in human readable format:
 * 12345 --> 0x00003039
 * 12345.0 --> 0x4640e400
 * &tint --> 0x00000078c6fbfbd(random)
 */
