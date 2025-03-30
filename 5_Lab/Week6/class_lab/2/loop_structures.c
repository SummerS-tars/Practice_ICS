#include <stdio.h>

// for循环实现
int sum_for() {
    int sum = 0;
    for (int i = 0; i < 10; i++) {
        for (int j = 0; j < 10; j++) {
            sum += i + j;
        }
    }
    return sum;
}

// while循环实现
int sum_while() {
    int sum = 0, i = 0;
    while (i < 10) {
        int j = 0;
        while (j < 10) {
            sum += i + j;
            j++;
        }
        i++;
    }
    return sum;
}

// do-while循环实现
int sum_do_while() {
    int sum = 0, i = 0;
    do {
        int j = 0;
        do {
            sum += i + j;
            j++;
        } while (j < 10);
        i++;
    } while (i < 10);
    return sum;
}

int main() {
    printf("Sum using for loop: %d\n", sum_for());
    printf("Sum using while loop: %d\n", sum_while());
    printf("Sum using do-while loop: %d\n", sum_do_while());
    return 0;
}
