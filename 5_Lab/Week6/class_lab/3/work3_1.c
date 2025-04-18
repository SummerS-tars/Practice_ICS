#include <stdio.h>

int main()
{
    int number = 2;
    switch(number) 
    {
        case 1:
            printf("Case 1\n");
            break;
        case 2:
            printf("Case 2\n");
            /*keep through*/
        case 3:
            printf("Case 3\n");
            break;
        default:
            printf("Default case\n");
    }
    return 0;
}