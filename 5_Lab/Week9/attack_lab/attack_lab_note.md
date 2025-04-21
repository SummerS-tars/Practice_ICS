# Attack Lab

## Knowledge Points

1. 堆栈漏洞
2. 程序跳转
3. ROP技术

## Goal

攻击两个含有堆栈漏洞的程序  

1. `ctarget`  
    phase 1-3 : 三次代码注入攻击
2. `rtarget`  
    phase 4-5 : 两次ROP攻击

## Cultivate Skills

- gdb调试技巧
- x86-64堆栈结构、调用套件了解
- 编写攻击字符串(Exploit String)  
- shellcode编写、ROP gadget链接

## Process

### Source

[Source](http://10.176.122.240:15513)  

### Analyze Target

对target内部进行分析，找出需要的地址等信息，以便编写攻击字符串  

### Edit Exploit String

编写攻击字符串，对每个攻击目标，保存一份为文本文件  

### Operate Attack

执行攻击

### Record

如果攻击有效，会向服务器发送结果

### Score Board

[Scoreboard](http://10.176.122.240:15513/scoreboard)  

## File Explanation

- `ctarget` : 目标程序1，包含三个阶段的漏洞
- `rtarget` : 目标程序2，包含两个阶段的漏洞
- `cookie.txt` : 唯一身份证明
- `farm.c` : ROP gadget代码  
- `hex2raw` ： 16进制转原始字节工具  
- `README.txt` : 说明文件  

## Submit Materials

- 攻击字符串的文本文件  
- 简单的实验报告  
    - 实验目的
    - 实验思路
    - 所使用技术
    - 简单的结果截图
