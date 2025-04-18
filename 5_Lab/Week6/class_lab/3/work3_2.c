#include <stdio.h>

int main()
{
    int option = 1;
    switch(option)
    {
        case 1:
        {
            int x = 10;
            printf("Option 1, x = %d\n", x) ;
            break;
        }
        case 2:
        {
            // no x variable here
            printf("Option 2, no variable used\n") ;
            break;
        }
        default:
            printf("Unknown option\n") ;
    }
    return 0;
}