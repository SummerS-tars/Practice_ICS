Dump of assembler code for function getbuf:
   0x000000000040173a <+0>:     sub    $0x28,%rsp
   0x000000000040173e <+4>:     mov    %rsp,%rdi
   0x0000000000401741 <+7>:     call   0x4019c4 <Gets>
   0x0000000000401746 <+12>:    mov    $0x1,%eax
   0x000000000040174b <+17>:    add    $0x28,%rsp
   0x000000000040174f <+21>:    ret

Dump of assembler code for function Gets:
   0x00000000004019c4 <+0>:     push   %r12
   0x00000000004019c6 <+2>:     push   %rbp
   0x00000000004019c7 <+3>:     push   %rbx
   0x00000000004019c8 <+4>:     mov    %rdi,%r12
   0x00000000004019cb <+7>:     movl   $0x0,0x20374f(%rip)        # 0x605124 <gets_cnt>
   0x00000000004019d5 <+17>:    mov    %rdi,%rbx
   0x00000000004019d8 <+20>:    jmp    0x4019eb <Gets+39>
   0x00000000004019da <+22>:    lea    0x1(%rbx),%rbp
   0x00000000004019de <+26>:    mov    %al,(%rbx)
   0x00000000004019e0 <+28>:    movzbl %al,%edi
   0x00000000004019e3 <+31>:    call   0x401924 <save_char>
   0x00000000004019e8 <+36>:    mov    %rbp,%rbx
   0x00000000004019eb <+39>:    mov    0x202afe(%rip),%rdi        # 0x6044f0 <infile>
   0x00000000004019f2 <+46>:    call   0x400cf0 <_IO_getc@plt>
   0x00000000004019f7 <+51>:    cmp    $0xffffffff,%eax
   0x00000000004019fa <+54>:    je     0x401a01 <Gets+61>
   0x00000000004019fc <+56>:    cmp    $0xa,%eax
   0x00000000004019ff <+59>:    jne    0x4019da <Gets+22>
   0x0000000000401a01 <+61>:    movb   $0x0,(%rbx)
   0x0000000000401a04 <+64>:    mov    $0x0,%eax
   0x0000000000401a09 <+69>:    call   0x40197c <save_term>
   0x0000000000401a0e <+74>:    mov    %r12,%rax
   0x0000000000401a11 <+77>:    pop    %rbx
   0x0000000000401a12 <+78>:    pop    %rbp
   0x0000000000401a13 <+79>:    pop    %r12
   0x0000000000401a15 <+81>:    ret