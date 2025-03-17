#include <stdio.h>

int main()
{
    char c, *pc ;
    short s, *ps ;
    int i, *pi ;
    long l, *pl ;

    pc = &c ;
    c = 'a' ;
    *pc = 'b' ;

    ps = &s ;
    s = 0x1234 ;
    *ps = 0x2345 ;

    pi = &i ;
    i = 0x12345678 ;
    *pi = 0x23456789 ;

    pl = &l ;
    l = 0x1234567890abcdef ;
    *pl = 0x234567890abcdef1 ;

    return 0;
}