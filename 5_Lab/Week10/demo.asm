
demo：     文件格式 elf64-x86-64


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

0000000000001020 <square_sum@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <square_sum@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 4000 <square_sum@Base>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <linear_sum@plt>:
    1040:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 4008 <linear_sum@Base>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <printf@plt>:
    1050:	ff 25 ba 2f 00 00    	jmp    *0x2fba(%rip)        # 4010 <printf@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <fprintf@plt>:
    1060:	ff 25 b2 2f 00 00    	jmp    *0x2fb2(%rip)        # 4018 <fprintf@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <strtol@plt>:
    1070:	ff 25 aa 2f 00 00    	jmp    *0x2faa(%rip)        # 4020 <strtol@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <exit@plt>:
    1080:	ff 25 a2 2f 00 00    	jmp    *0x2fa2(%rip)        # 4028 <exit@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	push   $0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001090 <__cxa_finalize@plt>:
    1090:	ff 25 4a 2f 00 00    	jmp    *0x2f4a(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1096:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000010a0 <_start>:
    10a0:	31 ed                	xor    %ebp,%ebp
    10a2:	49 89 d1             	mov    %rdx,%r9
    10a5:	5e                   	pop    %rsi
    10a6:	48 89 e2             	mov    %rsp,%rdx
    10a9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10ad:	50                   	push   %rax
    10ae:	54                   	push   %rsp
    10af:	45 31 c0             	xor    %r8d,%r8d
    10b2:	31 c9                	xor    %ecx,%ecx
    10b4:	48 8d 3d ce 00 00 00 	lea    0xce(%rip),%rdi        # 1189 <main>
    10bb:	ff 15 ff 2e 00 00    	call   *0x2eff(%rip)        # 3fc0 <__libc_start_main@GLIBC_2.34>
    10c1:	f4                   	hlt
    10c2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10c9:	00 00 00 
    10cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000010d0 <deregister_tm_clones>:
    10d0:	48 8d 3d 69 2f 00 00 	lea    0x2f69(%rip),%rdi        # 4040 <stderr@GLIBC_2.2.5>
    10d7:	48 8d 05 62 2f 00 00 	lea    0x2f62(%rip),%rax        # 4040 <stderr@GLIBC_2.2.5>
    10de:	48 39 f8             	cmp    %rdi,%rax
    10e1:	74 15                	je     10f8 <deregister_tm_clones+0x28>
    10e3:	48 8b 05 de 2e 00 00 	mov    0x2ede(%rip),%rax        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    10ea:	48 85 c0             	test   %rax,%rax
    10ed:	74 09                	je     10f8 <deregister_tm_clones+0x28>
    10ef:	ff e0                	jmp    *%rax
    10f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10f8:	c3                   	ret
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001100 <register_tm_clones>:
    1100:	48 8d 3d 39 2f 00 00 	lea    0x2f39(%rip),%rdi        # 4040 <stderr@GLIBC_2.2.5>
    1107:	48 8d 35 32 2f 00 00 	lea    0x2f32(%rip),%rsi        # 4040 <stderr@GLIBC_2.2.5>
    110e:	48 29 fe             	sub    %rdi,%rsi
    1111:	48 89 f0             	mov    %rsi,%rax
    1114:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1118:	48 c1 f8 03          	sar    $0x3,%rax
    111c:	48 01 c6             	add    %rax,%rsi
    111f:	48 d1 fe             	sar    $1,%rsi
    1122:	74 14                	je     1138 <register_tm_clones+0x38>
    1124:	48 8b 05 ad 2e 00 00 	mov    0x2ead(%rip),%rax        # 3fd8 <_ITM_registerTMCloneTable@Base>
    112b:	48 85 c0             	test   %rax,%rax
    112e:	74 08                	je     1138 <register_tm_clones+0x38>
    1130:	ff e0                	jmp    *%rax
    1132:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1138:	c3                   	ret
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001140 <__do_global_dtors_aux>:
    1140:	f3 0f 1e fa          	endbr64
    1144:	80 3d fd 2e 00 00 00 	cmpb   $0x0,0x2efd(%rip)        # 4048 <completed.0>
    114b:	75 2b                	jne    1178 <__do_global_dtors_aux+0x38>
    114d:	55                   	push   %rbp
    114e:	48 83 3d 8a 2e 00 00 	cmpq   $0x0,0x2e8a(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1155:	00 
    1156:	48 89 e5             	mov    %rsp,%rbp
    1159:	74 0c                	je     1167 <__do_global_dtors_aux+0x27>
    115b:	48 8b 3d d6 2e 00 00 	mov    0x2ed6(%rip),%rdi        # 4038 <__dso_handle>
    1162:	e8 29 ff ff ff       	call   1090 <__cxa_finalize@plt>
    1167:	e8 64 ff ff ff       	call   10d0 <deregister_tm_clones>
    116c:	c6 05 d5 2e 00 00 01 	movb   $0x1,0x2ed5(%rip)        # 4048 <completed.0>
    1173:	5d                   	pop    %rbp
    1174:	c3                   	ret
    1175:	0f 1f 00             	nopl   (%rax)
    1178:	c3                   	ret
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001180 <frame_dummy>:
    1180:	f3 0f 1e fa          	endbr64
    1184:	e9 77 ff ff ff       	jmp    1100 <register_tm_clones>

0000000000001189 <main>:
    1189:	55                   	push   %rbp
    118a:	48 89 e5             	mov    %rsp,%rbp
    118d:	48 83 ec 30          	sub    $0x30,%rsp
    1191:	89 7d dc             	mov    %edi,-0x24(%rbp)
    1194:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    1198:	83 7d dc 01          	cmpl   $0x1,-0x24(%rbp)
    119c:	7f 2f                	jg     11cd <main+0x44>
    119e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    11a2:	48 8b 10             	mov    (%rax),%rdx
    11a5:	48 8b 05 94 2e 00 00 	mov    0x2e94(%rip),%rax        # 4040 <stderr@GLIBC_2.2.5>
    11ac:	48 8d 0d 55 0e 00 00 	lea    0xe55(%rip),%rcx        # 2008 <_IO_stdin_used+0x8>
    11b3:	48 89 ce             	mov    %rcx,%rsi
    11b6:	48 89 c7             	mov    %rax,%rdi
    11b9:	b8 00 00 00 00       	mov    $0x0,%eax
    11be:	e8 9d fe ff ff       	call   1060 <fprintf@plt>
    11c3:	bf 01 00 00 00       	mov    $0x1,%edi
    11c8:	e8 b3 fe ff ff       	call   1080 <exit@plt>
    11cd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    11d1:	48 83 c0 08          	add    $0x8,%rax
    11d5:	48 8b 00             	mov    (%rax),%rax
    11d8:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
    11dc:	ba 0a 00 00 00       	mov    $0xa,%edx
    11e1:	48 89 ce             	mov    %rcx,%rsi
    11e4:	48 89 c7             	mov    %rax,%rdi
    11e7:	e8 84 fe ff ff       	call   1070 <strtol@plt>
    11ec:	89 45 fc             	mov    %eax,-0x4(%rbp)
    11ef:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    11f3:	0f b6 00             	movzbl (%rax),%eax
    11f6:	84 c0                	test   %al,%al
    11f8:	74 33                	je     122d <main+0xa4>
    11fa:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    11fe:	48 83 c0 08          	add    $0x8,%rax
    1202:	48 8b 10             	mov    (%rax),%rdx
    1205:	48 8b 05 34 2e 00 00 	mov    0x2e34(%rip),%rax        # 4040 <stderr@GLIBC_2.2.5>
    120c:	48 8d 0d 0d 0e 00 00 	lea    0xe0d(%rip),%rcx        # 2020 <_IO_stdin_used+0x20>
    1213:	48 89 ce             	mov    %rcx,%rsi
    1216:	48 89 c7             	mov    %rax,%rdi
    1219:	b8 00 00 00 00       	mov    $0x0,%eax
    121e:	e8 3d fe ff ff       	call   1060 <fprintf@plt>
    1223:	bf 01 00 00 00       	mov    $0x1,%edi
    1228:	e8 53 fe ff ff       	call   1080 <exit@plt>
    122d:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1230:	89 c7                	mov    %eax,%edi
    1232:	e8 09 fe ff ff       	call   1040 <linear_sum@plt>
    1237:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    123b:	8b 45 fc             	mov    -0x4(%rbp),%eax
    123e:	89 c7                	mov    %eax,%edi
    1240:	e8 eb fd ff ff       	call   1030 <square_sum@plt>
    1245:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1249:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    124d:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1250:	89 c6                	mov    %eax,%esi
    1252:	48 8d 05 ef 0d 00 00 	lea    0xdef(%rip),%rax        # 2048 <_IO_stdin_used+0x48>
    1259:	48 89 c7             	mov    %rax,%rdi
    125c:	b8 00 00 00 00       	mov    $0x0,%eax
    1261:	e8 ea fd ff ff       	call   1050 <printf@plt>
    1266:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    126a:	8b 45 fc             	mov    -0x4(%rbp),%eax
    126d:	89 c6                	mov    %eax,%esi
    126f:	48 8d 05 fa 0d 00 00 	lea    0xdfa(%rip),%rax        # 2070 <_IO_stdin_used+0x70>
    1276:	48 89 c7             	mov    %rax,%rdi
    1279:	b8 00 00 00 00       	mov    $0x0,%eax
    127e:	e8 cd fd ff ff       	call   1050 <printf@plt>
    1283:	b8 00 00 00 00       	mov    $0x0,%eax
    1288:	c9                   	leave
    1289:	c3                   	ret

Disassembly of section .fini:

000000000000128c <_fini>:
    128c:	48 83 ec 08          	sub    $0x8,%rsp
    1290:	48 83 c4 08          	add    $0x8,%rsp
    1294:	c3                   	ret
