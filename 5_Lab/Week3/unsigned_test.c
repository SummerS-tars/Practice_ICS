#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main()
{
    int arr[10];
    srand(time(0));
    for(int j = 0; j < 10; j++) {
        arr[j] = rand();
    }


    unsigned i ;
    int cnt = sizeof(arr) / sizeof(int);
    printf("size of arr : %d\n" , cnt);
    for(i = cnt - 1 ; i >= 0 ; i --)
    {
        printf("%u " , i);
        printf("%d\n" , arr[i]);
    }

    return 0;
}

/**
 * for %d to print i
 * size of arr : 10
 * 9 28324
 * 8 21979
 * 7 20089
 * 6 18017
 * 5 4570
 * 4 19384
 * 3 19445
 * 2 27687
 * 1 14628
 * 0 30399
 * -1
 */

/**
 * for %u to print i
 * size of arr : 10
 * 9 13805
 * 8 11337
 * 7 19433
 * 6 27005
 * 5 17433
 * 4 24788
 * 3 20950
 * 2 12375
 * 1 6787
 * 0 30546
 * 4294967295
 */

