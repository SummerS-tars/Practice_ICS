#include <stdio.h>
#include <malloc.h>

int main()
{
    int *p = malloc(32) ;
    free(p) ;
    return(0) ;
}

/**
 * output:  
 * coder@399cc0ca0454:~/project/5_Practice_ICS/4_TestCode/11_Week11/Interpositioning$ gcc -DCOMPILETIME -c mymallocCompiletime.c 
 * coder@399cc0ca0454:~/project/5_Practice_ICS/4_TestCode/11_Week11/Interpositioning$ gcc -I. -o intc int.c mymallocCompiletime.o
 * coder@399cc0ca0454:~/project/5_Practice_ICS/4_TestCode/11_Week11/Interpositioning$ ./intc
 * malloc(32) = 0x55e69c6222a0
 * free(0x55e69c6222a0)
 */