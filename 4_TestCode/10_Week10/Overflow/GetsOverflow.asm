
GetsOverflow:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    $0x8,%rsp
    1004:	48 8b 05 c5 2f 00 00 	mov    0x2fc5(%rip),%rax        # 3fd0 <__gmon_start__@Base>
    100b:	48 85 c0             	test   %rax,%rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	call   *%rax
    1012:	48 83 c4 08          	add    $0x8,%rsp
    1016:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <puts@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <puts@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 4000 <puts@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <getchar@plt>:
    1040:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 4008 <getchar@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001050 <__cxa_finalize@plt>:
    1050:	ff 25 8a 2f 00 00    	jmp    *0x2f8a(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1056:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001060 <_start>:
    1060:	31 ed                	xor    %ebp,%ebp
    1062:	49 89 d1             	mov    %rdx,%r9
    1065:	5e                   	pop    %rsi
    1066:	48 89 e2             	mov    %rsp,%rdx
    1069:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    106d:	50                   	push   %rax
    106e:	54                   	push   %rsp
    106f:	45 31 c0             	xor    %r8d,%r8d
    1072:	31 c9                	xor    %ecx,%ecx
    1074:	48 8d 3d 35 01 00 00 	lea    0x135(%rip),%rdi        # 11b0 <main>
    107b:	ff 15 3f 2f 00 00    	call   *0x2f3f(%rip)        # 3fc0 <__libc_start_main@GLIBC_2.34>
    1081:	f4                   	hlt
    1082:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1089:	00 00 00 
    108c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001090 <deregister_tm_clones>:
    1090:	48 8d 3d 89 2f 00 00 	lea    0x2f89(%rip),%rdi        # 4020 <__TMC_END__>
    1097:	48 8d 05 82 2f 00 00 	lea    0x2f82(%rip),%rax        # 4020 <__TMC_END__>
    109e:	48 39 f8             	cmp    %rdi,%rax
    10a1:	74 15                	je     10b8 <deregister_tm_clones+0x28>
    10a3:	48 8b 05 1e 2f 00 00 	mov    0x2f1e(%rip),%rax        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    10aa:	48 85 c0             	test   %rax,%rax
    10ad:	74 09                	je     10b8 <deregister_tm_clones+0x28>
    10af:	ff e0                	jmp    *%rax
    10b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10b8:	c3                   	ret
    10b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010c0 <register_tm_clones>:
    10c0:	48 8d 3d 59 2f 00 00 	lea    0x2f59(%rip),%rdi        # 4020 <__TMC_END__>
    10c7:	48 8d 35 52 2f 00 00 	lea    0x2f52(%rip),%rsi        # 4020 <__TMC_END__>
    10ce:	48 29 fe             	sub    %rdi,%rsi
    10d1:	48 89 f0             	mov    %rsi,%rax
    10d4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10d8:	48 c1 f8 03          	sar    $0x3,%rax
    10dc:	48 01 c6             	add    %rax,%rsi
    10df:	48 d1 fe             	sar    %rsi
    10e2:	74 14                	je     10f8 <register_tm_clones+0x38>
    10e4:	48 8b 05 ed 2e 00 00 	mov    0x2eed(%rip),%rax        # 3fd8 <_ITM_registerTMCloneTable@Base>
    10eb:	48 85 c0             	test   %rax,%rax
    10ee:	74 08                	je     10f8 <register_tm_clones+0x38>
    10f0:	ff e0                	jmp    *%rax
    10f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10f8:	c3                   	ret
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001100 <__do_global_dtors_aux>:
    1100:	f3 0f 1e fa          	endbr64
    1104:	80 3d 15 2f 00 00 00 	cmpb   $0x0,0x2f15(%rip)        # 4020 <__TMC_END__>
    110b:	75 2b                	jne    1138 <__do_global_dtors_aux+0x38>
    110d:	55                   	push   %rbp
    110e:	48 83 3d ca 2e 00 00 	cmpq   $0x0,0x2eca(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1115:	00 
    1116:	48 89 e5             	mov    %rsp,%rbp
    1119:	74 0c                	je     1127 <__do_global_dtors_aux+0x27>
    111b:	48 8b 3d f6 2e 00 00 	mov    0x2ef6(%rip),%rdi        # 4018 <__dso_handle>
    1122:	e8 29 ff ff ff       	call   1050 <__cxa_finalize@plt>
    1127:	e8 64 ff ff ff       	call   1090 <deregister_tm_clones>
    112c:	c6 05 ed 2e 00 00 01 	movb   $0x1,0x2eed(%rip)        # 4020 <__TMC_END__>
    1133:	5d                   	pop    %rbp
    1134:	c3                   	ret
    1135:	0f 1f 00             	nopl   (%rax)
    1138:	c3                   	ret
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001140 <frame_dummy>:
    1140:	f3 0f 1e fa          	endbr64
    1144:	e9 77 ff ff ff       	jmp    10c0 <register_tm_clones>

0000000000001149 <gets>:
    1149:	55                   	push   %rbp
    114a:	48 89 e5             	mov    %rsp,%rbp
    114d:	48 83 ec 20          	sub    $0x20,%rsp
    1151:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1155:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1159:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    115d:	eb 11                	jmp    1170 <gets+0x27>
    115f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1163:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1167:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
    116b:	8b 55 f4             	mov    -0xc(%rbp),%edx
    116e:	88 10                	mov    %dl,(%rax)
    1170:	e8 cb fe ff ff       	call   1040 <getchar@plt>
    1175:	89 45 f4             	mov    %eax,-0xc(%rbp)
    1178:	83 7d f4 0a          	cmpl   $0xa,-0xc(%rbp)
    117c:	74 06                	je     1184 <gets+0x3b>
    117e:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%rbp)
    1182:	75 db                	jne    115f <gets+0x16>
    1184:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%rbp)
    1188:	75 11                	jne    119b <gets+0x52>
    118a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    118e:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
    1192:	75 07                	jne    119b <gets+0x52>
    1194:	b8 00 00 00 00       	mov    $0x0,%eax
    1199:	eb 13                	jmp    11ae <gets+0x65>
    119b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    119f:	48 8d 50 01          	lea    0x1(%rax),%rdx
    11a3:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
    11a7:	c6 00 00             	movb   $0x0,(%rax)
    11aa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    11ae:	c9                   	leave
    11af:	c3                   	ret

00000000000011b0 <main>:
    11b0:	55                   	push   %rbp
    11b1:	48 89 e5             	mov    %rsp,%rbp
    11b4:	48 83 ec 10          	sub    $0x10,%rsp
    11b8:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
    11bc:	48 89 c7             	mov    %rax,%rdi
    11bf:	e8 85 ff ff ff       	call   1149 <gets>
    11c4:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
    11c8:	48 89 c7             	mov    %rax,%rdi
    11cb:	e8 60 fe ff ff       	call   1030 <puts@plt>
    11d0:	b8 00 00 00 00       	mov    $0x0,%eax
    11d5:	c9                   	leave
    11d6:	c3                   	ret

Disassembly of section .fini:

00000000000011d8 <_fini>:
    11d8:	48 83 ec 08          	sub    $0x8,%rsp
    11dc:	48 83 c4 08          	add    $0x8,%rsp
    11e0:	c3                   	ret
