
FunctionPointer:     file format elf64-x86-64


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

0000000000001020 <printf@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <printf@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 4000 <printf@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001040 <__cxa_finalize@plt>:
    1040:	ff 25 9a 2f 00 00    	jmp    *0x2f9a(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1046:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001050 <_start>:
    1050:	31 ed                	xor    %ebp,%ebp
    1052:	49 89 d1             	mov    %rdx,%r9
    1055:	5e                   	pop    %rsi
    1056:	48 89 e2             	mov    %rsp,%rdx
    1059:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    105d:	50                   	push   %rax
    105e:	54                   	push   %rsp
    105f:	45 31 c0             	xor    %r8d,%r8d
    1062:	31 c9                	xor    %ecx,%ecx
    1064:	48 8d 3d e6 00 00 00 	lea    0xe6(%rip),%rdi        # 1151 <main>
    106b:	ff 15 4f 2f 00 00    	call   *0x2f4f(%rip)        # 3fc0 <__libc_start_main@GLIBC_2.34>
    1071:	f4                   	hlt
    1072:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1079:	00 00 00 
    107c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001080 <deregister_tm_clones>:
    1080:	48 8d 3d 91 2f 00 00 	lea    0x2f91(%rip),%rdi        # 4018 <__TMC_END__>
    1087:	48 8d 05 8a 2f 00 00 	lea    0x2f8a(%rip),%rax        # 4018 <__TMC_END__>
    108e:	48 39 f8             	cmp    %rdi,%rax
    1091:	74 15                	je     10a8 <deregister_tm_clones+0x28>
    1093:	48 8b 05 2e 2f 00 00 	mov    0x2f2e(%rip),%rax        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    109a:	48 85 c0             	test   %rax,%rax
    109d:	74 09                	je     10a8 <deregister_tm_clones+0x28>
    109f:	ff e0                	jmp    *%rax
    10a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10a8:	c3                   	ret
    10a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010b0 <register_tm_clones>:
    10b0:	48 8d 3d 61 2f 00 00 	lea    0x2f61(%rip),%rdi        # 4018 <__TMC_END__>
    10b7:	48 8d 35 5a 2f 00 00 	lea    0x2f5a(%rip),%rsi        # 4018 <__TMC_END__>
    10be:	48 29 fe             	sub    %rdi,%rsi
    10c1:	48 89 f0             	mov    %rsi,%rax
    10c4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10c8:	48 c1 f8 03          	sar    $0x3,%rax
    10cc:	48 01 c6             	add    %rax,%rsi
    10cf:	48 d1 fe             	sar    %rsi
    10d2:	74 14                	je     10e8 <register_tm_clones+0x38>
    10d4:	48 8b 05 fd 2e 00 00 	mov    0x2efd(%rip),%rax        # 3fd8 <_ITM_registerTMCloneTable@Base>
    10db:	48 85 c0             	test   %rax,%rax
    10de:	74 08                	je     10e8 <register_tm_clones+0x38>
    10e0:	ff e0                	jmp    *%rax
    10e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10e8:	c3                   	ret
    10e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010f0 <__do_global_dtors_aux>:
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	80 3d 1d 2f 00 00 00 	cmpb   $0x0,0x2f1d(%rip)        # 4018 <__TMC_END__>
    10fb:	75 2b                	jne    1128 <__do_global_dtors_aux+0x38>
    10fd:	55                   	push   %rbp
    10fe:	48 83 3d da 2e 00 00 	cmpq   $0x0,0x2eda(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1105:	00 
    1106:	48 89 e5             	mov    %rsp,%rbp
    1109:	74 0c                	je     1117 <__do_global_dtors_aux+0x27>
    110b:	48 8b 3d fe 2e 00 00 	mov    0x2efe(%rip),%rdi        # 4010 <__dso_handle>
    1112:	e8 29 ff ff ff       	call   1040 <__cxa_finalize@plt>
    1117:	e8 64 ff ff ff       	call   1080 <deregister_tm_clones>
    111c:	c6 05 f5 2e 00 00 01 	movb   $0x1,0x2ef5(%rip)        # 4018 <__TMC_END__>
    1123:	5d                   	pop    %rbp
    1124:	c3                   	ret
    1125:	0f 1f 00             	nopl   (%rax)
    1128:	c3                   	ret
    1129:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001130 <frame_dummy>:
    1130:	f3 0f 1e fa          	endbr64
    1134:	e9 77 ff ff ff       	jmp    10b0 <register_tm_clones>

0000000000001139 <foo>:
    1139:	55                   	push   %rbp
    113a:	48 89 e5             	mov    %rsp,%rbp
    113d:	89 7d fc             	mov    %edi,-0x4(%rbp)
    1140:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    1144:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1148:	8b 10                	mov    (%rax),%edx
    114a:	8b 45 fc             	mov    -0x4(%rbp),%eax
    114d:	01 d0                	add    %edx,%eax
    114f:	5d                   	pop    %rbp
    1150:	c3                   	ret

0000000000001151 <main>:
    1151:	55                   	push   %rbp
    1152:	48 89 e5             	mov    %rsp,%rbp
    1155:	48 83 ec 20          	sub    $0x20,%rsp
    1159:	48 8d 05 d9 ff ff ff 	lea    -0x27(%rip),%rax        # 1139 <foo>
    1160:	48 89 45 f8          	mov    %rax,-0x8(%rbp)  # address of foo( stored in function pointer fp)
    1164:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%rbp)
    116b:	c7 45 ec 02 00 00 00 	movl   $0x2,-0x14(%rbp)     # alignment : start from -0x1(%rbp)  
    1172:	48 8d 55 ec          	lea    -0x14(%rbp),%rdx
    1176:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1179:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    117d:	48 89 d6             	mov    %rdx,%rsi
    1180:	89 c7                	mov    %eax,%edi
    1182:	ff d1                	call   *%rcx        # indirect call to foo though fp
    1184:	89 45 f0             	mov    %eax,-0x10(%rbp)
    1187:	8b 45 f0             	mov    -0x10(%rbp),%eax
    118a:	89 c6                	mov    %eax,%esi
    118c:	48 8d 05 71 0e 00 00 	lea    0xe71(%rip),%rax        # 2004 <_IO_stdin_used+0x4>
    1193:	48 89 c7             	mov    %rax,%rdi
    1196:	b8 00 00 00 00       	mov    $0x0,%eax
    119b:	e8 90 fe ff ff       	call   1030 <printf@plt>
    11a0:	b8 00 00 00 00       	mov    $0x0,%eax
    11a5:	c9                   	leave
    11a6:	c3                   	ret

Disassembly of section .fini:

00000000000011a8 <_fini>:
    11a8:	48 83 ec 08          	sub    $0x8,%rsp
    11ac:	48 83 c4 08          	add    $0x8,%rsp
    11b0:	c3                   	ret
