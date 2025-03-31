#!/bin/bash

echo "=== 编译嵌入式汇编版本 ==="
gcc -S asm_condition.c -o asm_condition.s
gcc asm_condition.c -o asm_condition

echo -e "\n=== 编译纯C语言版本 ==="
gcc -S c_condition.c -o c_condition.s
gcc c_condition.c -o c_condition

echo -e "\n=== 运行嵌入式汇编版本 ==="
./asm_condition

echo -e "\n=== 运行纯C语言版本 ==="
./c_condition

echo -e "\n=== 生成的汇编代码比较 ==="
echo "嵌入式汇编版本的指令数:"
grep -v "^\s*\." asm_condition.s | grep -v "^\s*$" | wc -l

echo "纯C语言版本的指令数:"
grep -v "^\s*\." c_condition.s | grep -v "^\s*$" | wc -l
