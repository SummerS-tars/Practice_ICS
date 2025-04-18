#include <stdio.h>

int foo1(int p1, int p2)
{ return p1 + p2 ;}

int foo2(int p1, int p2, int p3, int p4, int p5, int p6)
{ return p1 + p2 + p3 + p4 + p5 + p6 ;}

int foo3(int p1, int p2, int p3, int p4, int p5, int p6, int p7)
{ return p1 + p2 + p3 + p4 + p5 + p6 + p7 ;}

int main()
{
    int p1 = 10 , p2 = 9 , p3 = 8 , p4 = 7 , p5 = 6 , p6 = 5 , p7 = 4;

    foo1(p1, p2); // 2 params

    foo2(p1, p2, p3, p4, p5, p6); // 6 params

    foo3(p1, p2, p3, p4, p5, p6, p7); // 7 params

    return 0;
}