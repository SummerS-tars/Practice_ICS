#include <stdio.h>
#include <stdint.h>
#include <limits.h>

int main() {
    int32_t a = 0x7FFFFFFF;  // 最大的有符号32位整数
    int32_t b = 10;
    int32_t result;
    int carry_flag = 0;
    int overflow_flag = 0;
    int zero_flag = 0;
    
    printf("计算: %d + %d\n", a, b);
    
    // 使用C语言逻辑判断条件码
    uint64_t extended_result = (uint64_t)(uint32_t)a + (uint64_t)(uint32_t)b;
    result = a + b;
    
    // 判断进位 (CF)
    if (extended_result > UINT32_MAX) {
        carry_flag = 1;
    }
    
    // 判断溢出 (OF)
    if ((a > 0 && b > 0 && result < 0) || 
        (a < 0 && b < 0 && result > 0)) {
        overflow_flag = 1;
    }
    
    // 判断是否为零 (ZF)
    if (result == 0) {
        zero_flag = 1;
    }
    
    printf("结果: %d\n", result);
    printf("进位标志 (CF): %d\n", carry_flag);
    printf("溢出标志 (OF): %d\n", overflow_flag);
    printf("零标志 (ZF): %d\n", zero_flag);
    
    return 0;
}
