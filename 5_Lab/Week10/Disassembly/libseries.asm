
libseries.so：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    $0x8,%rsp
    1004:	48 8b 05 d5 2f 00 00 	mov    0x2fd5(%rip),%rax        # 3fe0 <__gmon_start__>
    100b:	48 85 c0             	test   %rax,%rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	call   *%rax
    1012:	48 83 c4 08          	add    $0x8,%rsp
    1016:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

Disassembly of section .plt.got:

0000000000001030 <__cxa_finalize@plt>:
    1030:	ff 25 92 2f 00 00    	jmp    *0x2f92(%rip)        # 3fc8 <__cxa_finalize>
    1036:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001040 <deregister_tm_clones>:
    1040:	48 8d 3d c1 2f 00 00 	lea    0x2fc1(%rip),%rdi        # 4008 <completed.0>
    1047:	48 8d 05 ba 2f 00 00 	lea    0x2fba(%rip),%rax        # 4008 <completed.0>
    104e:	48 39 f8             	cmp    %rdi,%rax
    1051:	74 15                	je     1068 <deregister_tm_clones+0x28>
    1053:	48 8b 05 7e 2f 00 00 	mov    0x2f7e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    105a:	48 85 c0             	test   %rax,%rax
    105d:	74 09                	je     1068 <deregister_tm_clones+0x28>
    105f:	ff e0                	jmp    *%rax
    1061:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1068:	c3                   	ret
    1069:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001070 <register_tm_clones>:
    1070:	48 8d 3d 91 2f 00 00 	lea    0x2f91(%rip),%rdi        # 4008 <completed.0>
    1077:	48 8d 35 8a 2f 00 00 	lea    0x2f8a(%rip),%rsi        # 4008 <completed.0>
    107e:	48 29 fe             	sub    %rdi,%rsi
    1081:	48 89 f0             	mov    %rsi,%rax
    1084:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1088:	48 c1 f8 03          	sar    $0x3,%rax
    108c:	48 01 c6             	add    %rax,%rsi
    108f:	48 d1 fe             	sar    $1,%rsi
    1092:	74 14                	je     10a8 <register_tm_clones+0x38>
    1094:	48 8b 05 35 2f 00 00 	mov    0x2f35(%rip),%rax        # 3fd0 <_ITM_registerTMCloneTable>
    109b:	48 85 c0             	test   %rax,%rax
    109e:	74 08                	je     10a8 <register_tm_clones+0x38>
    10a0:	ff e0                	jmp    *%rax
    10a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10a8:	c3                   	ret
    10a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010b0 <__do_global_dtors_aux>:
    10b0:	f3 0f 1e fa          	endbr64
    10b4:	80 3d 4d 2f 00 00 00 	cmpb   $0x0,0x2f4d(%rip)        # 4008 <completed.0>
    10bb:	75 2b                	jne    10e8 <__do_global_dtors_aux+0x38>
    10bd:	55                   	push   %rbp
    10be:	48 83 3d 02 2f 00 00 	cmpq   $0x0,0x2f02(%rip)        # 3fc8 <__cxa_finalize>
    10c5:	00 
    10c6:	48 89 e5             	mov    %rsp,%rbp
    10c9:	74 0c                	je     10d7 <__do_global_dtors_aux+0x27>
    10cb:	48 8b 3d 2e 2f 00 00 	mov    0x2f2e(%rip),%rdi        # 4000 <__dso_handle>
    10d2:	e8 59 ff ff ff       	call   1030 <__cxa_finalize@plt>
    10d7:	e8 64 ff ff ff       	call   1040 <deregister_tm_clones>
    10dc:	c6 05 25 2f 00 00 01 	movb   $0x1,0x2f25(%rip)        # 4008 <completed.0>
    10e3:	5d                   	pop    %rbp
    10e4:	c3                   	ret
    10e5:	0f 1f 00             	nopl   (%rax)
    10e8:	c3                   	ret
    10e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010f0 <frame_dummy>:
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	e9 77 ff ff ff       	jmp    1070 <register_tm_clones>

00000000000010f9 <linear_sum>:
    10f9:	55                   	push   %rbp
    10fa:	48 89 e5             	mov    %rsp,%rbp
    10fd:	89 7d ec             	mov    %edi,-0x14(%rbp)
    1100:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    1107:	00 
    1108:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%rbp)
    110f:	eb 0d                	jmp    111e <linear_sum+0x25>

    # loop
    1111:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1114:	48 98                	cltq
    1116:	48 01 45 f8          	add    %rax,-0x8(%rbp)
    111a:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    111e:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1121:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    1124:	7e eb                	jle    1111 <linear_sum+0x18>


    1126:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    112a:	5d                   	pop    %rbp
    112b:	c3                   	ret

# -0x8(%rbp)     8     0           (set sum)    long
# -0xc(%rbp)     12    1           (set i)      int
# -0x14(%rbp)    20    input value (set n)      int

000000000000112c <square_sum>:
    112c:	55                   	push   %rbp
    112d:	48 89 e5             	mov    %rsp,%rbp
    1130:	89 7d ec             	mov    %edi,-0x14(%rbp)
    1133:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    113a:	00 
    113b:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%rbp)
    1142:	eb 10                	jmp    1154 <square_sum+0x28>

    # loop
    1144:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1147:	0f af c0             	imul   %eax,%eax
    114a:	48 98                	cltq
    114c:	48 01 45 f8          	add    %rax,-0x8(%rbp)
    1150:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    1154:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1157:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    115a:	7e e8                	jle    1144 <square_sum+0x18>


    115c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1160:	5d                   	pop    %rbp
    1161:	c3                   	ret

# -0x8(%rbp)     8     0           (set sum)    long
# -0xc(%rbp)     12    1           (set i)      int
# -0x14(%rbp)    20    input value (set n)      int

Disassembly of section .fini:

0000000000001164 <_fini>:
    1164:	48 83 ec 08          	sub    $0x8,%rsp
    1168:	48 83 c4 08          	add    $0x8,%rsp
    116c:	c3                   	ret
