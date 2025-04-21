#include <stdio.h>

typedef struct {
    int a[2] ;
    double d ;
} struct_t ;

double fun(int i) {
    volatile struct_t s ;
    s.d = 3.14 ;
    s.a[i] = 0x40000000 ;
    return s.d;
}

int main() {
    double d0 = fun(0) ;
    printf("d0 = %f\n", d0) ;
    double d1 = fun(1) ;
    printf("d1 = %f\n", d1) ;
    double d2 = fun(2) ;
    printf("d2 = %f\n", d2) ;
    double d3 = fun(3) ;
    printf("d3 = %f\n", d3) ;
    double d4 = fun(4) ;
    printf("d4 = %f\n", d4) ;
    double d6 = fun(5) ;
    printf("d6 = %f\n", d6) ;
    
    return 0;
}