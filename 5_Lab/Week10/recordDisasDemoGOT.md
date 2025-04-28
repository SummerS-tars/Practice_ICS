# Record

## PLT and GOT of `linear_sum`  

```bash
disas linear_sum
```

```asm
Dump of assembler code for function linear_sum@plt:
   0x0000000000001040 <+0>:     jmp    *0x2fc2(%rip)        # 0x4008 <linear_sum@got.plt>
   0x0000000000001046 <+6>:     push   $0x1
   0x000000000000104b <+11>:    jmp    0x1020
End of assembler dump.
```

then  

```bash
x/gx 0x4008
```

```asm
0x4008 <linear_sum@got.plt>:    0x0000000000001046
```

we can find before executing the function `linear_sum`  
the address of `linear_sum` GOT entry is `0x0000000000001046`  
which is the address of the instruction `push $0x1`(the next instruction)  

use a break point at `main` before calling `linear_sum`  

```asm
=> 0x0000555555555232 <+169>:   call   0x555555555040 <linear_sum@plt>
```

```bash
si
```

```asm
Dump of assembler code for function linear_sum@plt:
=> 0x0000555555555040 <+0>:     jmp    *0x2fc2(%rip)        # 0x555555558008 <linear_sum@got.plt>
   0x0000555555555046 <+6>:     push   $0x1
   0x000055555555504b <+11>:    jmp    0x555555555020
End of assembler dump.
```

then

```bash
si
```

```asm
Dump of assembler code for function linear_sum@plt:
   0x0000555555555040 <+0>:     jmp    *0x2fc2(%rip)        # 0x555555558008 <linear_sum@got.plt>
=> 0x0000555555555046 <+6>:     push   $0x1
   0x000055555555504b <+11>:    jmp    0x555555555020
End of assembler dump.
```

the same with our previous analysis  

```bash
si 2
```

we find we are in `??`  

```asm
0x0000555555555020 in ?? ()
```

investigate the instruction at `0x0000555555555020`  

```bash
x/3i 0x0000555555555020
```

```asm
=> 0x555555555020:      push   0x2fca(%rip)        # 0x555555557ff0
   0x555555555026:      jmp    *0x2fcc(%rip)        # 0x555555557ff8
   0x55555555502c:      nopl   0x0(%rax)
```

very similar to the plt entry of `linear_sum`  
*actually this is just a plt entry*  
*which is used to call dynamic linker*  

we can try to dig more info about this  

```bash
x/gx 0x555555557ff0
```

```asm
0x555555557ff0: 0x00007ffff7ffe2e0
```

- [x] haven't understood yet  
    if as what said in CSAPP  
    it is the PLT\[0] used to call dynamic linker  
    and it really dose this  

```bash
x/gx 0x555555557ff8
```

```asm
0x555555557ff8: 0x00007ffff7fda220
```

obviously this is an address of a function  

```bash
disas 0x00007ffff7fda220
```

```asm
Dump of assembler code for function _dl_runtime_resolve_xsave:
   0x00007ffff7fda220 <+0>:     endbr64
   0x00007ffff7fda224 <+4>:     push   %rbx
   0x00007ffff7fda225 <+5>:     mov    %rsp,%rbx
   0x00007ffff7fda228 <+8>:     and    $0xffffffffffffffc0,%rsp
   0x00007ffff7fda22c <+12>:    sub    0x22a3d(%rip),%rsp        # 0x7ffff7ffcc70 <_rtld_global_ro+464>
   0x00007ffff7fda233 <+19>:    mov    %rax,(%rsp)
   0x00007ffff7fda237 <+23>:    mov    %rcx,0x8(%rsp)
   0x00007ffff7fda23c <+28>:    mov    %rdx,0x10(%rsp)
   0x00007ffff7fda241 <+33>:    mov    %rsi,0x18(%rsp)
   0x00007ffff7fda246 <+38>:    mov    %rdi,0x20(%rsp)
   0x00007ffff7fda24b <+43>:    mov    %r8,0x28(%rsp)
   0x00007ffff7fda250 <+48>:    mov    %r9,0x30(%rsp)
   0x00007ffff7fda255 <+53>:    mov    $0xee,%eax
   0x00007ffff7fda25a <+58>:    xor    %edx,%edx
   0x00007ffff7fda25c <+60>:    mov    %rdx,0x240(%rsp)
   0x00007ffff7fda264 <+68>:    mov    %rdx,0x248(%rsp)
   0x00007ffff7fda26c <+76>:    mov    %rdx,0x250(%rsp)
   0x00007ffff7fda274 <+84>:    mov    %rdx,0x258(%rsp)
   0x00007ffff7fda27c <+92>:    mov    %rdx,0x260(%rsp)
   0x00007ffff7fda284 <+100>:   mov    %rdx,0x268(%rsp)
   0x00007ffff7fda28c <+108>:   mov    %rdx,0x270(%rsp)
   0x00007ffff7fda294 <+116>:   mov    %rdx,0x278(%rsp)
   0x00007ffff7fda29c <+124>:   xsave  0x40(%rsp)
   0x00007ffff7fda2a1 <+129>:   mov    0x10(%rbx),%rsi
   0x00007ffff7fda2a5 <+133>:   mov    0x8(%rbx),%rdi
   0x00007ffff7fda2a9 <+137>:   call   0x7ffff7fd7af0 <_dl_fixup>
   0x00007ffff7fda2ae <+142>:   mov    %rax,%r11
   0x00007ffff7fda2b1 <+145>:   mov    $0xee,%eax
   0x00007ffff7fda2b6 <+150>:   xor    %edx,%edx
   0x00007ffff7fda2b8 <+152>:   xrstor 0x40(%rsp)
   0x00007ffff7fda2bd <+157>:   mov    0x30(%rsp),%r9
   0x00007ffff7fda2c2 <+162>:   mov    0x28(%rsp),%r8
   0x00007ffff7fda2c7 <+167>:   mov    0x20(%rsp),%rdi
   0x00007ffff7fda2cc <+172>:   mov    0x18(%rsp),%rsi
   0x00007ffff7fda2d1 <+177>:   mov    0x10(%rsp),%rdx
   0x00007ffff7fda2d6 <+182>:   mov    0x8(%rsp),%rcx
   0x00007ffff7fda2db <+187>:   mov    (%rsp),%rax
   0x00007ffff7fda2df <+191>:   mov    %rbx,%rsp
   0x00007ffff7fda2e2 <+194>:   mov    (%rsp),%rbx
   0x00007ffff7fda2e6 <+198>:   add    $0x18,%rsp
   0x00007ffff7fda2ea <+202>:   jmp    *%r11
End of assembler dump.
```

it's really a complex function  
the most important thing here is the `_dl_fixup`  

we don't mention too much here  
what we should know is that it helps us to load and find the dynamic symbols  
finally we set corresponded GOT entry and `jmp` to it  

```asm
=> 0x00007ffff7fda2ea <+202>:   jmp    *%r11
```

```bash
si
```

```asm
0x00007ffff7fb90f9 in linear_sum () from ./libseries.so
```

here the first call of `linear_sum` has finished  
the PLT and GOT have been set properly to find it  

we can validate this fact

```bash
disas linear_sum
```

get

```asm
Dump of assembler code for function linear_sum:
   0x00007ffff7fb90f9 <+0>:     push   %rbp
   0x00007ffff7fb90fa <+1>:     mov    %rsp,%rbp
   0x00007ffff7fb90fd <+4>:     mov    %edi,-0x14(%rbp)
   0x00007ffff7fb9100 <+7>:     movq   $0x0,-0x8(%rbp)
   0x00007ffff7fb9108 <+15>:    movl   $0x1,-0xc(%rbp)
   0x00007ffff7fb910f <+22>:    jmp    0x7ffff7fb911e <linear_sum+37>
   0x00007ffff7fb9111 <+24>:    mov    -0xc(%rbp),%eax
   0x00007ffff7fb9114 <+27>:    cltq
   0x00007ffff7fb9116 <+29>:    add    %rax,-0x8(%rbp)
   0x00007ffff7fb911a <+33>:    addl   $0x1,-0xc(%rbp)
   0x00007ffff7fb911e <+37>:    mov    -0xc(%rbp),%eax
   0x00007ffff7fb9121 <+40>:    cmp    -0x14(%rbp),%eax
   0x00007ffff7fb9124 <+43>:    jle    0x7ffff7fb9111 <linear_sum+24>
   0x00007ffff7fb9126 <+45>:    mov    -0x8(%rbp),%rax
   0x00007ffff7fb912a <+49>:    pop    %rbp
   0x00007ffff7fb912b <+50>:    ret
End of assembler dump.
```

how about its GOT entry right now?  
we can guess it contains a pointer to the beginning address of `linear_sum`  
let's validate this  

```bash
x/gx 0x555555558008
```

```asm
0x555555558008 <linear_sum@got.plt>:    0x00007ffff7fb90f9
```

absolutely right!  
