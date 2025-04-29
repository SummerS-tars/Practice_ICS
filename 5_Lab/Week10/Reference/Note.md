# Note For Shared Library

## dynamic linker

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
=> 0x00007ffff7fda2e6 <+198>:   add    $0x18,%rsp
   0x00007ffff7fda2ea <+202>:   jmp    *%r11
End of assembler dump.
```

then it will jump to the address pointed by the pointer r11  
here it is function `linear_sum`  
