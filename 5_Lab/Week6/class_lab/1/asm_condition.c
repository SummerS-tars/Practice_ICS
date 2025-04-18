#include <stdio.h>
#include <stdint.h>

int main() {
    int32_t a = 0x7FFFFFFF;  // 最大的有符号32位整数
    int32_t b = 10;
    int32_t result;
    int carry_flag = 0;
    int overflow_flag = 0;
    int zero_flag = 0;
    
    printf("计算: %d + %d\n", a, b);
    
    // 使用内联汇编访问条件码
    __asm__ __volatile__ (
        "movl %2, %%eax\n\t"  // 将a的值移入eax
        "addl %3, %%eax\n\t"  // 执行加法操作 eax += b
        "movl %%eax, %4\n\t"  // 将结果存回result
        "setc %b0\n\t"        // 如果有进位，设置carry_flag (CF标志)
        "seto %b1\n\t"        // 如果有溢出，设置overflow_flag (OF标志)
        "setz %b5\n\t"        // 如果结果为零，设置zero_flag (ZF标志)
        : "=q" (carry_flag), "=q" (overflow_flag), "+r" (a), "+r" (b), 
          "=r" (result), "=q" (zero_flag)
        :
        : "eax", "cc"  // cc表示条件码寄存器可能被修改
    );
    
    printf("结果: %d\n", result);
    printf("进位标志 (CF): %d\n", carry_flag);
    printf("溢出标志 (OF): %d\n", overflow_flag);
    printf("零标志 (ZF): %d\n", zero_flag);
    
    return 0;
}
