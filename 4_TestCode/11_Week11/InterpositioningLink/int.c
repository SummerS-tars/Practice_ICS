#include <stdio.h>
#include <malloc.h>

int main()
{
    int *p = malloc(32) ;
    free(p) ;
    return(0) ;
}

/**
 * coder@399cc0ca0454:~/project/5_Practice_ICS/4_TestCode/11_Week11/InterpositioningLink$ gcc -DLINKTIME -c mymallocLinktime.c 
 * coder@399cc0ca0454:~/project/5_Practice_ICS/4_TestCode/11_Week11/InterpositioningLink$ gcc -c int.c
 * coder@399cc0ca0454:~/project/5_Practice_ICS/4_TestCode/11_Week11/InterpositioningLink$ gcc -Wl,--wrap,malloc -Wl,--wrap,free -o intl int.o mymallocLinktime.o
 * coder@399cc0ca0454:~/project/5_Practice_ICS/4_TestCode/11_Week11/InterpositioningLink$ ./intl
 * malloc(32) = 0x55c2997592a0
 * free(0x55c2997592a0)
 */