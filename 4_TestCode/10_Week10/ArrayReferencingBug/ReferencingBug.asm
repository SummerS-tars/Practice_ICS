
ReferencingBug:     file format elf64-x86-64


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
    1064:	48 8d 3d 00 01 00 00 	lea    0x100(%rip),%rdi        # 116b <main>
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

0000000000001139 <fun>:
    1139:	55                   	push   %rbp
    113a:	48 89 e5             	mov    %rsp,%rbp
    113d:	89 7d ec             	mov    %edi,-0x14(%rbp)
    1140:	f2 0f 10 05 f8 0e 00 	movsd  0xef8(%rip),%xmm0        # 2040 <_IO_stdin_used+0x40>
    1147:	00 
    1148:	f2 0f 11 45 f8       	movsd  %xmm0,-0x8(%rbp)
    114d:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1150:	48 98                	cltq
    1152:	c7 44 85 f0 00 00 00 	movl   $0x40000000,-0x10(%rbp,%rax,4)
    1159:	40 
    115a:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
    115f:	66 48 0f 7e c0       	movq   %xmm0,%rax
    1164:	66 48 0f 6e c0       	movq   %rax,%xmm0
    1169:	5d                   	pop    %rbp
    116a:	c3                   	ret

000000000000116b <main>:
    116b:	55                   	push   %rbp
    116c:	48 89 e5             	mov    %rsp,%rbp
    116f:	48 83 ec 30          	sub    $0x30,%rsp
    1173:	bf 00 00 00 00       	mov    $0x0,%edi
    1178:	e8 bc ff ff ff       	call   1139 <fun>
    117d:	66 48 0f 7e c0       	movq   %xmm0,%rax
    1182:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1186:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    118a:	66 48 0f 6e c0       	movq   %rax,%xmm0
    118f:	48 8d 05 72 0e 00 00 	lea    0xe72(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    1196:	48 89 c7             	mov    %rax,%rdi
    1199:	b8 01 00 00 00       	mov    $0x1,%eax
    119e:	e8 8d fe ff ff       	call   1030 <printf@plt>
    11a3:	bf 01 00 00 00       	mov    $0x1,%edi
    11a8:	e8 8c ff ff ff       	call   1139 <fun>
    11ad:	66 48 0f 7e c0       	movq   %xmm0,%rax
    11b2:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    11b6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    11ba:	66 48 0f 6e c0       	movq   %rax,%xmm0
    11bf:	48 8d 05 4b 0e 00 00 	lea    0xe4b(%rip),%rax        # 2011 <_IO_stdin_used+0x11>
    11c6:	48 89 c7             	mov    %rax,%rdi
    11c9:	b8 01 00 00 00       	mov    $0x1,%eax
    11ce:	e8 5d fe ff ff       	call   1030 <printf@plt>
    11d3:	bf 02 00 00 00       	mov    $0x2,%edi
    11d8:	e8 5c ff ff ff       	call   1139 <fun>
    11dd:	66 48 0f 7e c0       	movq   %xmm0,%rax
    11e2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    11e6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    11ea:	66 48 0f 6e c0       	movq   %rax,%xmm0
    11ef:	48 8d 05 24 0e 00 00 	lea    0xe24(%rip),%rax        # 201a <_IO_stdin_used+0x1a>
    11f6:	48 89 c7             	mov    %rax,%rdi
    11f9:	b8 01 00 00 00       	mov    $0x1,%eax
    11fe:	e8 2d fe ff ff       	call   1030 <printf@plt>
    1203:	bf 03 00 00 00       	mov    $0x3,%edi
    1208:	e8 2c ff ff ff       	call   1139 <fun>
    120d:	66 48 0f 7e c0       	movq   %xmm0,%rax
    1212:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    1216:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    121a:	66 48 0f 6e c0       	movq   %rax,%xmm0
    121f:	48 8d 05 fd 0d 00 00 	lea    0xdfd(%rip),%rax        # 2023 <_IO_stdin_used+0x23>
    1226:	48 89 c7             	mov    %rax,%rdi
    1229:	b8 01 00 00 00       	mov    $0x1,%eax
    122e:	e8 fd fd ff ff       	call   1030 <printf@plt>
    1233:	bf 04 00 00 00       	mov    $0x4,%edi
    1238:	e8 fc fe ff ff       	call   1139 <fun>
    123d:	66 48 0f 7e c0       	movq   %xmm0,%rax
    1242:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    1246:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    124a:	66 48 0f 6e c0       	movq   %rax,%xmm0
    124f:	48 8d 05 d6 0d 00 00 	lea    0xdd6(%rip),%rax        # 202c <_IO_stdin_used+0x2c>
    1256:	48 89 c7             	mov    %rax,%rdi
    1259:	b8 01 00 00 00       	mov    $0x1,%eax
    125e:	e8 cd fd ff ff       	call   1030 <printf@plt>
    1263:	bf 05 00 00 00       	mov    $0x5,%edi
    1268:	e8 cc fe ff ff       	call   1139 <fun>
    126d:	66 48 0f 7e c0       	movq   %xmm0,%rax
    1272:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    1276:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    127a:	66 48 0f 6e c0       	movq   %rax,%xmm0
    127f:	48 8d 05 af 0d 00 00 	lea    0xdaf(%rip),%rax        # 2035 <_IO_stdin_used+0x35>
    1286:	48 89 c7             	mov    %rax,%rdi
    1289:	b8 01 00 00 00       	mov    $0x1,%eax
    128e:	e8 9d fd ff ff       	call   1030 <printf@plt>
    1293:	b8 00 00 00 00       	mov    $0x0,%eax
    1298:	c9                   	leave
    1299:	c3                   	ret

Disassembly of section .fini:

000000000000129c <_fini>:
    129c:	48 83 ec 08          	sub    $0x8,%rsp
    12a0:	48 83 c4 08          	add    $0x8,%rsp
    12a4:	c3                   	ret
