#include <stdio.h>

int main()
{
    int a = 3 ;

    switch (a)
    {
    case 1:
        printf("a is 1\n");
        break;
    case 2:
        printf("a is 2\n");
        break;
    case 3:
        printf("a is 3\n");
        break;
    default:
        printf("a is not 1, 2, or 3\n");
        break;
    }
}