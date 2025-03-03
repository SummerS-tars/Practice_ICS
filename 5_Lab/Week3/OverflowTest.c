#include <stdio.h>
#include <limits.h>

// 判断加法溢出
int add_overflow(int a, int b, int* result) {
    if ((b > 0) && (a > INT_MAX - b)) {
        return 1; // 正溢出
    } else if ((b < 0) && (a < INT_MIN - b)) {
        return 2; // 负溢出
    } else {
        *result = a + b;
        return 0; // 无溢出
    }
}

// 判断乘法溢出
int mul_overflow(int a, int b, int* result) {
    if (a > 0) {
        if (b > 0) {
            if (a > INT_MAX / b) {
                return 1; // 正溢出
            }
        } else {
            if (b < INT_MIN / a) {
                return 2; // 负溢出
            }
        }
    } else {
        if (b > 0) {
            if (a < INT_MIN / b) {
                return 2; // 负溢出
            }
        } else {
            if ((a != 0) && (b < INT_MAX / a)) {
                return 1; // 正溢出
            }
        }
    }
    *result = a * b;
    return 0; // 无溢出
}

int main() {
    int a , b ;
    printf("Please input two integers: ") ;
    scanf("%d%d", &a, &b) ;
    int result;

    // 测试加法
    int add_status = add_overflow(a, b, &result);
    if (add_status == 0) {
        printf("加法结果: %d\n", result);
    } else if (add_status == 1) {
        printf("加法正溢出\n");
    } else {
        printf("加法负溢出\n");
    }

    // 测试乘法
    int mul_status = mul_overflow(a, b, &result);
    if (mul_status == 0) {
        printf("乘法结果: %d\n", result);
    } else if (mul_status == 1) {
        printf("乘法正溢出\n");
    } else {
        printf("乘法负溢出\n");
    }

    return 0;
}

/**
 * Please input two integers: 89898 1235
 * 加法结果: 91133
 * 乘法结果: 111024030
 * 
 * Please input two integers: 239857597 12340
 * 加法结果: 239869937
 * 乘法正溢出
 * 
 * Please input two integers: -12983795 230498
 * 加法结果: -12753297
 * 乘法负溢出
 * 
 * Please input two integers: 1234567890 1234567890
 * 加法正溢出
 * 乘法正溢出
 * 
 * Please input two integers: -1234567890 -1234567890
 * 加法负溢出
 * 乘法正溢出
 */
