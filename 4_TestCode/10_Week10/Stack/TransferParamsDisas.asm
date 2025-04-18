
TransferParams:     file format elf64-x86-64


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

0000000000001020 <.plt>:
    1020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

Disassembly of section .plt.got:

0000000000001030 <__cxa_finalize@plt>:
    1030:	ff 25 aa 2f 00 00    	jmp    *0x2faa(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1036:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001040 <_start>:
    1040:	31 ed                	xor    %ebp,%ebp
    1042:	49 89 d1             	mov    %rdx,%r9
    1045:	5e                   	pop    %rsi
    1046:	48 89 e2             	mov    %rsp,%rdx
    1049:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    104d:	50                   	push   %rax
    104e:	54                   	push   %rsp
    104f:	45 31 c0             	xor    %r8d,%r8d
    1052:	31 c9                	xor    %ecx,%ecx
    1054:	48 8d 3d 53 01 00 00 	lea    0x153(%rip),%rdi        # 11ae <main>
    105b:	ff 15 5f 2f 00 00    	call   *0x2f5f(%rip)        # 3fc0 <__libc_start_main@GLIBC_2.34>
    1061:	f4                   	hlt
    1062:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1069:	00 00 00 
    106c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001070 <deregister_tm_clones>:
    1070:	48 8d 3d 99 2f 00 00 	lea    0x2f99(%rip),%rdi        # 4010 <__TMC_END__>
    1077:	48 8d 05 92 2f 00 00 	lea    0x2f92(%rip),%rax        # 4010 <__TMC_END__>
    107e:	48 39 f8             	cmp    %rdi,%rax
    1081:	74 15                	je     1098 <deregister_tm_clones+0x28>
    1083:	48 8b 05 3e 2f 00 00 	mov    0x2f3e(%rip),%rax        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    108a:	48 85 c0             	test   %rax,%rax
    108d:	74 09                	je     1098 <deregister_tm_clones+0x28>
    108f:	ff e0                	jmp    *%rax
    1091:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1098:	c3                   	ret
    1099:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010a0 <register_tm_clones>:
    10a0:	48 8d 3d 69 2f 00 00 	lea    0x2f69(%rip),%rdi        # 4010 <__TMC_END__>
    10a7:	48 8d 35 62 2f 00 00 	lea    0x2f62(%rip),%rsi        # 4010 <__TMC_END__>
    10ae:	48 29 fe             	sub    %rdi,%rsi
    10b1:	48 89 f0             	mov    %rsi,%rax
    10b4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10b8:	48 c1 f8 03          	sar    $0x3,%rax
    10bc:	48 01 c6             	add    %rax,%rsi
    10bf:	48 d1 fe             	sar    %rsi
    10c2:	74 14                	je     10d8 <register_tm_clones+0x38>
    10c4:	48 8b 05 0d 2f 00 00 	mov    0x2f0d(%rip),%rax        # 3fd8 <_ITM_registerTMCloneTable@Base>
    10cb:	48 85 c0             	test   %rax,%rax
    10ce:	74 08                	je     10d8 <register_tm_clones+0x38>
    10d0:	ff e0                	jmp    *%rax
    10d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10d8:	c3                   	ret
    10d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010e0 <__do_global_dtors_aux>:
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	80 3d 25 2f 00 00 00 	cmpb   $0x0,0x2f25(%rip)        # 4010 <__TMC_END__>
    10eb:	75 2b                	jne    1118 <__do_global_dtors_aux+0x38>
    10ed:	55                   	push   %rbp
    10ee:	48 83 3d ea 2e 00 00 	cmpq   $0x0,0x2eea(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    10f5:	00 
    10f6:	48 89 e5             	mov    %rsp,%rbp
    10f9:	74 0c                	je     1107 <__do_global_dtors_aux+0x27>
    10fb:	48 8b 3d 06 2f 00 00 	mov    0x2f06(%rip),%rdi        # 4008 <__dso_handle>
    1102:	e8 29 ff ff ff       	call   1030 <__cxa_finalize@plt>
    1107:	e8 64 ff ff ff       	call   1070 <deregister_tm_clones>
    110c:	c6 05 fd 2e 00 00 01 	movb   $0x1,0x2efd(%rip)        # 4010 <__TMC_END__>
    1113:	5d                   	pop    %rbp
    1114:	c3                   	ret
    1115:	0f 1f 00             	nopl   (%rax)
    1118:	c3                   	ret
    1119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001120 <frame_dummy>:
    1120:	f3 0f 1e fa          	endbr64
    1124:	e9 77 ff ff ff       	jmp    10a0 <register_tm_clones>

0000000000001129 <foo1>:
    1129:	55                   	push   %rbp
    112a:	48 89 e5             	mov    %rsp,%rbp
    112d:	89 7d fc             	mov    %edi,-0x4(%rbp)
    1130:	89 75 f8             	mov    %esi,-0x8(%rbp)
    1133:	8b 55 fc             	mov    -0x4(%rbp),%edx
    1136:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1139:	01 d0                	add    %edx,%eax
    113b:	5d                   	pop    %rbp
    113c:	c3                   	ret

000000000000113d <foo2>:
    113d:	55                   	push   %rbp
    113e:	48 89 e5             	mov    %rsp,%rbp
    1141:	89 7d fc             	mov    %edi,-0x4(%rbp)
    1144:	89 75 f8             	mov    %esi,-0x8(%rbp)
    1147:	89 55 f4             	mov    %edx,-0xc(%rbp)
    114a:	89 4d f0             	mov    %ecx,-0x10(%rbp)
    114d:	44 89 45 ec          	mov    %r8d,-0x14(%rbp)
    1151:	44 89 4d e8          	mov    %r9d,-0x18(%rbp)
    1155:	8b 55 fc             	mov    -0x4(%rbp),%edx
    1158:	8b 45 f8             	mov    -0x8(%rbp),%eax
    115b:	01 c2                	add    %eax,%edx
    115d:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1160:	01 c2                	add    %eax,%edx
    1162:	8b 45 f0             	mov    -0x10(%rbp),%eax
    1165:	01 c2                	add    %eax,%edx
    1167:	8b 45 ec             	mov    -0x14(%rbp),%eax
    116a:	01 c2                	add    %eax,%edx
    116c:	8b 45 e8             	mov    -0x18(%rbp),%eax
    116f:	01 d0                	add    %edx,%eax
    1171:	5d                   	pop    %rbp
    1172:	c3                   	ret

0000000000001173 <foo3>:
    1173:	55                   	push   %rbp
    1174:	48 89 e5             	mov    %rsp,%rbp
    1177:	89 7d fc             	mov    %edi,-0x4(%rbp)
    117a:	89 75 f8             	mov    %esi,-0x8(%rbp)
    117d:	89 55 f4             	mov    %edx,-0xc(%rbp)
    1180:	89 4d f0             	mov    %ecx,-0x10(%rbp)
    1183:	44 89 45 ec          	mov    %r8d,-0x14(%rbp)
    1187:	44 89 4d e8          	mov    %r9d,-0x18(%rbp)
    118b:	8b 55 fc             	mov    -0x4(%rbp),%edx
    118e:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1191:	01 c2                	add    %eax,%edx
    1193:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1196:	01 c2                	add    %eax,%edx
    1198:	8b 45 f0             	mov    -0x10(%rbp),%eax
    119b:	01 c2                	add    %eax,%edx
    119d:	8b 45 ec             	mov    -0x14(%rbp),%eax
    11a0:	01 c2                	add    %eax,%edx
    11a2:	8b 45 e8             	mov    -0x18(%rbp),%eax
    11a5:	01 c2                	add    %eax,%edx
    11a7:	8b 45 10             	mov    0x10(%rbp),%eax
    11aa:	01 d0                	add    %edx,%eax
    11ac:	5d                   	pop    %rbp
    11ad:	c3                   	ret

00000000000011ae <main>:
    11ae:	55                   	push   %rbp
    11af:	48 89 e5             	mov    %rsp,%rbp
    11b2:	48 83 ec 20          	sub    $0x20,%rsp
    11b6:	c7 45 fc 0a 00 00 00 	movl   $0xa,-0x4(%rbp)
    11bd:	c7 45 f8 09 00 00 00 	movl   $0x9,-0x8(%rbp)
    11c4:	c7 45 f4 08 00 00 00 	movl   $0x8,-0xc(%rbp)
    11cb:	c7 45 f0 07 00 00 00 	movl   $0x7,-0x10(%rbp)
    11d2:	c7 45 ec 06 00 00 00 	movl   $0x6,-0x14(%rbp)
    11d9:	c7 45 e8 05 00 00 00 	movl   $0x5,-0x18(%rbp)
    11e0:	c7 45 e4 04 00 00 00 	movl   $0x4,-0x1c(%rbp)
    11e7:	8b 55 f8             	mov    -0x8(%rbp),%edx
    11ea:	8b 45 fc             	mov    -0x4(%rbp),%eax
    11ed:	89 d6                	mov    %edx,%esi
    11ef:	89 c7                	mov    %eax,%edi
    11f1:	e8 33 ff ff ff       	call   1129 <foo1>
    11f6:	44 8b 45 e8          	mov    -0x18(%rbp),%r8d
    11fa:	8b 7d ec             	mov    -0x14(%rbp),%edi
    11fd:	8b 4d f0             	mov    -0x10(%rbp),%ecx
    1200:	8b 55 f4             	mov    -0xc(%rbp),%edx
    1203:	8b 75 f8             	mov    -0x8(%rbp),%esi
    1206:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1209:	45 89 c1             	mov    %r8d,%r9d
    120c:	41 89 f8             	mov    %edi,%r8d
    120f:	89 c7                	mov    %eax,%edi
    1211:	e8 27 ff ff ff       	call   113d <foo2>
    1216:	44 8b 4d e8          	mov    -0x18(%rbp),%r9d
    121a:	44 8b 45 ec          	mov    -0x14(%rbp),%r8d
    121e:	8b 4d f0             	mov    -0x10(%rbp),%ecx
    1221:	8b 55 f4             	mov    -0xc(%rbp),%edx
    1224:	8b 75 f8             	mov    -0x8(%rbp),%esi
    1227:	8b 45 fc             	mov    -0x4(%rbp),%eax
    122a:	8b 7d e4             	mov    -0x1c(%rbp),%edi
    122d:	57                   	push   %rdi
    122e:	89 c7                	mov    %eax,%edi
    1230:	e8 3e ff ff ff       	call   1173 <foo3>
    1235:	48 83 c4 08          	add    $0x8,%rsp
    1239:	b8 00 00 00 00       	mov    $0x0,%eax
    123e:	c9                   	leave
    123f:	c3                   	ret

Disassembly of section .fini:

0000000000001240 <_fini>:
    1240:	48 83 ec 08          	sub    $0x8,%rsp
    1244:	48 83 c4 08          	add    $0x8,%rsp
    1248:	c3                   	ret
