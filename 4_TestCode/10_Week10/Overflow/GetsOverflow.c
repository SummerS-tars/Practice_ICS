#include <stdio.h>

char *gets(char *s)
{
    int c ;
    char *dest = s ;
    while((c = getchar())  != '\n' && c != EOF) 
    {
        *dest ++ = c ;
    }

    if( c == EOF && dest == s)
    {
        return NULL ;
    }

    *dest ++ = '\0' ;
    return s;
}

int main()
{
    char buffer[8] ;
    gets(buffer) ;
    puts(buffer) ;

    return 0;
}

/**
 * output:
 * coder@399cc0ca0454:~/project/5_Practice_ICS/4_TestCode/10_Week10/Overflow$ ./GetsOverflow 
 * asdgfdjsifjofjdojdsfkldjlfklkdfmmlvnckvnckjnvkxnckvjjhkjasdsfseousirjofhsudofodsjijoajdj
 * asdgfdjsifjofjdojdsfkldjlfklkdfmmlvnckvnckjnvkxnckvjjhkjasdsfseousirjofhsudofodsjijoajdj
 * Segmentation fault (core dumped)
 */