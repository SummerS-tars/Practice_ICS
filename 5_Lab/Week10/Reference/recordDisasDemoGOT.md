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

`_dl_runtime_resolve_xsave` disas note :  
[note](Note.md)  

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
