# Chapter 1 Introduction to Computer System

Courses About Systems:  

1. DBMS
2. Distributed Systems
3. Compilers
4. Architecture
5. Operating Systems
6. e.t.c.

## Brief Introduction

This part is about CSAPP Chapter 1  

### What's about CSAPP?

1. System Knowledge
    - How hardware and software work together  
2. Useful outcomes  

### Power of Abstraction

1. tiers of computer system  
    - Software
        - Application
        - System Software
    - Hardware
2. Proper Abstraction  
    - Hardware
        - Processor
        - Main memory
        - I/o devices
    - 1-3 Processes  
        如何在进程之间切换？  
        进程内容之间是如何组织的？——虚拟内存  
    - 2-3 Virtual Memory
    - 3-3 Files

### Importance of understanding HOW things work  

1. Why?  
    - Not only abstraction, but also reality  
2. Most CS courses emphasize abstraction  
    - Abstract data types  
    - Asymptotic analysis(渐进分析)  

## Class 1 Notes : Bits,Bytes and Integers

CSAPP Chapter 2 信息的表示和处理  

### Representing data as bits

**Bits:**  

- **Each bit is 0 or 1**  
- Why bits? Electronic Implementation(电子实现)  
    - Easy to store with bistable elements(双稳元件)
    - Reliably transmitted on noisy and inaccurate wires  

**What is Byte:**  

- 1 Byte = 8 bits  
    - Binary $$00000000_{2} to 11111111_{2}$$
    - Decimal $$0_{10} to 255_{10}$$
    - Hexadecimal $$00_{16} to FF_{16}$$

### Bit-level manipulations

boolean algebra(布尔代数)  

General Operators:  
`&` `|` `^` `~`  
Other Operators:  
`<<` `>>`(移位运算符)  

Contrast: Logic Operations in C  

- Contrast to Bit-Level Operators  
    - Logic Operations:  
        `&&` `||` `!`  
        - View `0` as `False`  
        - **Anything nonzero is `True`**  
        - Always return `0` or `1`  
- Examples:  
    - !0x41 = 0
    - !0x00 = 1
    - !!0x41 = 1
    - p && *p ( avoid null pointer dereference(避免空指针解引用) )