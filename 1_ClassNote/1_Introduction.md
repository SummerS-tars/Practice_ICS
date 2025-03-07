# Chapter 1 Introduction to Computer System

Courses About Systems:  

1. DBMS
2. Distributed Systems
3. Compilers
4. Architecture
5. Operating Systems
6. e.t.c.

- [1. Brief Introduction](#1-brief-introduction)
    - [1.1. What's about CSAPP?](#11-whats-about-csapp)
    - [1.2. Power of Abstraction](#12-power-of-abstraction)
    - [1.3. Importance of understanding HOW things work](#13-importance-of-understanding-how-things-work)
- [2. Class 1 Notes : Bits,Bytes and Integers](#2-class-1-notes--bitsbytes-and-integers)
    - [2.1. Representing data as bits](#21-representing-data-as-bits)
    - [2.2. Bit-level manipulations](#22-bit-level-manipulations)
    - [Integers](#integers)
        - [Representation : unsigned and signed](#representation--unsigned-and-signed)

## 1. Brief Introduction

This part is about CSAPP Chapter 1  

### 1.1. What's about CSAPP?

1. System Knowledge
    - How hardware and software work together  
2. Useful outcomes  

### 1.2. Power of Abstraction

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

### 1.3. Importance of understanding HOW things work  

1. Why?  
    - Not only abstraction, but also reality  
2. Most CS courses emphasize abstraction  
    - Abstract data types  
    - Asymptotic analysis(渐进分析)  

## 2. Class 1 Notes : Bits,Bytes and Integers

CSAPP Chapter 2 信息的表示和处理  
续[Class 2 Notes](./2_BitAndInteger.md)  

### 2.1. Representing data as bits

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

*Hexadecimal Reference Table*  

| Decimal | Hexadecimal | Binary |
| :-----: | :---------: | :----: |
| 0       | 0           | 0000   |
| 1       | 1           | 0001   |
| 2       | 2           | 0010   |
| 3       | 3           | 0011   |
| 4       | 4           | 0100   |
| 5       | 5           | 0101   |
| 6       | 6           | 0110   |
| 7       | 7           | 0111   |
| 8       | 8           | 1000   |
| 9       | 9           | 1001   |
| 10      | A           | 1010   |
| 11      | B           | 1011   |
| 12      | C           | 1100   |
| 13      | D           | 1101   |
| 14      | E           | 1110   |
| 15      | F           | 1111   |

### 2.2. Bit-level manipulations

boolean algebra(布尔代数)  

General Operators:  
`&` `|` `^` `~`  
Shift Operation(移位运算):
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

Problem : Symmetric Difference(对称差) ? P15  

### Integers

#### Representation : unsigned and signed  

`unsigned` and `signed`  

Important Concept : `Two's Complement(补码)`  
