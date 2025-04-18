
.\JumpTest.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret

0000000140001001 <pre_c_init>:
   140001001:	48 83 ec 28          	sub    $0x28,%rsp
   140001005:	48 8b 05 64 67 00 00 	mov    0x6764(%rip),%rax        # 140007770 <.refptr.__mingw_initltsdrot_force>
   14000100c:	48 8b 0d dd 66 00 00 	mov    0x66dd(%rip),%rcx        # 1400076f0 <.refptr.__ImageBase>
   140001013:	31 d2                	xor    %edx,%edx
   140001015:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000101b:	48 8b 05 5e 67 00 00 	mov    0x675e(%rip),%rax        # 140007780 <.refptr.__mingw_initltsdyn_force>
   140001022:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140001027:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000102d:	48 8b 05 5c 67 00 00 	mov    0x675c(%rip),%rax        # 140007790 <.refptr.__mingw_initltssuo_force>
   140001034:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103a:	75 47                	jne    140001083 <pre_c_init+0x82>
   14000103c:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140001040:	48 01 c8             	add    %rcx,%rax
   140001043:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001049:	75 38                	jne    140001083 <pre_c_init+0x82>
   14000104b:	8b 48 18             	mov    0x18(%rax),%ecx
   14000104e:	66 81 f9 0b 01       	cmp    $0x10b,%cx
   140001053:	74 09                	je     14000105e <pre_c_init+0x5d>
   140001055:	66 81 f9 0b 02       	cmp    $0x20b,%cx
   14000105a:	74 11                	je     14000106d <pre_c_init+0x6c>
   14000105c:	eb 25                	jmp    140001083 <pre_c_init+0x82>
   14000105e:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
   140001062:	76 1f                	jbe    140001083 <pre_c_init+0x82>
   140001064:	83 b8 e8 00 00 00 00 	cmpl   $0x0,0xe8(%rax)
   14000106b:	eb 10                	jmp    14000107d <pre_c_init+0x7c>
   14000106d:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
   140001074:	76 0d                	jbe    140001083 <pre_c_init+0x82>
   140001076:	83 b8 f8 00 00 00 00 	cmpl   $0x0,0xf8(%rax)
   14000107d:	0f 95 c2             	setne  %dl
   140001080:	0f b6 d2             	movzbl %dl,%edx
   140001083:	48 8b 05 d6 66 00 00 	mov    0x66d6(%rip),%rax        # 140007760 <.refptr.__mingw_app_type>
   14000108a:	89 15 7c 8f 00 00    	mov    %edx,0x8f7c(%rip)        # 14000a00c <managedapp>
   140001090:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001095:	83 38 00             	cmpl   $0x0,(%rax)
   140001098:	75 05                	jne    14000109f <pre_c_init+0x9e>
   14000109a:	b9 01 00 00 00       	mov    $0x1,%ecx
   14000109f:	e8 b4 48 00 00       	call   140005958 <__set_app_type>
   1400010a4:	e8 27 43 00 00       	call   1400053d0 <__p__fmode>
   1400010a9:	48 8b 15 90 67 00 00 	mov    0x6790(%rip),%rdx        # 140007840 <.refptr._fmode>
   1400010b0:	8b 12                	mov    (%rdx),%edx
   1400010b2:	89 10                	mov    %edx,(%rax)
   1400010b4:	e8 27 43 00 00       	call   1400053e0 <__p__commode>
   1400010b9:	48 8b 15 60 67 00 00 	mov    0x6760(%rip),%rdx        # 140007820 <.refptr._commode>
   1400010c0:	8b 12                	mov    (%rdx),%edx
   1400010c2:	89 10                	mov    %edx,(%rax)
   1400010c4:	e8 f7 03 00 00       	call   1400014c0 <_setargv>
   1400010c9:	48 8b 05 00 66 00 00 	mov    0x6600(%rip),%rax        # 1400076d0 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010d0:	83 38 01             	cmpl   $0x1,(%rax)
   1400010d3:	75 0c                	jne    1400010e1 <pre_c_init+0xe0>
   1400010d5:	48 8b 0d 84 67 00 00 	mov    0x6784(%rip),%rcx        # 140007860 <.refptr._matherr>
   1400010dc:	e8 b0 09 00 00       	call   140001a91 <__mingw_setusermatherr>
   1400010e1:	31 c0                	xor    %eax,%eax
   1400010e3:	48 83 c4 28          	add    $0x28,%rsp
   1400010e7:	c3                   	ret

00000001400010e8 <pre_cpp_init>:
   1400010e8:	48 83 ec 38          	sub    $0x38,%rsp
   1400010ec:	48 8b 05 7d 67 00 00 	mov    0x677d(%rip),%rax        # 140007870 <.refptr._newmode>
   1400010f3:	4c 8d 05 1e 8f 00 00 	lea    0x8f1e(%rip),%r8        # 14000a018 <envp>
   1400010fa:	48 8d 15 1f 8f 00 00 	lea    0x8f1f(%rip),%rdx        # 14000a020 <argv>
   140001101:	48 8d 0d 20 8f 00 00 	lea    0x8f20(%rip),%rcx        # 14000a028 <argc>
   140001108:	8b 00                	mov    (%rax),%eax
   14000110a:	89 05 f4 8e 00 00    	mov    %eax,0x8ef4(%rip)        # 14000a004 <startinfo>
   140001110:	48 8d 05 ed 8e 00 00 	lea    0x8eed(%rip),%rax        # 14000a004 <startinfo>
   140001117:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   14000111c:	48 8b 05 0d 67 00 00 	mov    0x670d(%rip),%rax        # 140007830 <.refptr._dowildcard>
   140001123:	44 8b 08             	mov    (%rax),%r9d
   140001126:	e8 1d 48 00 00       	call   140005948 <__getmainargs>
   14000112b:	90                   	nop
   14000112c:	48 83 c4 38          	add    $0x38,%rsp
   140001130:	c3                   	ret

0000000140001131 <__tmainCRTStartup>:
   140001131:	41 56                	push   %r14
   140001133:	41 55                	push   %r13
   140001135:	41 54                	push   %r12
   140001137:	55                   	push   %rbp
   140001138:	57                   	push   %rdi
   140001139:	56                   	push   %rsi
   14000113a:	53                   	push   %rbx
   14000113b:	48 83 ec 20          	sub    $0x20,%rsp
   14000113f:	48 8b 2d 6a 66 00 00 	mov    0x666a(%rip),%rbp        # 1400077b0 <.refptr.__native_startup_lock>
   140001146:	48 8b 35 ab a0 00 00 	mov    0xa0ab(%rip),%rsi        # 14000b1f8 <__imp_Sleep>
   14000114d:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   140001154:	00 00 
   140001156:	48 8b 58 08          	mov    0x8(%rax),%rbx
   14000115a:	31 c0                	xor    %eax,%eax
   14000115c:	f0 48 0f b1 5d 00    	lock cmpxchg %rbx,0x0(%rbp)
   140001162:	74 0e                	je     140001172 <__tmainCRTStartup+0x41>
   140001164:	48 39 c3             	cmp    %rax,%rbx
   140001167:	74 0d                	je     140001176 <__tmainCRTStartup+0x45>
   140001169:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   14000116e:	ff d6                	call   *%rsi
   140001170:	eb e8                	jmp    14000115a <__tmainCRTStartup+0x29>
   140001172:	31 f6                	xor    %esi,%esi
   140001174:	eb 05                	jmp    14000117b <__tmainCRTStartup+0x4a>
   140001176:	be 01 00 00 00       	mov    $0x1,%esi
   14000117b:	48 8b 1d 3e 66 00 00 	mov    0x663e(%rip),%rbx        # 1400077c0 <.refptr.__native_startup_state>
   140001182:	8b 03                	mov    (%rbx),%eax
   140001184:	ff c8                	dec    %eax
   140001186:	75 0c                	jne    140001194 <__tmainCRTStartup+0x63>
   140001188:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   14000118d:	e8 d6 47 00 00       	call   140005968 <_amsg_exit>
   140001192:	eb 2b                	jmp    1400011bf <__tmainCRTStartup+0x8e>
   140001194:	8b 03                	mov    (%rbx),%eax
   140001196:	85 c0                	test   %eax,%eax
   140001198:	75 1b                	jne    1400011b5 <__tmainCRTStartup+0x84>
   14000119a:	48 8b 15 6f 66 00 00 	mov    0x666f(%rip),%rdx        # 140007810 <.refptr.__xi_z>
   1400011a1:	48 8b 0d 58 66 00 00 	mov    0x6658(%rip),%rcx        # 140007800 <.refptr.__xi_a>
   1400011a8:	c7 03 01 00 00 00    	movl   $0x1,(%rbx)
   1400011ae:	e8 cd 47 00 00       	call   140005980 <_initterm>
   1400011b3:	eb 0a                	jmp    1400011bf <__tmainCRTStartup+0x8e>
   1400011b5:	c7 05 49 8e 00 00 01 	movl   $0x1,0x8e49(%rip)        # 14000a008 <has_cctor>
   1400011bc:	00 00 00 
   1400011bf:	8b 03                	mov    (%rbx),%eax
   1400011c1:	ff c8                	dec    %eax
   1400011c3:	75 19                	jne    1400011de <__tmainCRTStartup+0xad>
   1400011c5:	48 8b 15 24 66 00 00 	mov    0x6624(%rip),%rdx        # 1400077f0 <.refptr.__xc_z>
   1400011cc:	48 8b 0d 0d 66 00 00 	mov    0x660d(%rip),%rcx        # 1400077e0 <.refptr.__xc_a>
   1400011d3:	e8 a8 47 00 00       	call   140005980 <_initterm>
   1400011d8:	c7 03 02 00 00 00    	movl   $0x2,(%rbx)
   1400011de:	85 f6                	test   %esi,%esi
   1400011e0:	75 06                	jne    1400011e8 <__tmainCRTStartup+0xb7>
   1400011e2:	31 c0                	xor    %eax,%eax
   1400011e4:	48 87 45 00          	xchg   %rax,0x0(%rbp)
   1400011e8:	48 8b 05 31 65 00 00 	mov    0x6531(%rip),%rax        # 140007720 <.refptr.__dyn_tls_init_callback>
   1400011ef:	48 8b 00             	mov    (%rax),%rax
   1400011f2:	48 85 c0             	test   %rax,%rax
   1400011f5:	74 0c                	je     140001203 <__tmainCRTStartup+0xd2>
   1400011f7:	45 31 c0             	xor    %r8d,%r8d
   1400011fa:	ba 02 00 00 00       	mov    $0x2,%edx
   1400011ff:	31 c9                	xor    %ecx,%ecx
   140001201:	ff d0                	call   *%rax
   140001203:	e8 e2 05 00 00       	call   1400017ea <_pei386_runtime_relocator>
   140001208:	48 8b 0d 41 66 00 00 	mov    0x6641(%rip),%rcx        # 140007850 <.refptr._gnu_exception_handler>
   14000120f:	45 31 e4             	xor    %r12d,%r12d
   140001212:	ff 15 d8 9f 00 00    	call   *0x9fd8(%rip)        # 14000b1f0 <__imp_SetUnhandledExceptionFilter>
   140001218:	48 8b 15 81 65 00 00 	mov    0x6581(%rip),%rdx        # 1400077a0 <.refptr.__mingw_oldexcpt_handler>
   14000121f:	48 8d 0d da fd ff ff 	lea    -0x226(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   140001226:	48 89 02             	mov    %rax,(%rdx)
   140001229:	e8 8a 42 00 00       	call   1400054b8 <_set_invalid_parameter_handler>
   14000122e:	e8 fd 03 00 00       	call   140001630 <_fpreset>
   140001233:	48 63 1d ee 8d 00 00 	movslq 0x8dee(%rip),%rbx        # 14000a028 <argc>
   14000123a:	8d 4b 01             	lea    0x1(%rbx),%ecx
   14000123d:	48 63 c9             	movslq %ecx,%rcx
   140001240:	48 c1 e1 03          	shl    $0x3,%rcx
   140001244:	e8 97 47 00 00       	call   1400059e0 <malloc>
   140001249:	4c 8b 35 d0 8d 00 00 	mov    0x8dd0(%rip),%r14        # 14000a020 <argv>
   140001250:	49 89 c5             	mov    %rax,%r13
   140001253:	44 39 e3             	cmp    %r12d,%ebx
   140001256:	7e 2b                	jle    140001283 <__tmainCRTStartup+0x152>
   140001258:	4b 8b 0c e6          	mov    (%r14,%r12,8),%rcx
   14000125c:	e8 97 47 00 00       	call   1400059f8 <strlen>
   140001261:	48 8d 68 01          	lea    0x1(%rax),%rbp
   140001265:	48 89 e9             	mov    %rbp,%rcx
   140001268:	e8 73 47 00 00       	call   1400059e0 <malloc>
   14000126d:	48 89 e9             	mov    %rbp,%rcx
   140001270:	4b 89 44 e5 00       	mov    %rax,0x0(%r13,%r12,8)
   140001275:	48 89 c7             	mov    %rax,%rdi
   140001278:	4b 8b 34 e6          	mov    (%r14,%r12,8),%rsi
   14000127c:	49 ff c4             	inc    %r12
   14000127f:	f3 a4                	rep movsb %ds:(%rsi),%es:(%rdi)
   140001281:	eb d0                	jmp    140001253 <__tmainCRTStartup+0x122>
   140001283:	31 c0                	xor    %eax,%eax
   140001285:	85 db                	test   %ebx,%ebx
   140001287:	48 0f 48 d8          	cmovs  %rax,%rbx
   14000128b:	31 c0                	xor    %eax,%eax
   14000128d:	49 89 44 dd 00       	mov    %rax,0x0(%r13,%rbx,8)
   140001292:	4c 89 2d 87 8d 00 00 	mov    %r13,0x8d87(%rip)        # 14000a020 <argv>
   140001299:	e8 00 02 00 00       	call   14000149e <__main>
   14000129e:	48 8b 05 8b 64 00 00 	mov    0x648b(%rip),%rax        # 140007730 <.refptr.__imp___initenv>
   1400012a5:	4c 8b 05 6c 8d 00 00 	mov    0x8d6c(%rip),%r8        # 14000a018 <envp>
   1400012ac:	8b 0d 76 8d 00 00    	mov    0x8d76(%rip),%ecx        # 14000a028 <argc>
   1400012b2:	48 8b 00             	mov    (%rax),%rax
   1400012b5:	4c 89 00             	mov    %r8,(%rax)
   1400012b8:	48 8b 15 61 8d 00 00 	mov    0x8d61(%rip),%rdx        # 14000a020 <argv>
   1400012bf:	e8 f0 00 00 00       	call   1400013b4 <main>
   1400012c4:	83 3d 41 8d 00 00 00 	cmpl   $0x0,0x8d41(%rip)        # 14000a00c <managedapp>
   1400012cb:	89 05 3f 8d 00 00    	mov    %eax,0x8d3f(%rip)        # 14000a010 <mainret>
   1400012d1:	89 c1                	mov    %eax,%ecx
   1400012d3:	75 05                	jne    1400012da <__tmainCRTStartup+0x1a9>
   1400012d5:	e8 d6 46 00 00       	call   1400059b0 <exit>
   1400012da:	83 3d 27 8d 00 00 00 	cmpl   $0x0,0x8d27(%rip)        # 14000a008 <has_cctor>
   1400012e1:	75 05                	jne    1400012e8 <__tmainCRTStartup+0x1b7>
   1400012e3:	e8 88 46 00 00       	call   140005970 <_cexit>
   1400012e8:	8b 05 22 8d 00 00    	mov    0x8d22(%rip),%eax        # 14000a010 <mainret>
   1400012ee:	48 83 c4 20          	add    $0x20,%rsp
   1400012f2:	5b                   	pop    %rbx
   1400012f3:	5e                   	pop    %rsi
   1400012f4:	5f                   	pop    %rdi
   1400012f5:	5d                   	pop    %rbp
   1400012f6:	41 5c                	pop    %r12
   1400012f8:	41 5d                	pop    %r13
   1400012fa:	41 5e                	pop    %r14
   1400012fc:	c3                   	ret

00000001400012fd <WinMainCRTStartup>:
   1400012fd:	48 83 ec 28          	sub    $0x28,%rsp

0000000140001301 <.l_startw>:
   140001301:	48 8b 05 58 64 00 00 	mov    0x6458(%rip),%rax        # 140007760 <.refptr.__mingw_app_type>
   140001308:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000130e:	e8 1e fe ff ff       	call   140001131 <__tmainCRTStartup>
   140001313:	90                   	nop

0000000140001314 <.l_endw>:
   140001314:	90                   	nop
   140001315:	48 83 c4 28          	add    $0x28,%rsp
   140001319:	c3                   	ret

000000014000131a <mainCRTStartup>:
   14000131a:	48 83 ec 28          	sub    $0x28,%rsp

000000014000131e <.l_start>:
   14000131e:	48 8b 05 3b 64 00 00 	mov    0x643b(%rip),%rax        # 140007760 <.refptr.__mingw_app_type>
   140001325:	31 d2                	xor    %edx,%edx
   140001327:	89 10                	mov    %edx,(%rax)
   140001329:	e8 03 fe ff ff       	call   140001131 <__tmainCRTStartup>
   14000132e:	90                   	nop

000000014000132f <.l_end>:
   14000132f:	90                   	nop
   140001330:	48 83 c4 28          	add    $0x28,%rsp
   140001334:	c3                   	ret

0000000140001335 <atexit>:
   140001335:	48 83 ec 28          	sub    $0x28,%rsp
   140001339:	e8 52 46 00 00       	call   140005990 <_onexit>
   14000133e:	48 83 f8 01          	cmp    $0x1,%rax
   140001342:	19 c0                	sbb    %eax,%eax
   140001344:	48 83 c4 28          	add    $0x28,%rsp
   140001348:	c3                   	ret
   140001349:	90                   	nop
   14000134a:	90                   	nop
   14000134b:	90                   	nop
   14000134c:	90                   	nop
   14000134d:	90                   	nop
   14000134e:	90                   	nop
   14000134f:	90                   	nop

0000000140001350 <__gcc_register_frame>:
   140001350:	48 8d 0d 05 00 00 00 	lea    0x5(%rip),%rcx        # 14000135c <__gcc_deregister_frame>
   140001357:	e9 d9 ff ff ff       	jmp    140001335 <atexit>

000000014000135c <__gcc_deregister_frame>:
   14000135c:	c3                   	ret
   14000135d:	90                   	nop
   14000135e:	90                   	nop
   14000135f:	90                   	nop

0000000140001360 <printf>:
   140001360:	55                   	push   %rbp
   140001361:	53                   	push   %rbx
   140001362:	48 83 ec 38          	sub    $0x38,%rsp
   140001366:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   14000136b:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   14000136f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   140001373:	4c 89 45 30          	mov    %r8,0x30(%rbp)
   140001377:	4c 89 4d 38          	mov    %r9,0x38(%rbp)
   14000137b:	48 8d 45 28          	lea    0x28(%rbp),%rax
   14000137f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140001383:	48 8b 5d f0          	mov    -0x10(%rbp),%rbx
   140001387:	b9 01 00 00 00       	mov    $0x1,%ecx
   14000138c:	48 8b 05 1d 4d 00 00 	mov    0x4d1d(%rip),%rax        # 1400060b0 <__imp___acrt_iob_func>
   140001393:	ff d0                	call   *%rax
   140001395:	48 89 c1             	mov    %rax,%rcx
   140001398:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000139c:	49 89 d8             	mov    %rbx,%r8
   14000139f:	48 89 c2             	mov    %rax,%rdx
   1400013a2:	e8 d9 0c 00 00       	call   140002080 <__mingw_vfprintf>
   1400013a7:	89 45 fc             	mov    %eax,-0x4(%rbp)
   1400013aa:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400013ad:	48 83 c4 38          	add    $0x38,%rsp
   1400013b1:	5b                   	pop    %rbx
   1400013b2:	5d                   	pop    %rbp
   1400013b3:	c3                   	ret

00000001400013b4 <main>:
   1400013b4:	55                   	push   %rbp
   1400013b5:	48 89 e5             	mov    %rsp,%rbp
   1400013b8:	48 83 ec 30          	sub    $0x30,%rsp
   1400013bc:	e8 dd 00 00 00       	call   14000149e <__main>
   1400013c1:	c7 45 fc 03 00 00 00 	movl   $0x3,-0x4(%rbp)
   1400013c8:	83 7d fc 03          	cmpl   $0x3,-0x4(%rbp)
   1400013cc:	74 36                	je     140001404 <main+0x50>
   1400013ce:	83 7d fc 03          	cmpl   $0x3,-0x4(%rbp)
   1400013d2:	7f 41                	jg     140001415 <main+0x61>
   1400013d4:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
   1400013d8:	74 08                	je     1400013e2 <main+0x2e>
   1400013da:	83 7d fc 02          	cmpl   $0x2,-0x4(%rbp)
   1400013de:	74 13                	je     1400013f3 <main+0x3f>
   1400013e0:	eb 33                	jmp    140001415 <main+0x61>
   1400013e2:	48 8d 05 17 5c 00 00 	lea    0x5c17(%rip),%rax        # 140007000 <.rdata>
   1400013e9:	48 89 c1             	mov    %rax,%rcx
   1400013ec:	e8 6f ff ff ff       	call   140001360 <printf>
   1400013f1:	eb 32                	jmp    140001425 <main+0x71>
   1400013f3:	48 8d 05 0e 5c 00 00 	lea    0x5c0e(%rip),%rax        # 140007008 <.rdata+0x8>
   1400013fa:	48 89 c1             	mov    %rax,%rcx
   1400013fd:	e8 5e ff ff ff       	call   140001360 <printf>
   140001402:	eb 21                	jmp    140001425 <main+0x71>
   140001404:	48 8d 05 05 5c 00 00 	lea    0x5c05(%rip),%rax        # 140007010 <.rdata+0x10>
   14000140b:	48 89 c1             	mov    %rax,%rcx
   14000140e:	e8 4d ff ff ff       	call   140001360 <printf>
   140001413:	eb 10                	jmp    140001425 <main+0x71>
   140001415:	48 8d 05 fc 5b 00 00 	lea    0x5bfc(%rip),%rax        # 140007018 <.rdata+0x18>
   14000141c:	48 89 c1             	mov    %rax,%rcx
   14000141f:	e8 3c ff ff ff       	call   140001360 <printf>
   140001424:	90                   	nop
   140001425:	b8 00 00 00 00       	mov    $0x0,%eax
   14000142a:	48 83 c4 30          	add    $0x30,%rsp
   14000142e:	5d                   	pop    %rbp
   14000142f:	c3                   	ret

0000000140001430 <__do_global_dtors>:
   140001430:	48 83 ec 28          	sub    $0x28,%rsp
   140001434:	48 8b 05 c5 4b 00 00 	mov    0x4bc5(%rip),%rax        # 140006000 <__data_start__>
   14000143b:	48 8b 00             	mov    (%rax),%rax
   14000143e:	48 85 c0             	test   %rax,%rax
   140001441:	74 0c                	je     14000144f <__do_global_dtors+0x1f>
   140001443:	ff d0                	call   *%rax
   140001445:	48 83 05 b3 4b 00 00 	addq   $0x8,0x4bb3(%rip)        # 140006000 <__data_start__>
   14000144c:	08 
   14000144d:	eb e5                	jmp    140001434 <__do_global_dtors+0x4>
   14000144f:	48 83 c4 28          	add    $0x28,%rsp
   140001453:	c3                   	ret

0000000140001454 <__do_global_ctors>:
   140001454:	56                   	push   %rsi
   140001455:	53                   	push   %rbx
   140001456:	48 83 ec 28          	sub    $0x28,%rsp
   14000145a:	48 8b 1d 7f 62 00 00 	mov    0x627f(%rip),%rbx        # 1400076e0 <.refptr.__CTOR_LIST__>
   140001461:	48 8b 13             	mov    (%rbx),%rdx
   140001464:	89 d0                	mov    %edx,%eax
   140001466:	ff c2                	inc    %edx
   140001468:	75 11                	jne    14000147b <__do_global_ctors+0x27>
   14000146a:	31 d2                	xor    %edx,%edx
   14000146c:	8d 4a 01             	lea    0x1(%rdx),%ecx
   14000146f:	89 d0                	mov    %edx,%eax
   140001471:	48 83 3c cb 00       	cmpq   $0x0,(%rbx,%rcx,8)
   140001476:	48 89 ca             	mov    %rcx,%rdx
   140001479:	75 f1                	jne    14000146c <__do_global_ctors+0x18>
   14000147b:	48 8d 34 c3          	lea    (%rbx,%rax,8),%rsi
   14000147f:	48 39 de             	cmp    %rbx,%rsi
   140001482:	74 08                	je     14000148c <__do_global_ctors+0x38>
   140001484:	ff 16                	call   *(%rsi)
   140001486:	48 83 ee 08          	sub    $0x8,%rsi
   14000148a:	eb f3                	jmp    14000147f <__do_global_ctors+0x2b>
   14000148c:	48 8d 0d 9d ff ff ff 	lea    -0x63(%rip),%rcx        # 140001430 <__do_global_dtors>
   140001493:	48 83 c4 28          	add    $0x28,%rsp
   140001497:	5b                   	pop    %rbx
   140001498:	5e                   	pop    %rsi
   140001499:	e9 97 fe ff ff       	jmp    140001335 <atexit>

000000014000149e <__main>:
   14000149e:	83 3d 8b 8b 00 00 00 	cmpl   $0x0,0x8b8b(%rip)        # 14000a030 <initialized>
   1400014a5:	75 0c                	jne    1400014b3 <__main+0x15>
   1400014a7:	c7 05 7f 8b 00 00 01 	movl   $0x1,0x8b7f(%rip)        # 14000a030 <initialized>
   1400014ae:	00 00 00 
   1400014b1:	eb a1                	jmp    140001454 <__do_global_ctors>
   1400014b3:	c3                   	ret
   1400014b4:	90                   	nop
   1400014b5:	90                   	nop
   1400014b6:	90                   	nop
   1400014b7:	90                   	nop
   1400014b8:	90                   	nop
   1400014b9:	90                   	nop
   1400014ba:	90                   	nop
   1400014bb:	90                   	nop
   1400014bc:	90                   	nop
   1400014bd:	90                   	nop
   1400014be:	90                   	nop
   1400014bf:	90                   	nop

00000001400014c0 <_setargv>:
   1400014c0:	31 c0                	xor    %eax,%eax
   1400014c2:	c3                   	ret
   1400014c3:	90                   	nop
   1400014c4:	90                   	nop
   1400014c5:	90                   	nop
   1400014c6:	90                   	nop
   1400014c7:	90                   	nop
   1400014c8:	90                   	nop
   1400014c9:	90                   	nop
   1400014ca:	90                   	nop
   1400014cb:	90                   	nop
   1400014cc:	90                   	nop
   1400014cd:	90                   	nop
   1400014ce:	90                   	nop
   1400014cf:	90                   	nop

00000001400014d0 <__dyn_tls_dtor>:
   1400014d0:	48 83 ec 28          	sub    $0x28,%rsp
   1400014d4:	83 fa 03             	cmp    $0x3,%edx
   1400014d7:	74 04                	je     1400014dd <__dyn_tls_dtor+0xd>
   1400014d9:	85 d2                	test   %edx,%edx
   1400014db:	75 05                	jne    1400014e2 <__dyn_tls_dtor+0x12>
   1400014dd:	e8 4b 08 00 00       	call   140001d2d <__mingw_TLScallback>
   1400014e2:	b8 01 00 00 00       	mov    $0x1,%eax
   1400014e7:	48 83 c4 28          	add    $0x28,%rsp
   1400014eb:	c3                   	ret

00000001400014ec <__dyn_tls_init>:
   1400014ec:	56                   	push   %rsi
   1400014ed:	53                   	push   %rbx
   1400014ee:	48 83 ec 28          	sub    $0x28,%rsp
   1400014f2:	48 8b 05 c7 61 00 00 	mov    0x61c7(%rip),%rax        # 1400076c0 <.refptr._CRT_MT>
   1400014f9:	83 38 02             	cmpl   $0x2,(%rax)
   1400014fc:	74 06                	je     140001504 <__dyn_tls_init+0x18>
   1400014fe:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   140001504:	83 fa 02             	cmp    $0x2,%edx
   140001507:	74 0c                	je     140001515 <__dyn_tls_init+0x29>
   140001509:	83 fa 01             	cmp    $0x1,%edx
   14000150c:	75 2a                	jne    140001538 <__dyn_tls_init+0x4c>
   14000150e:	e8 1a 08 00 00       	call   140001d2d <__mingw_TLScallback>
   140001513:	eb 23                	jmp    140001538 <__dyn_tls_init+0x4c>
   140001515:	48 8d 1d 3c ab 00 00 	lea    0xab3c(%rip),%rbx        # 14000c058 <__xd_z>
   14000151c:	48 8d 35 35 ab 00 00 	lea    0xab35(%rip),%rsi        # 14000c058 <__xd_z>
   140001523:	48 39 f3             	cmp    %rsi,%rbx
   140001526:	74 10                	je     140001538 <__dyn_tls_init+0x4c>
   140001528:	48 8b 03             	mov    (%rbx),%rax
   14000152b:	48 85 c0             	test   %rax,%rax
   14000152e:	74 02                	je     140001532 <__dyn_tls_init+0x46>
   140001530:	ff d0                	call   *%rax
   140001532:	48 83 c3 08          	add    $0x8,%rbx
   140001536:	eb eb                	jmp    140001523 <__dyn_tls_init+0x37>
   140001538:	b8 01 00 00 00       	mov    $0x1,%eax
   14000153d:	48 83 c4 28          	add    $0x28,%rsp
   140001541:	5b                   	pop    %rbx
   140001542:	5e                   	pop    %rsi
   140001543:	c3                   	ret

0000000140001544 <__tlregdtor>:
   140001544:	31 c0                	xor    %eax,%eax
   140001546:	c3                   	ret
   140001547:	90                   	nop
   140001548:	90                   	nop
   140001549:	90                   	nop
   14000154a:	90                   	nop
   14000154b:	90                   	nop
   14000154c:	90                   	nop
   14000154d:	90                   	nop
   14000154e:	90                   	nop
   14000154f:	90                   	nop

0000000140001550 <_matherr>:
   140001550:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
   140001557:	0f 29 74 24 50       	movaps %xmm6,0x50(%rsp)
   14000155c:	0f 29 7c 24 60       	movaps %xmm7,0x60(%rsp)
   140001561:	44 0f 29 44 24 70    	movaps %xmm8,0x70(%rsp)
   140001567:	4c 8d 05 0b 5c 00 00 	lea    0x5c0b(%rip),%r8        # 140007179 <.rdata+0xd9>
   14000156e:	8b 01                	mov    (%rcx),%eax
   140001570:	ff c8                	dec    %eax
   140001572:	83 f8 05             	cmp    $0x5,%eax
   140001575:	77 44                	ja     1400015bb <_matherr+0x6b>
   140001577:	48 8d 15 36 5c 00 00 	lea    0x5c36(%rip),%rdx        # 1400071b4 <.rdata+0x114>
   14000157e:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140001582:	48 01 d0             	add    %rdx,%rax
   140001585:	ff e0                	jmp    *%rax
   140001587:	4c 8d 05 12 5b 00 00 	lea    0x5b12(%rip),%r8        # 1400070a0 <.rdata>
   14000158e:	eb 2b                	jmp    1400015bb <_matherr+0x6b>
   140001590:	4c 8d 05 44 5b 00 00 	lea    0x5b44(%rip),%r8        # 1400070db <.rdata+0x3b>
   140001597:	eb 22                	jmp    1400015bb <_matherr+0x6b>
   140001599:	4c 8d 05 5b 5b 00 00 	lea    0x5b5b(%rip),%r8        # 1400070fb <.rdata+0x5b>
   1400015a0:	eb 19                	jmp    1400015bb <_matherr+0x6b>
   1400015a2:	4c 8d 05 77 5b 00 00 	lea    0x5b77(%rip),%r8        # 140007120 <.rdata+0x80>
   1400015a9:	eb 10                	jmp    1400015bb <_matherr+0x6b>
   1400015ab:	4c 8d 05 91 5b 00 00 	lea    0x5b91(%rip),%r8        # 140007143 <.rdata+0xa3>
   1400015b2:	eb 07                	jmp    1400015bb <_matherr+0x6b>
   1400015b4:	4c 8d 05 04 5b 00 00 	lea    0x5b04(%rip),%r8        # 1400070bf <.rdata+0x1f>
   1400015bb:	4c 8b 49 08          	mov    0x8(%rcx),%r9
   1400015bf:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   1400015c5:	4c 89 44 24 48       	mov    %r8,0x48(%rsp)
   1400015ca:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   1400015cf:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   1400015d4:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400015d9:	4c 89 4c 24 40       	mov    %r9,0x40(%rsp)
   1400015de:	e8 ed 3e 00 00       	call   1400054d0 <__acrt_iob_func>
   1400015e3:	4c 8b 4c 24 40       	mov    0x40(%rsp),%r9
   1400015e8:	4c 8b 44 24 48       	mov    0x48(%rsp),%r8
   1400015ed:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   1400015f4:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   1400015fa:	48 89 c1             	mov    %rax,%rcx
   1400015fd:	48 8d 15 83 5b 00 00 	lea    0x5b83(%rip),%rdx        # 140007187 <.rdata+0xe7>
   140001604:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   14000160a:	e8 a9 43 00 00       	call   1400059b8 <fprintf>
   14000160f:	90                   	nop
   140001610:	0f 28 74 24 50       	movaps 0x50(%rsp),%xmm6
   140001615:	0f 28 7c 24 60       	movaps 0x60(%rsp),%xmm7
   14000161a:	31 c0                	xor    %eax,%eax
   14000161c:	44 0f 28 44 24 70    	movaps 0x70(%rsp),%xmm8
   140001622:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
   140001629:	c3                   	ret
   14000162a:	90                   	nop
   14000162b:	90                   	nop
   14000162c:	90                   	nop
   14000162d:	90                   	nop
   14000162e:	90                   	nop
   14000162f:	90                   	nop

0000000140001630 <_fpreset>:
   140001630:	db e3                	fninit
   140001632:	c3                   	ret
   140001633:	90                   	nop
   140001634:	90                   	nop
   140001635:	90                   	nop
   140001636:	90                   	nop
   140001637:	90                   	nop
   140001638:	90                   	nop
   140001639:	90                   	nop
   14000163a:	90                   	nop
   14000163b:	90                   	nop
   14000163c:	90                   	nop
   14000163d:	90                   	nop
   14000163e:	90                   	nop
   14000163f:	90                   	nop

0000000140001640 <__report_error>:
   140001640:	53                   	push   %rbx
   140001641:	48 83 ec 40          	sub    $0x40,%rsp
   140001645:	48 89 cb             	mov    %rcx,%rbx
   140001648:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   14000164d:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001652:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140001657:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000165c:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140001661:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
   140001666:	e8 65 3e 00 00       	call   1400054d0 <__acrt_iob_func>
   14000166b:	48 8d 0d 5e 5b 00 00 	lea    0x5b5e(%rip),%rcx        # 1400071d0 <.rdata>
   140001672:	48 89 c2             	mov    %rax,%rdx
   140001675:	e8 4e 43 00 00       	call   1400059c8 <fputs>
   14000167a:	4c 8b 44 24 38       	mov    0x38(%rsp),%r8
   14000167f:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001684:	4c 89 44 24 28       	mov    %r8,0x28(%rsp)
   140001689:	e8 42 3e 00 00       	call   1400054d0 <__acrt_iob_func>
   14000168e:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
   140001693:	48 89 da             	mov    %rbx,%rdx
   140001696:	48 89 c1             	mov    %rax,%rcx
   140001699:	e8 6a 43 00 00       	call   140005a08 <vfprintf>
   14000169e:	e8 fd 42 00 00       	call   1400059a0 <abort>
   1400016a3:	90                   	nop

00000001400016a4 <__write_memory.part.0>:
   1400016a4:	41 54                	push   %r12
   1400016a6:	55                   	push   %rbp
   1400016a7:	57                   	push   %rdi
   1400016a8:	56                   	push   %rsi
   1400016a9:	53                   	push   %rbx
   1400016aa:	48 83 ec 50          	sub    $0x50,%rsp
   1400016ae:	48 8b 05 f3 89 00 00 	mov    0x89f3(%rip),%rax        # 14000a0a8 <the_secs>
   1400016b5:	31 db                	xor    %ebx,%ebx
   1400016b7:	48 83 c0 18          	add    $0x18,%rax
   1400016bb:	49 89 cc             	mov    %rcx,%r12
   1400016be:	8b 0d e0 89 00 00    	mov    0x89e0(%rip),%ecx        # 14000a0a4 <maxSections>
   1400016c4:	48 89 d6             	mov    %rdx,%rsi
   1400016c7:	4c 89 c7             	mov    %r8,%rdi
   1400016ca:	39 cb                	cmp    %ecx,%ebx
   1400016cc:	7d 24                	jge    1400016f2 <__write_memory.part.0+0x4e>
   1400016ce:	48 8b 10             	mov    (%rax),%rdx
   1400016d1:	49 39 d4             	cmp    %rdx,%r12
   1400016d4:	72 14                	jb     1400016ea <__write_memory.part.0+0x46>
   1400016d6:	4c 8b 40 08          	mov    0x8(%rax),%r8
   1400016da:	45 8b 40 08          	mov    0x8(%r8),%r8d
   1400016de:	4c 01 c2             	add    %r8,%rdx
   1400016e1:	49 39 d4             	cmp    %rdx,%r12
   1400016e4:	0f 82 ee 00 00 00    	jb     1400017d8 <__write_memory.part.0+0x134>
   1400016ea:	ff c3                	inc    %ebx
   1400016ec:	48 83 c0 28          	add    $0x28,%rax
   1400016f0:	eb d8                	jmp    1400016ca <__write_memory.part.0+0x26>
   1400016f2:	4c 89 e1             	mov    %r12,%rcx
   1400016f5:	e8 c7 07 00 00       	call   140001ec1 <__mingw_GetSectionForAddress>
   1400016fa:	48 89 c5             	mov    %rax,%rbp
   1400016fd:	48 85 c0             	test   %rax,%rax
   140001700:	75 0f                	jne    140001711 <__write_memory.part.0+0x6d>
   140001702:	4c 89 e2             	mov    %r12,%rdx
   140001705:	48 8d 0d e0 5a 00 00 	lea    0x5ae0(%rip),%rcx        # 1400071ec <.rdata+0x1c>
   14000170c:	e8 2f ff ff ff       	call   140001640 <__report_error>
   140001711:	48 63 db             	movslq %ebx,%rbx
   140001714:	48 8b 05 8d 89 00 00 	mov    0x898d(%rip),%rax        # 14000a0a8 <the_secs>
   14000171b:	31 d2                	xor    %edx,%edx
   14000171d:	48 6b db 28          	imul   $0x28,%rbx,%rbx
   140001721:	48 01 d8             	add    %rbx,%rax
   140001724:	89 10                	mov    %edx,(%rax)
   140001726:	48 89 68 20          	mov    %rbp,0x20(%rax)
   14000172a:	e8 40 08 00 00       	call   140001f6f <_GetPEImageBase>
   14000172f:	8b 55 0c             	mov    0xc(%rbp),%edx
   140001732:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140001738:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   14000173c:	48 8b 05 65 89 00 00 	mov    0x8965(%rip),%rax        # 14000a0a8 <the_secs>
   140001743:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140001748:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   14000174d:	ff 15 bd 9a 00 00    	call   *0x9abd(%rip)        # 14000b210 <__imp_VirtualQuery>
   140001753:	48 85 c0             	test   %rax,%rax
   140001756:	75 1b                	jne    140001773 <__write_memory.part.0+0xcf>
   140001758:	48 8b 05 49 89 00 00 	mov    0x8949(%rip),%rax        # 14000a0a8 <the_secs>
   14000175f:	8b 55 08             	mov    0x8(%rbp),%edx
   140001762:	48 8d 0d a3 5a 00 00 	lea    0x5aa3(%rip),%rcx        # 14000720c <.rdata+0x3c>
   140001769:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   14000176e:	e8 cd fe ff ff       	call   140001640 <__report_error>
   140001773:	8b 44 24 44          	mov    0x44(%rsp),%eax
   140001777:	8d 50 fc             	lea    -0x4(%rax),%edx
   14000177a:	83 e2 fb             	and    $0xfffffffb,%edx
   14000177d:	74 53                	je     1400017d2 <__write_memory.part.0+0x12e>
   14000177f:	8d 50 c0             	lea    -0x40(%rax),%edx
   140001782:	83 e2 bf             	and    $0xffffffbf,%edx
   140001785:	74 4b                	je     1400017d2 <__write_memory.part.0+0x12e>
   140001787:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   14000178d:	83 f8 02             	cmp    $0x2,%eax
   140001790:	75 06                	jne    140001798 <__write_memory.part.0+0xf4>
   140001792:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140001798:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   14000179d:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   1400017a2:	48 03 1d ff 88 00 00 	add    0x88ff(%rip),%rbx        # 14000a0a8 <the_secs>
   1400017a9:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   1400017ad:	49 89 d9             	mov    %rbx,%r9
   1400017b0:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   1400017b4:	ff 15 4e 9a 00 00    	call   *0x9a4e(%rip)        # 14000b208 <__imp_VirtualProtect>
   1400017ba:	85 c0                	test   %eax,%eax
   1400017bc:	75 14                	jne    1400017d2 <__write_memory.part.0+0x12e>
   1400017be:	ff 15 04 9a 00 00    	call   *0x9a04(%rip)        # 14000b1c8 <__imp_GetLastError>
   1400017c4:	48 8d 0d 72 5a 00 00 	lea    0x5a72(%rip),%rcx        # 14000723d <.rdata+0x6d>
   1400017cb:	89 c2                	mov    %eax,%edx
   1400017cd:	e8 6e fe ff ff       	call   140001640 <__report_error>
   1400017d2:	ff 05 cc 88 00 00    	incl   0x88cc(%rip)        # 14000a0a4 <maxSections>
   1400017d8:	89 f9                	mov    %edi,%ecx
   1400017da:	4c 89 e7             	mov    %r12,%rdi
   1400017dd:	f3 a4                	rep movsb %ds:(%rsi),%es:(%rdi)
   1400017df:	48 83 c4 50          	add    $0x50,%rsp
   1400017e3:	5b                   	pop    %rbx
   1400017e4:	5e                   	pop    %rsi
   1400017e5:	5f                   	pop    %rdi
   1400017e6:	5d                   	pop    %rbp
   1400017e7:	41 5c                	pop    %r12
   1400017e9:	c3                   	ret

00000001400017ea <_pei386_runtime_relocator>:
   1400017ea:	55                   	push   %rbp
   1400017eb:	41 55                	push   %r13
   1400017ed:	41 54                	push   %r12
   1400017ef:	57                   	push   %rdi
   1400017f0:	56                   	push   %rsi
   1400017f1:	53                   	push   %rbx
   1400017f2:	48 83 ec 48          	sub    $0x48,%rsp
   1400017f6:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   1400017fb:	83 3d 9e 88 00 00 00 	cmpl   $0x0,0x889e(%rip)        # 14000a0a0 <was_init.0>
   140001802:	0f 85 36 02 00 00    	jne    140001a3e <_pei386_runtime_relocator+0x254>
   140001808:	c7 05 8e 88 00 00 01 	movl   $0x1,0x888e(%rip)        # 14000a0a0 <was_init.0>
   14000180f:	00 00 00 
   140001812:	e8 dd 06 00 00       	call   140001ef4 <__mingw_GetSectionCount>
   140001817:	48 98                	cltq
   140001819:	48 6b c0 28          	imul   $0x28,%rax,%rax
   14000181d:	48 83 c0 0f          	add    $0xf,%rax
   140001821:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140001825:	e8 16 08 00 00       	call   140002040 <___chkstk_ms>
   14000182a:	31 d2                	xor    %edx,%edx
   14000182c:	48 8b 35 cd 5e 00 00 	mov    0x5ecd(%rip),%rsi        # 140007700 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   140001833:	48 29 c4             	sub    %rax,%rsp
   140001836:	89 15 68 88 00 00    	mov    %edx,0x8868(%rip)        # 14000a0a4 <maxSections>
   14000183c:	48 8b 15 cd 5e 00 00 	mov    0x5ecd(%rip),%rdx        # 140007710 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140001843:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   140001848:	48 89 05 59 88 00 00 	mov    %rax,0x8859(%rip)        # 14000a0a8 <the_secs>
   14000184f:	48 89 f0             	mov    %rsi,%rax
   140001852:	48 29 d0             	sub    %rdx,%rax
   140001855:	48 83 f8 07          	cmp    $0x7,%rax
   140001859:	0f 8e a5 01 00 00    	jle    140001a04 <_pei386_runtime_relocator+0x21a>
   14000185f:	48 89 d3             	mov    %rdx,%rbx
   140001862:	48 83 f8 0b          	cmp    $0xb,%rax
   140001866:	7e 12                	jle    14000187a <_pei386_runtime_relocator+0x90>
   140001868:	8b 42 04             	mov    0x4(%rdx),%eax
   14000186b:	0b 02                	or     (%rdx),%eax
   14000186d:	48 83 c3 0c          	add    $0xc,%rbx
   140001871:	0b 42 08             	or     0x8(%rdx),%eax
   140001874:	85 c0                	test   %eax,%eax
   140001876:	48 0f 45 da          	cmovne %rdx,%rbx
   14000187a:	83 3b 00             	cmpl   $0x0,(%rbx)
   14000187d:	75 06                	jne    140001885 <_pei386_runtime_relocator+0x9b>
   14000187f:	83 7b 04 00          	cmpl   $0x0,0x4(%rbx)
   140001883:	74 35                	je     1400018ba <_pei386_runtime_relocator+0xd0>
   140001885:	48 8b 3d 64 5e 00 00 	mov    0x5e64(%rip),%rdi        # 1400076f0 <.refptr.__ImageBase>
   14000188c:	4c 8d 65 f8          	lea    -0x8(%rbp),%r12
   140001890:	48 39 f3             	cmp    %rsi,%rbx
   140001893:	0f 83 6b 01 00 00    	jae    140001a04 <_pei386_runtime_relocator+0x21a>
   140001899:	8b 4b 04             	mov    0x4(%rbx),%ecx
   14000189c:	8b 03                	mov    (%rbx),%eax
   14000189e:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   1400018a4:	4c 89 e2             	mov    %r12,%rdx
   1400018a7:	48 83 c3 08          	add    $0x8,%rbx
   1400018ab:	48 01 f9             	add    %rdi,%rcx
   1400018ae:	03 01                	add    (%rcx),%eax
   1400018b0:	89 45 f8             	mov    %eax,-0x8(%rbp)
   1400018b3:	e8 ec fd ff ff       	call   1400016a4 <__write_memory.part.0>
   1400018b8:	eb d6                	jmp    140001890 <_pei386_runtime_relocator+0xa6>
   1400018ba:	8b 53 08             	mov    0x8(%rbx),%edx
   1400018bd:	48 83 c3 0c          	add    $0xc,%rbx
   1400018c1:	83 fa 01             	cmp    $0x1,%edx
   1400018c4:	75 17                	jne    1400018dd <_pei386_runtime_relocator+0xf3>
   1400018c6:	48 8b 3d 23 5e 00 00 	mov    0x5e23(%rip),%rdi        # 1400076f0 <.refptr.__ImageBase>
   1400018cd:	49 83 cd ff          	or     $0xffffffffffffffff,%r13
   1400018d1:	49 bc 00 00 00 00 ff 	movabs $0xffffffff00000000,%r12
   1400018d8:	ff ff ff 
   1400018db:	eb 50                	jmp    14000192d <_pei386_runtime_relocator+0x143>
   1400018dd:	48 8d 0d 80 59 00 00 	lea    0x5980(%rip),%rcx        # 140007264 <.rdata+0x94>
   1400018e4:	e9 82 00 00 00       	jmp    14000196b <_pei386_runtime_relocator+0x181>
   1400018e9:	41 0f b6 02          	movzbl (%r10),%eax
   1400018ed:	84 c0                	test   %al,%al
   1400018ef:	79 06                	jns    1400018f7 <_pei386_runtime_relocator+0x10d>
   1400018f1:	48 0d 00 ff ff ff    	or     $0xffffffffffffff00,%rax
   1400018f7:	48 29 c8             	sub    %rcx,%rax
   1400018fa:	4c 01 c8             	add    %r9,%rax
   1400018fd:	41 80 e0 c0          	and    $0xc0,%r8b
   140001901:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140001905:	0f 84 9d 00 00 00    	je     1400019a8 <_pei386_runtime_relocator+0x1be>
   14000190b:	83 fa 20             	cmp    $0x20,%edx
   14000190e:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140001914:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
   140001918:	0f 85 c0 00 00 00    	jne    1400019de <_pei386_runtime_relocator+0x1f4>
   14000191e:	48 89 c2             	mov    %rax,%rdx
   140001921:	4c 89 d1             	mov    %r10,%rcx
   140001924:	48 83 c3 0c          	add    $0xc,%rbx
   140001928:	e8 77 fd ff ff       	call   1400016a4 <__write_memory.part.0>
   14000192d:	48 39 f3             	cmp    %rsi,%rbx
   140001930:	0f 83 ce 00 00 00    	jae    140001a04 <_pei386_runtime_relocator+0x21a>
   140001936:	8b 0b                	mov    (%rbx),%ecx
   140001938:	44 8b 43 08          	mov    0x8(%rbx),%r8d
   14000193c:	44 8b 53 04          	mov    0x4(%rbx),%r10d
   140001940:	48 01 f9             	add    %rdi,%rcx
   140001943:	41 0f b6 d0          	movzbl %r8b,%edx
   140001947:	4c 8b 09             	mov    (%rcx),%r9
   14000194a:	49 01 fa             	add    %rdi,%r10
   14000194d:	83 fa 20             	cmp    $0x20,%edx
   140001950:	74 43                	je     140001995 <_pei386_runtime_relocator+0x1ab>
   140001952:	77 1c                	ja     140001970 <_pei386_runtime_relocator+0x186>
   140001954:	83 fa 08             	cmp    $0x8,%edx
   140001957:	74 90                	je     1400018e9 <_pei386_runtime_relocator+0xff>
   140001959:	83 fa 10             	cmp    $0x10,%edx
   14000195c:	74 1f                	je     14000197d <_pei386_runtime_relocator+0x193>
   14000195e:	31 c0                	xor    %eax,%eax
   140001960:	48 8d 0d 2f 59 00 00 	lea    0x592f(%rip),%rcx        # 140007296 <.rdata+0xc6>
   140001967:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   14000196b:	e8 d0 fc ff ff       	call   140001640 <__report_error>
   140001970:	83 fa 40             	cmp    $0x40,%edx
   140001973:	75 e9                	jne    14000195e <_pei386_runtime_relocator+0x174>
   140001975:	49 8b 02             	mov    (%r10),%rax
   140001978:	e9 7a ff ff ff       	jmp    1400018f7 <_pei386_runtime_relocator+0x10d>
   14000197d:	41 0f b7 02          	movzwl (%r10),%eax
   140001981:	66 85 c0             	test   %ax,%ax
   140001984:	0f 89 6d ff ff ff    	jns    1400018f7 <_pei386_runtime_relocator+0x10d>
   14000198a:	48 0d 00 00 ff ff    	or     $0xffffffffffff0000,%rax
   140001990:	e9 62 ff ff ff       	jmp    1400018f7 <_pei386_runtime_relocator+0x10d>
   140001995:	41 8b 02             	mov    (%r10),%eax
   140001998:	85 c0                	test   %eax,%eax
   14000199a:	0f 89 57 ff ff ff    	jns    1400018f7 <_pei386_runtime_relocator+0x10d>
   1400019a0:	4c 09 e0             	or     %r12,%rax
   1400019a3:	e9 4f ff ff ff       	jmp    1400018f7 <_pei386_runtime_relocator+0x10d>
   1400019a8:	8d 4a ff             	lea    -0x1(%rdx),%ecx
   1400019ab:	4d 89 eb             	mov    %r13,%r11
   1400019ae:	49 d3 e3             	shl    %cl,%r11
   1400019b1:	4c 39 d8             	cmp    %r11,%rax
   1400019b4:	7c 14                	jl     1400019ca <_pei386_runtime_relocator+0x1e0>
   1400019b6:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   1400019bc:	89 d1                	mov    %edx,%ecx
   1400019be:	49 d3 e0             	shl    %cl,%r8
   1400019c1:	4c 39 c0             	cmp    %r8,%rax
   1400019c4:	0f 8c 41 ff ff ff    	jl     14000190b <_pei386_runtime_relocator+0x121>
   1400019ca:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   1400019cf:	4d 89 d0             	mov    %r10,%r8
   1400019d2:	48 8d 0d e7 58 00 00 	lea    0x58e7(%rip),%rcx        # 1400072c0 <.rdata+0xf0>
   1400019d9:	e8 62 fc ff ff       	call   140001640 <__report_error>
   1400019de:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   1400019e4:	0f 87 34 ff ff ff    	ja     14000191e <_pei386_runtime_relocator+0x134>
   1400019ea:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   1400019f0:	83 fa 08             	cmp    $0x8,%edx
   1400019f3:	0f 84 25 ff ff ff    	je     14000191e <_pei386_runtime_relocator+0x134>
   1400019f9:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   1400019ff:	e9 1a ff ff ff       	jmp    14000191e <_pei386_runtime_relocator+0x134>
   140001a04:	48 8b 3d fd 97 00 00 	mov    0x97fd(%rip),%rdi        # 14000b208 <__imp_VirtualProtect>
   140001a0b:	31 db                	xor    %ebx,%ebx
   140001a0d:	48 8d 75 f8          	lea    -0x8(%rbp),%rsi
   140001a11:	39 1d 8d 86 00 00    	cmp    %ebx,0x868d(%rip)        # 14000a0a4 <maxSections>
   140001a17:	7e 25                	jle    140001a3e <_pei386_runtime_relocator+0x254>
   140001a19:	48 6b c3 28          	imul   $0x28,%rbx,%rax
   140001a1d:	48 03 05 84 86 00 00 	add    0x8684(%rip),%rax        # 14000a0a8 <the_secs>
   140001a24:	44 8b 00             	mov    (%rax),%r8d
   140001a27:	45 85 c0             	test   %r8d,%r8d
   140001a2a:	74 0d                	je     140001a39 <_pei386_runtime_relocator+0x24f>
   140001a2c:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140001a30:	48 8b 48 08          	mov    0x8(%rax),%rcx
   140001a34:	49 89 f1             	mov    %rsi,%r9
   140001a37:	ff d7                	call   *%rdi
   140001a39:	48 ff c3             	inc    %rbx
   140001a3c:	eb d3                	jmp    140001a11 <_pei386_runtime_relocator+0x227>
   140001a3e:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140001a42:	5b                   	pop    %rbx
   140001a43:	5e                   	pop    %rsi
   140001a44:	5f                   	pop    %rdi
   140001a45:	41 5c                	pop    %r12
   140001a47:	41 5d                	pop    %r13
   140001a49:	5d                   	pop    %rbp
   140001a4a:	c3                   	ret
   140001a4b:	90                   	nop
   140001a4c:	90                   	nop
   140001a4d:	90                   	nop
   140001a4e:	90                   	nop
   140001a4f:	90                   	nop

0000000140001a50 <__mingw_raise_matherr>:
   140001a50:	48 83 ec 58          	sub    $0x58,%rsp
   140001a54:	48 8b 05 55 86 00 00 	mov    0x8655(%rip),%rax        # 14000a0b0 <stUserMathErr>
   140001a5b:	48 85 c0             	test   %rax,%rax
   140001a5e:	74 2c                	je     140001a8c <__mingw_raise_matherr+0x3c>
   140001a60:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140001a67:	00 00 
   140001a69:	89 4c 24 28          	mov    %ecx,0x28(%rsp)
   140001a6d:	48 8d 4c 24 28       	lea    0x28(%rsp),%rcx
   140001a72:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
   140001a77:	f2 0f 11 54 24 38    	movsd  %xmm2,0x38(%rsp)
   140001a7d:	f2 0f 11 5c 24 40    	movsd  %xmm3,0x40(%rsp)
   140001a83:	f2 0f 11 44 24 48    	movsd  %xmm0,0x48(%rsp)
   140001a89:	ff d0                	call   *%rax
   140001a8b:	90                   	nop
   140001a8c:	48 83 c4 58          	add    $0x58,%rsp
   140001a90:	c3                   	ret

0000000140001a91 <__mingw_setusermatherr>:
   140001a91:	48 89 0d 18 86 00 00 	mov    %rcx,0x8618(%rip)        # 14000a0b0 <stUserMathErr>
   140001a98:	e9 c3 3e 00 00       	jmp    140005960 <__setusermatherr>
   140001a9d:	90                   	nop
   140001a9e:	90                   	nop
   140001a9f:	90                   	nop

0000000140001aa0 <_gnu_exception_handler>:
   140001aa0:	56                   	push   %rsi
   140001aa1:	53                   	push   %rbx
   140001aa2:	48 83 ec 28          	sub    $0x28,%rsp
   140001aa6:	48 8b 11             	mov    (%rcx),%rdx
   140001aa9:	8b 02                	mov    (%rdx),%eax
   140001aab:	48 89 cb             	mov    %rcx,%rbx
   140001aae:	89 c1                	mov    %eax,%ecx
   140001ab0:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140001ab6:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   140001abc:	75 06                	jne    140001ac4 <_gnu_exception_handler+0x24>
   140001abe:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140001ac2:	74 4d                	je     140001b11 <_gnu_exception_handler+0x71>
   140001ac4:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140001ac9:	0f 87 f8 00 00 00    	ja     140001bc7 <_gnu_exception_handler+0x127>
   140001acf:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   140001ad4:	77 16                	ja     140001aec <_gnu_exception_handler+0x4c>
   140001ad6:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   140001adb:	74 48                	je     140001b25 <_gnu_exception_handler+0x85>
   140001add:	77 2b                	ja     140001b0a <_gnu_exception_handler+0x6a>
   140001adf:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140001ae4:	0f 85 dd 00 00 00    	jne    140001bc7 <_gnu_exception_handler+0x127>
   140001aea:	eb 25                	jmp    140001b11 <_gnu_exception_handler+0x71>
   140001aec:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   140001af1:	83 f8 09             	cmp    $0x9,%eax
   140001af4:	77 1b                	ja     140001b11 <_gnu_exception_handler+0x71>
   140001af6:	48 8d 15 23 58 00 00 	lea    0x5823(%rip),%rdx        # 140007320 <.rdata>
   140001afd:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140001b01:	48 01 d0             	add    %rdx,%rax
   140001b04:	ff e0                	jmp    *%rax
   140001b06:	31 f6                	xor    %esi,%esi
   140001b08:	eb 79                	jmp    140001b83 <_gnu_exception_handler+0xe3>
   140001b0a:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   140001b0f:	75 08                	jne    140001b19 <_gnu_exception_handler+0x79>
   140001b11:	83 c8 ff             	or     $0xffffffff,%eax
   140001b14:	e9 c8 00 00 00       	jmp    140001be1 <_gnu_exception_handler+0x141>
   140001b19:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140001b1e:	74 2f                	je     140001b4f <_gnu_exception_handler+0xaf>
   140001b20:	e9 a2 00 00 00       	jmp    140001bc7 <_gnu_exception_handler+0x127>
   140001b25:	31 d2                	xor    %edx,%edx
   140001b27:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001b2c:	e8 b7 3e 00 00       	call   1400059e8 <signal>
   140001b31:	48 83 f8 01          	cmp    $0x1,%rax
   140001b35:	75 0c                	jne    140001b43 <_gnu_exception_handler+0xa3>
   140001b37:	ba 01 00 00 00       	mov    $0x1,%edx
   140001b3c:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001b41:	eb 28                	jmp    140001b6b <_gnu_exception_handler+0xcb>
   140001b43:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001b48:	48 85 c0             	test   %rax,%rax
   140001b4b:	74 7a                	je     140001bc7 <_gnu_exception_handler+0x127>
   140001b4d:	eb 71                	jmp    140001bc0 <_gnu_exception_handler+0x120>
   140001b4f:	31 d2                	xor    %edx,%edx
   140001b51:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001b56:	e8 8d 3e 00 00       	call   1400059e8 <signal>
   140001b5b:	48 83 f8 01          	cmp    $0x1,%rax
   140001b5f:	75 11                	jne    140001b72 <_gnu_exception_handler+0xd2>
   140001b61:	ba 01 00 00 00       	mov    $0x1,%edx
   140001b66:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001b6b:	e8 78 3e 00 00       	call   1400059e8 <signal>
   140001b70:	eb 9f                	jmp    140001b11 <_gnu_exception_handler+0x71>
   140001b72:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001b77:	48 85 c0             	test   %rax,%rax
   140001b7a:	74 4b                	je     140001bc7 <_gnu_exception_handler+0x127>
   140001b7c:	eb 42                	jmp    140001bc0 <_gnu_exception_handler+0x120>
   140001b7e:	be 01 00 00 00       	mov    $0x1,%esi
   140001b83:	31 d2                	xor    %edx,%edx
   140001b85:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001b8a:	e8 59 3e 00 00       	call   1400059e8 <signal>
   140001b8f:	48 83 f8 01          	cmp    $0x1,%rax
   140001b93:	75 21                	jne    140001bb6 <_gnu_exception_handler+0x116>
   140001b95:	ba 01 00 00 00       	mov    $0x1,%edx
   140001b9a:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001b9f:	e8 44 3e 00 00       	call   1400059e8 <signal>
   140001ba4:	85 f6                	test   %esi,%esi
   140001ba6:	0f 84 65 ff ff ff    	je     140001b11 <_gnu_exception_handler+0x71>
   140001bac:	e8 7f fa ff ff       	call   140001630 <_fpreset>
   140001bb1:	e9 5b ff ff ff       	jmp    140001b11 <_gnu_exception_handler+0x71>
   140001bb6:	48 85 c0             	test   %rax,%rax
   140001bb9:	74 0c                	je     140001bc7 <_gnu_exception_handler+0x127>
   140001bbb:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001bc0:	ff d0                	call   *%rax
   140001bc2:	e9 4a ff ff ff       	jmp    140001b11 <_gnu_exception_handler+0x71>
   140001bc7:	48 8b 05 02 85 00 00 	mov    0x8502(%rip),%rax        # 14000a0d0 <__mingw_oldexcpt_handler>
   140001bce:	48 85 c0             	test   %rax,%rax
   140001bd1:	74 0c                	je     140001bdf <_gnu_exception_handler+0x13f>
   140001bd3:	48 89 d9             	mov    %rbx,%rcx
   140001bd6:	48 83 c4 28          	add    $0x28,%rsp
   140001bda:	5b                   	pop    %rbx
   140001bdb:	5e                   	pop    %rsi
   140001bdc:	48 ff e0             	rex.W jmp *%rax
   140001bdf:	31 c0                	xor    %eax,%eax
   140001be1:	48 83 c4 28          	add    $0x28,%rsp
   140001be5:	5b                   	pop    %rbx
   140001be6:	5e                   	pop    %rsi
   140001be7:	c3                   	ret
   140001be8:	90                   	nop
   140001be9:	90                   	nop
   140001bea:	90                   	nop
   140001beb:	90                   	nop
   140001bec:	90                   	nop
   140001bed:	90                   	nop
   140001bee:	90                   	nop
   140001bef:	90                   	nop

0000000140001bf0 <__mingwthr_run_key_dtors.part.0>:
   140001bf0:	57                   	push   %rdi
   140001bf1:	56                   	push   %rsi
   140001bf2:	53                   	push   %rbx
   140001bf3:	48 83 ec 20          	sub    $0x20,%rsp
   140001bf7:	48 8d 3d 02 85 00 00 	lea    0x8502(%rip),%rdi        # 14000a100 <__mingwthr_cs>
   140001bfe:	48 89 f9             	mov    %rdi,%rcx
   140001c01:	ff 15 b9 95 00 00    	call   *0x95b9(%rip)        # 14000b1c0 <__imp_EnterCriticalSection>
   140001c07:	48 8b 1d d2 84 00 00 	mov    0x84d2(%rip),%rbx        # 14000a0e0 <key_dtor_list>
   140001c0e:	48 85 db             	test   %rbx,%rbx
   140001c11:	74 29                	je     140001c3c <__mingwthr_run_key_dtors.part.0+0x4c>
   140001c13:	8b 0b                	mov    (%rbx),%ecx
   140001c15:	ff 15 e5 95 00 00    	call   *0x95e5(%rip)        # 14000b200 <__imp_TlsGetValue>
   140001c1b:	48 89 c6             	mov    %rax,%rsi
   140001c1e:	ff 15 a4 95 00 00    	call   *0x95a4(%rip)        # 14000b1c8 <__imp_GetLastError>
   140001c24:	48 85 f6             	test   %rsi,%rsi
   140001c27:	74 0d                	je     140001c36 <__mingwthr_run_key_dtors.part.0+0x46>
   140001c29:	85 c0                	test   %eax,%eax
   140001c2b:	75 09                	jne    140001c36 <__mingwthr_run_key_dtors.part.0+0x46>
   140001c2d:	48 8b 43 08          	mov    0x8(%rbx),%rax
   140001c31:	48 89 f1             	mov    %rsi,%rcx
   140001c34:	ff d0                	call   *%rax
   140001c36:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140001c3a:	eb d2                	jmp    140001c0e <__mingwthr_run_key_dtors.part.0+0x1e>
   140001c3c:	48 89 f9             	mov    %rdi,%rcx
   140001c3f:	48 83 c4 20          	add    $0x20,%rsp
   140001c43:	5b                   	pop    %rbx
   140001c44:	5e                   	pop    %rsi
   140001c45:	5f                   	pop    %rdi
   140001c46:	48 ff 25 93 95 00 00 	rex.W jmp *0x9593(%rip)        # 14000b1e0 <__imp_LeaveCriticalSection>

0000000140001c4d <___w64_mingwthr_add_key_dtor>:
   140001c4d:	57                   	push   %rdi
   140001c4e:	56                   	push   %rsi
   140001c4f:	53                   	push   %rbx
   140001c50:	48 83 ec 20          	sub    $0x20,%rsp
   140001c54:	8b 05 8e 84 00 00    	mov    0x848e(%rip),%eax        # 14000a0e8 <__mingwthr_cs_init>
   140001c5a:	89 cf                	mov    %ecx,%edi
   140001c5c:	48 89 d6             	mov    %rdx,%rsi
   140001c5f:	85 c0                	test   %eax,%eax
   140001c61:	74 4b                	je     140001cae <___w64_mingwthr_add_key_dtor+0x61>
   140001c63:	ba 18 00 00 00       	mov    $0x18,%edx
   140001c68:	b9 01 00 00 00       	mov    $0x1,%ecx
   140001c6d:	e8 36 3d 00 00       	call   1400059a8 <calloc>
   140001c72:	48 89 c3             	mov    %rax,%rbx
   140001c75:	83 c8 ff             	or     $0xffffffff,%eax
   140001c78:	48 85 db             	test   %rbx,%rbx
   140001c7b:	74 33                	je     140001cb0 <___w64_mingwthr_add_key_dtor+0x63>
   140001c7d:	48 89 73 08          	mov    %rsi,0x8(%rbx)
   140001c81:	48 8d 35 78 84 00 00 	lea    0x8478(%rip),%rsi        # 14000a100 <__mingwthr_cs>
   140001c88:	48 89 f1             	mov    %rsi,%rcx
   140001c8b:	89 3b                	mov    %edi,(%rbx)
   140001c8d:	ff 15 2d 95 00 00    	call   *0x952d(%rip)        # 14000b1c0 <__imp_EnterCriticalSection>
   140001c93:	48 8b 05 46 84 00 00 	mov    0x8446(%rip),%rax        # 14000a0e0 <key_dtor_list>
   140001c9a:	48 89 f1             	mov    %rsi,%rcx
   140001c9d:	48 89 1d 3c 84 00 00 	mov    %rbx,0x843c(%rip)        # 14000a0e0 <key_dtor_list>
   140001ca4:	48 89 43 10          	mov    %rax,0x10(%rbx)
   140001ca8:	ff 15 32 95 00 00    	call   *0x9532(%rip)        # 14000b1e0 <__imp_LeaveCriticalSection>
   140001cae:	31 c0                	xor    %eax,%eax
   140001cb0:	48 83 c4 20          	add    $0x20,%rsp
   140001cb4:	5b                   	pop    %rbx
   140001cb5:	5e                   	pop    %rsi
   140001cb6:	5f                   	pop    %rdi
   140001cb7:	c3                   	ret

0000000140001cb8 <___w64_mingwthr_remove_key_dtor>:
   140001cb8:	56                   	push   %rsi
   140001cb9:	53                   	push   %rbx
   140001cba:	48 83 ec 28          	sub    $0x28,%rsp
   140001cbe:	8b 05 24 84 00 00    	mov    0x8424(%rip),%eax        # 14000a0e8 <__mingwthr_cs_init>
   140001cc4:	89 cb                	mov    %ecx,%ebx
   140001cc6:	85 c0                	test   %eax,%eax
   140001cc8:	74 5a                	je     140001d24 <___w64_mingwthr_remove_key_dtor+0x6c>
   140001cca:	48 8d 35 2f 84 00 00 	lea    0x842f(%rip),%rsi        # 14000a100 <__mingwthr_cs>
   140001cd1:	48 89 f1             	mov    %rsi,%rcx
   140001cd4:	ff 15 e6 94 00 00    	call   *0x94e6(%rip)        # 14000b1c0 <__imp_EnterCriticalSection>
   140001cda:	48 8b 0d ff 83 00 00 	mov    0x83ff(%rip),%rcx        # 14000a0e0 <key_dtor_list>
   140001ce1:	31 c0                	xor    %eax,%eax
   140001ce3:	48 85 c9             	test   %rcx,%rcx
   140001ce6:	74 33                	je     140001d1b <___w64_mingwthr_remove_key_dtor+0x63>
   140001ce8:	8b 11                	mov    (%rcx),%edx
   140001cea:	39 da                	cmp    %ebx,%edx
   140001cec:	75 21                	jne    140001d0f <___w64_mingwthr_remove_key_dtor+0x57>
   140001cee:	48 85 c0             	test   %rax,%rax
   140001cf1:	75 0d                	jne    140001d00 <___w64_mingwthr_remove_key_dtor+0x48>
   140001cf3:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140001cf7:	48 89 05 e2 83 00 00 	mov    %rax,0x83e2(%rip)        # 14000a0e0 <key_dtor_list>
   140001cfe:	eb 08                	jmp    140001d08 <___w64_mingwthr_remove_key_dtor+0x50>
   140001d00:	48 8b 51 10          	mov    0x10(%rcx),%rdx
   140001d04:	48 89 50 10          	mov    %rdx,0x10(%rax)
   140001d08:	e8 c3 3c 00 00       	call   1400059d0 <free>
   140001d0d:	eb 0c                	jmp    140001d1b <___w64_mingwthr_remove_key_dtor+0x63>
   140001d0f:	48 8b 51 10          	mov    0x10(%rcx),%rdx
   140001d13:	48 89 c8             	mov    %rcx,%rax
   140001d16:	48 89 d1             	mov    %rdx,%rcx
   140001d19:	eb c8                	jmp    140001ce3 <___w64_mingwthr_remove_key_dtor+0x2b>
   140001d1b:	48 89 f1             	mov    %rsi,%rcx
   140001d1e:	ff 15 bc 94 00 00    	call   *0x94bc(%rip)        # 14000b1e0 <__imp_LeaveCriticalSection>
   140001d24:	31 c0                	xor    %eax,%eax
   140001d26:	48 83 c4 28          	add    $0x28,%rsp
   140001d2a:	5b                   	pop    %rbx
   140001d2b:	5e                   	pop    %rsi
   140001d2c:	c3                   	ret

0000000140001d2d <__mingw_TLScallback>:
   140001d2d:	53                   	push   %rbx
   140001d2e:	48 83 ec 20          	sub    $0x20,%rsp
   140001d32:	83 fa 02             	cmp    $0x2,%edx
   140001d35:	0f 84 8c 00 00 00    	je     140001dc7 <__mingw_TLScallback+0x9a>
   140001d3b:	77 06                	ja     140001d43 <__mingw_TLScallback+0x16>
   140001d3d:	85 d2                	test   %edx,%edx
   140001d3f:	75 10                	jne    140001d51 <__mingw_TLScallback+0x24>
   140001d41:	eb 31                	jmp    140001d74 <__mingw_TLScallback+0x47>
   140001d43:	83 fa 03             	cmp    $0x3,%edx
   140001d46:	0f 84 82 00 00 00    	je     140001dce <__mingw_TLScallback+0xa1>
   140001d4c:	e9 8c 00 00 00       	jmp    140001ddd <__mingw_TLScallback+0xb0>
   140001d51:	8b 05 91 83 00 00    	mov    0x8391(%rip),%eax        # 14000a0e8 <__mingwthr_cs_init>
   140001d57:	85 c0                	test   %eax,%eax
   140001d59:	75 0d                	jne    140001d68 <__mingw_TLScallback+0x3b>
   140001d5b:	48 8d 0d 9e 83 00 00 	lea    0x839e(%rip),%rcx        # 14000a100 <__mingwthr_cs>
   140001d62:	ff 15 68 94 00 00    	call   *0x9468(%rip)        # 14000b1d0 <__imp_InitializeCriticalSection>
   140001d68:	c7 05 76 83 00 00 01 	movl   $0x1,0x8376(%rip)        # 14000a0e8 <__mingwthr_cs_init>
   140001d6f:	00 00 00 
   140001d72:	eb 69                	jmp    140001ddd <__mingw_TLScallback+0xb0>
   140001d74:	8b 05 6e 83 00 00    	mov    0x836e(%rip),%eax        # 14000a0e8 <__mingwthr_cs_init>
   140001d7a:	85 c0                	test   %eax,%eax
   140001d7c:	74 05                	je     140001d83 <__mingw_TLScallback+0x56>
   140001d7e:	e8 6d fe ff ff       	call   140001bf0 <__mingwthr_run_key_dtors.part.0>
   140001d83:	8b 05 5f 83 00 00    	mov    0x835f(%rip),%eax        # 14000a0e8 <__mingwthr_cs_init>
   140001d89:	48 8b 0d 50 83 00 00 	mov    0x8350(%rip),%rcx        # 14000a0e0 <key_dtor_list>
   140001d90:	ff c8                	dec    %eax
   140001d92:	75 49                	jne    140001ddd <__mingw_TLScallback+0xb0>
   140001d94:	48 85 c9             	test   %rcx,%rcx
   140001d97:	74 0e                	je     140001da7 <__mingw_TLScallback+0x7a>
   140001d99:	48 8b 59 10          	mov    0x10(%rcx),%rbx
   140001d9d:	e8 2e 3c 00 00       	call   1400059d0 <free>
   140001da2:	48 89 d9             	mov    %rbx,%rcx
   140001da5:	eb ed                	jmp    140001d94 <__mingw_TLScallback+0x67>
   140001da7:	31 c0                	xor    %eax,%eax
   140001da9:	31 d2                	xor    %edx,%edx
   140001dab:	48 8d 0d 4e 83 00 00 	lea    0x834e(%rip),%rcx        # 14000a100 <__mingwthr_cs>
   140001db2:	48 89 05 27 83 00 00 	mov    %rax,0x8327(%rip)        # 14000a0e0 <key_dtor_list>
   140001db9:	89 15 29 83 00 00    	mov    %edx,0x8329(%rip)        # 14000a0e8 <__mingwthr_cs_init>
   140001dbf:	ff 15 f3 93 00 00    	call   *0x93f3(%rip)        # 14000b1b8 <__IAT_start__>
   140001dc5:	eb 16                	jmp    140001ddd <__mingw_TLScallback+0xb0>
   140001dc7:	e8 64 f8 ff ff       	call   140001630 <_fpreset>
   140001dcc:	eb 0f                	jmp    140001ddd <__mingw_TLScallback+0xb0>
   140001dce:	8b 05 14 83 00 00    	mov    0x8314(%rip),%eax        # 14000a0e8 <__mingwthr_cs_init>
   140001dd4:	85 c0                	test   %eax,%eax
   140001dd6:	74 05                	je     140001ddd <__mingw_TLScallback+0xb0>
   140001dd8:	e8 13 fe ff ff       	call   140001bf0 <__mingwthr_run_key_dtors.part.0>
   140001ddd:	b8 01 00 00 00       	mov    $0x1,%eax
   140001de2:	48 83 c4 20          	add    $0x20,%rsp
   140001de6:	5b                   	pop    %rbx
   140001de7:	c3                   	ret
   140001de8:	90                   	nop
   140001de9:	90                   	nop
   140001dea:	90                   	nop
   140001deb:	90                   	nop
   140001dec:	90                   	nop
   140001ded:	90                   	nop
   140001dee:	90                   	nop
   140001def:	90                   	nop

0000000140001df0 <_ValidateImageBase>:
   140001df0:	31 c0                	xor    %eax,%eax
   140001df2:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140001df7:	75 1a                	jne    140001e13 <_ValidateImageBase+0x23>
   140001df9:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   140001dfd:	48 01 d1             	add    %rdx,%rcx
   140001e00:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   140001e06:	75 0b                	jne    140001e13 <_ValidateImageBase+0x23>
   140001e08:	31 c0                	xor    %eax,%eax
   140001e0a:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140001e10:	0f 94 c0             	sete   %al
   140001e13:	c3                   	ret

0000000140001e14 <_FindPESection>:
   140001e14:	45 31 c0             	xor    %r8d,%r8d
   140001e17:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140001e1b:	48 01 c1             	add    %rax,%rcx
   140001e1e:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   140001e22:	44 0f b7 49 06       	movzwl 0x6(%rcx),%r9d
   140001e27:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   140001e2c:	45 39 c8             	cmp    %r9d,%r8d
   140001e2f:	73 1d                	jae    140001e4e <_FindPESection+0x3a>
   140001e31:	44 8b 50 0c          	mov    0xc(%rax),%r10d
   140001e35:	4c 89 d1             	mov    %r10,%rcx
   140001e38:	4c 39 d2             	cmp    %r10,%rdx
   140001e3b:	72 08                	jb     140001e45 <_FindPESection+0x31>
   140001e3d:	03 48 08             	add    0x8(%rax),%ecx
   140001e40:	48 39 ca             	cmp    %rcx,%rdx
   140001e43:	72 0b                	jb     140001e50 <_FindPESection+0x3c>
   140001e45:	41 ff c0             	inc    %r8d
   140001e48:	48 83 c0 28          	add    $0x28,%rax
   140001e4c:	eb de                	jmp    140001e2c <_FindPESection+0x18>
   140001e4e:	31 c0                	xor    %eax,%eax
   140001e50:	c3                   	ret

0000000140001e51 <_FindPESectionByName>:
   140001e51:	55                   	push   %rbp
   140001e52:	57                   	push   %rdi
   140001e53:	56                   	push   %rsi
   140001e54:	53                   	push   %rbx
   140001e55:	48 83 ec 28          	sub    $0x28,%rsp
   140001e59:	31 db                	xor    %ebx,%ebx
   140001e5b:	48 89 ce             	mov    %rcx,%rsi
   140001e5e:	e8 95 3b 00 00       	call   1400059f8 <strlen>
   140001e63:	48 83 f8 08          	cmp    $0x8,%rax
   140001e67:	77 4c                	ja     140001eb5 <_FindPESectionByName+0x64>
   140001e69:	4c 8b 05 80 58 00 00 	mov    0x5880(%rip),%r8        # 1400076f0 <.refptr.__ImageBase>
   140001e70:	4c 89 c1             	mov    %r8,%rcx
   140001e73:	e8 78 ff ff ff       	call   140001df0 <_ValidateImageBase>
   140001e78:	85 c0                	test   %eax,%eax
   140001e7a:	74 39                	je     140001eb5 <_FindPESectionByName+0x64>
   140001e7c:	49 63 40 3c          	movslq 0x3c(%r8),%rax
   140001e80:	31 ff                	xor    %edi,%edi
   140001e82:	4c 01 c0             	add    %r8,%rax
   140001e85:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   140001e89:	0f b7 68 06          	movzwl 0x6(%rax),%ebp
   140001e8d:	48 8d 5c 10 18       	lea    0x18(%rax,%rdx,1),%rbx
   140001e92:	39 ef                	cmp    %ebp,%edi
   140001e94:	73 1d                	jae    140001eb3 <_FindPESectionByName+0x62>
   140001e96:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   140001e9c:	48 89 f2             	mov    %rsi,%rdx
   140001e9f:	48 89 d9             	mov    %rbx,%rcx
   140001ea2:	e8 59 3b 00 00       	call   140005a00 <strncmp>
   140001ea7:	85 c0                	test   %eax,%eax
   140001ea9:	74 0a                	je     140001eb5 <_FindPESectionByName+0x64>
   140001eab:	ff c7                	inc    %edi
   140001ead:	48 83 c3 28          	add    $0x28,%rbx
   140001eb1:	eb df                	jmp    140001e92 <_FindPESectionByName+0x41>
   140001eb3:	31 db                	xor    %ebx,%ebx
   140001eb5:	48 89 d8             	mov    %rbx,%rax
   140001eb8:	48 83 c4 28          	add    $0x28,%rsp
   140001ebc:	5b                   	pop    %rbx
   140001ebd:	5e                   	pop    %rsi
   140001ebe:	5f                   	pop    %rdi
   140001ebf:	5d                   	pop    %rbp
   140001ec0:	c3                   	ret

0000000140001ec1 <__mingw_GetSectionForAddress>:
   140001ec1:	48 83 ec 28          	sub    $0x28,%rsp
   140001ec5:	4c 8b 0d 24 58 00 00 	mov    0x5824(%rip),%r9        # 1400076f0 <.refptr.__ImageBase>
   140001ecc:	49 89 c8             	mov    %rcx,%r8
   140001ecf:	4c 89 c9             	mov    %r9,%rcx
   140001ed2:	e8 19 ff ff ff       	call   140001df0 <_ValidateImageBase>
   140001ed7:	85 c0                	test   %eax,%eax
   140001ed9:	74 12                	je     140001eed <__mingw_GetSectionForAddress+0x2c>
   140001edb:	4c 89 c2             	mov    %r8,%rdx
   140001ede:	4c 89 c9             	mov    %r9,%rcx
   140001ee1:	4c 29 ca             	sub    %r9,%rdx
   140001ee4:	48 83 c4 28          	add    $0x28,%rsp
   140001ee8:	e9 27 ff ff ff       	jmp    140001e14 <_FindPESection>
   140001eed:	31 c0                	xor    %eax,%eax
   140001eef:	48 83 c4 28          	add    $0x28,%rsp
   140001ef3:	c3                   	ret

0000000140001ef4 <__mingw_GetSectionCount>:
   140001ef4:	48 83 ec 28          	sub    $0x28,%rsp
   140001ef8:	4c 8b 05 f1 57 00 00 	mov    0x57f1(%rip),%r8        # 1400076f0 <.refptr.__ImageBase>
   140001eff:	4c 89 c1             	mov    %r8,%rcx
   140001f02:	e8 e9 fe ff ff       	call   140001df0 <_ValidateImageBase>
   140001f07:	85 c0                	test   %eax,%eax
   140001f09:	74 0a                	je     140001f15 <__mingw_GetSectionCount+0x21>
   140001f0b:	49 63 40 3c          	movslq 0x3c(%r8),%rax
   140001f0f:	42 0f b7 44 00 06    	movzwl 0x6(%rax,%r8,1),%eax
   140001f15:	48 83 c4 28          	add    $0x28,%rsp
   140001f19:	c3                   	ret

0000000140001f1a <_FindPESectionExec>:
   140001f1a:	48 83 ec 28          	sub    $0x28,%rsp
   140001f1e:	4c 8b 0d cb 57 00 00 	mov    0x57cb(%rip),%r9        # 1400076f0 <.refptr.__ImageBase>
   140001f25:	49 89 c8             	mov    %rcx,%r8
   140001f28:	4c 89 c9             	mov    %r9,%rcx
   140001f2b:	e8 c0 fe ff ff       	call   140001df0 <_ValidateImageBase>
   140001f30:	89 c2                	mov    %eax,%edx
   140001f32:	31 c0                	xor    %eax,%eax
   140001f34:	85 d2                	test   %edx,%edx
   140001f36:	74 32                	je     140001f6a <_FindPESectionExec+0x50>
   140001f38:	49 63 51 3c          	movslq 0x3c(%r9),%rdx
   140001f3c:	4c 01 ca             	add    %r9,%rdx
   140001f3f:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   140001f43:	0f b7 4a 06          	movzwl 0x6(%rdx),%ecx
   140001f47:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   140001f4c:	31 d2                	xor    %edx,%edx
   140001f4e:	39 ca                	cmp    %ecx,%edx
   140001f50:	73 16                	jae    140001f68 <_FindPESectionExec+0x4e>
   140001f52:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   140001f56:	74 08                	je     140001f60 <_FindPESectionExec+0x46>
   140001f58:	4d 85 c0             	test   %r8,%r8
   140001f5b:	74 0d                	je     140001f6a <_FindPESectionExec+0x50>
   140001f5d:	49 ff c8             	dec    %r8
   140001f60:	ff c2                	inc    %edx
   140001f62:	48 83 c0 28          	add    $0x28,%rax
   140001f66:	eb e6                	jmp    140001f4e <_FindPESectionExec+0x34>
   140001f68:	31 c0                	xor    %eax,%eax
   140001f6a:	48 83 c4 28          	add    $0x28,%rsp
   140001f6e:	c3                   	ret

0000000140001f6f <_GetPEImageBase>:
   140001f6f:	48 83 ec 28          	sub    $0x28,%rsp
   140001f73:	48 8b 0d 76 57 00 00 	mov    0x5776(%rip),%rcx        # 1400076f0 <.refptr.__ImageBase>
   140001f7a:	e8 71 fe ff ff       	call   140001df0 <_ValidateImageBase>
   140001f7f:	85 c0                	test   %eax,%eax
   140001f81:	b8 00 00 00 00       	mov    $0x0,%eax
   140001f86:	48 0f 45 05 62 57 00 	cmovne 0x5762(%rip),%rax        # 1400076f0 <.refptr.__ImageBase>
   140001f8d:	00 
   140001f8e:	48 83 c4 28          	add    $0x28,%rsp
   140001f92:	c3                   	ret

0000000140001f93 <_IsNonwritableInCurrentImage>:
   140001f93:	48 83 ec 28          	sub    $0x28,%rsp
   140001f97:	4c 8b 0d 52 57 00 00 	mov    0x5752(%rip),%r9        # 1400076f0 <.refptr.__ImageBase>
   140001f9e:	49 89 c8             	mov    %rcx,%r8
   140001fa1:	4c 89 c9             	mov    %r9,%rcx
   140001fa4:	e8 47 fe ff ff       	call   140001df0 <_ValidateImageBase>
   140001fa9:	85 c0                	test   %eax,%eax
   140001fab:	74 20                	je     140001fcd <_IsNonwritableInCurrentImage+0x3a>
   140001fad:	4c 89 c2             	mov    %r8,%rdx
   140001fb0:	4c 89 c9             	mov    %r9,%rcx
   140001fb3:	4c 29 ca             	sub    %r9,%rdx
   140001fb6:	e8 59 fe ff ff       	call   140001e14 <_FindPESection>
   140001fbb:	48 89 c2             	mov    %rax,%rdx
   140001fbe:	31 c0                	xor    %eax,%eax
   140001fc0:	48 85 d2             	test   %rdx,%rdx
   140001fc3:	74 08                	je     140001fcd <_IsNonwritableInCurrentImage+0x3a>
   140001fc5:	8b 42 24             	mov    0x24(%rdx),%eax
   140001fc8:	f7 d0                	not    %eax
   140001fca:	c1 e8 1f             	shr    $0x1f,%eax
   140001fcd:	48 83 c4 28          	add    $0x28,%rsp
   140001fd1:	c3                   	ret

0000000140001fd2 <__mingw_enum_import_library_names>:
   140001fd2:	53                   	push   %rbx
   140001fd3:	48 83 ec 20          	sub    $0x20,%rsp
   140001fd7:	4c 8b 1d 12 57 00 00 	mov    0x5712(%rip),%r11        # 1400076f0 <.refptr.__ImageBase>
   140001fde:	89 cb                	mov    %ecx,%ebx
   140001fe0:	4c 89 d9             	mov    %r11,%rcx
   140001fe3:	e8 08 fe ff ff       	call   140001df0 <_ValidateImageBase>
   140001fe8:	89 c2                	mov    %eax,%edx
   140001fea:	31 c0                	xor    %eax,%eax
   140001fec:	85 d2                	test   %edx,%edx
   140001fee:	74 45                	je     140002035 <__mingw_enum_import_library_names+0x63>
   140001ff0:	49 63 43 3c          	movslq 0x3c(%r11),%rax
   140001ff4:	42 8b 94 18 90 00 00 	mov    0x90(%rax,%r11,1),%edx
   140001ffb:	00 
   140001ffc:	31 c0                	xor    %eax,%eax
   140001ffe:	85 d2                	test   %edx,%edx
   140002000:	74 33                	je     140002035 <__mingw_enum_import_library_names+0x63>
   140002002:	4c 89 d9             	mov    %r11,%rcx
   140002005:	e8 0a fe ff ff       	call   140001e14 <_FindPESection>
   14000200a:	48 85 c0             	test   %rax,%rax
   14000200d:	74 26                	je     140002035 <__mingw_enum_import_library_names+0x63>
   14000200f:	4a 8d 04 1a          	lea    (%rdx,%r11,1),%rax
   140002013:	83 78 04 00          	cmpl   $0x0,0x4(%rax)
   140002017:	75 06                	jne    14000201f <__mingw_enum_import_library_names+0x4d>
   140002019:	83 78 0c 00          	cmpl   $0x0,0xc(%rax)
   14000201d:	74 14                	je     140002033 <__mingw_enum_import_library_names+0x61>
   14000201f:	85 db                	test   %ebx,%ebx
   140002021:	7f 08                	jg     14000202b <__mingw_enum_import_library_names+0x59>
   140002023:	8b 40 0c             	mov    0xc(%rax),%eax
   140002026:	4c 01 d8             	add    %r11,%rax
   140002029:	eb 0a                	jmp    140002035 <__mingw_enum_import_library_names+0x63>
   14000202b:	ff cb                	dec    %ebx
   14000202d:	48 83 c0 14          	add    $0x14,%rax
   140002031:	eb e0                	jmp    140002013 <__mingw_enum_import_library_names+0x41>
   140002033:	31 c0                	xor    %eax,%eax
   140002035:	48 83 c4 20          	add    $0x20,%rsp
   140002039:	5b                   	pop    %rbx
   14000203a:	c3                   	ret
   14000203b:	90                   	nop
   14000203c:	90                   	nop
   14000203d:	90                   	nop
   14000203e:	90                   	nop
   14000203f:	90                   	nop

0000000140002040 <___chkstk_ms>:
   140002040:	51                   	push   %rcx
   140002041:	50                   	push   %rax
   140002042:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002048:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   14000204d:	72 19                	jb     140002068 <___chkstk_ms+0x28>
   14000204f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140002056:	48 83 09 00          	orq    $0x0,(%rcx)
   14000205a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140002060:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002066:	77 e7                	ja     14000204f <___chkstk_ms+0xf>
   140002068:	48 29 c1             	sub    %rax,%rcx
   14000206b:	48 83 09 00          	orq    $0x0,(%rcx)
   14000206f:	58                   	pop    %rax
   140002070:	59                   	pop    %rcx
   140002071:	c3                   	ret
   140002072:	90                   	nop
   140002073:	90                   	nop
   140002074:	90                   	nop
   140002075:	90                   	nop
   140002076:	90                   	nop
   140002077:	90                   	nop
   140002078:	90                   	nop
   140002079:	90                   	nop
   14000207a:	90                   	nop
   14000207b:	90                   	nop
   14000207c:	90                   	nop
   14000207d:	90                   	nop
   14000207e:	90                   	nop
   14000207f:	90                   	nop

0000000140002080 <__mingw_vfprintf>:
   140002080:	56                   	push   %rsi
   140002081:	53                   	push   %rbx
   140002082:	48 83 ec 48          	sub    $0x48,%rsp
   140002086:	4c 89 c6             	mov    %r8,%rsi
   140002089:	48 89 cb             	mov    %rcx,%rbx
   14000208c:	48 89 54 24 68       	mov    %rdx,0x68(%rsp)
   140002091:	e8 5a 33 00 00       	call   1400053f0 <_lock_file>
   140002096:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   14000209b:	45 31 c0             	xor    %r8d,%r8d
   14000209e:	48 89 da             	mov    %rbx,%rdx
   1400020a1:	4c 8b 4c 24 68       	mov    0x68(%rsp),%r9
   1400020a6:	b9 00 60 00 00       	mov    $0x6000,%ecx
   1400020ab:	e8 fb 0f 00 00       	call   1400030ab <__mingw_pformat>
   1400020b0:	48 89 d9             	mov    %rbx,%rcx
   1400020b3:	89 44 24 3c          	mov    %eax,0x3c(%rsp)
   1400020b7:	e8 96 33 00 00       	call   140005452 <_unlock_file>
   1400020bc:	8b 44 24 3c          	mov    0x3c(%rsp),%eax
   1400020c0:	48 83 c4 48          	add    $0x48,%rsp
   1400020c4:	5b                   	pop    %rbx
   1400020c5:	5e                   	pop    %rsi
   1400020c6:	c3                   	ret
   1400020c7:	90                   	nop
   1400020c8:	90                   	nop
   1400020c9:	90                   	nop
   1400020ca:	90                   	nop
   1400020cb:	90                   	nop
   1400020cc:	90                   	nop
   1400020cd:	90                   	nop
   1400020ce:	90                   	nop
   1400020cf:	90                   	nop

00000001400020d0 <__pformat_cvt>:
   1400020d0:	53                   	push   %rbx
   1400020d1:	48 83 ec 70          	sub    $0x70,%rsp
   1400020d5:	db 2a                	fldt   (%rdx)
   1400020d7:	db 7c 24 40          	fstpt  0x40(%rsp)
   1400020db:	4c 8b 5c 24 48       	mov    0x48(%rsp),%r11
   1400020e0:	41 89 ca             	mov    %ecx,%r10d
   1400020e3:	44 89 d9             	mov    %r11d,%ecx
   1400020e6:	66 81 e1 ff 7f       	and    $0x7fff,%cx
   1400020eb:	75 18                	jne    140002105 <__pformat_cvt+0x35>
   1400020ed:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
   1400020f2:	31 c0                	xor    %eax,%eax
   1400020f4:	48 89 d3             	mov    %rdx,%rbx
   1400020f7:	48 c1 eb 20          	shr    $0x20,%rbx
   1400020fb:	09 da                	or     %ebx,%edx
   1400020fd:	74 5c                	je     14000215b <__pformat_cvt+0x8b>
   1400020ff:	85 db                	test   %ebx,%ebx
   140002101:	78 3f                	js     140002142 <__pformat_cvt+0x72>
   140002103:	eb 4c                	jmp    140002151 <__pformat_cvt+0x81>
   140002105:	66 81 f9 ff 7f       	cmp    $0x7fff,%cx
   14000210a:	75 36                	jne    140002142 <__pformat_cvt+0x72>
   14000210c:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140002111:	ba 00 05 00 00       	mov    $0x500,%edx
   140002116:	48 89 c8             	mov    %rcx,%rax
   140002119:	48 c1 e8 20          	shr    $0x20,%rax
   14000211d:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
   140002122:	09 c8                	or     %ecx,%eax
   140002124:	74 05                	je     14000212b <__pformat_cvt+0x5b>
   140002126:	ba 00 01 00 00       	mov    $0x100,%edx
   14000212b:	81 fa 00 01 00 00    	cmp    $0x100,%edx
   140002131:	b8 04 00 00 00       	mov    $0x4,%eax
   140002136:	0f 95 c2             	setne  %dl
   140002139:	0f b6 d2             	movzbl %dl,%edx
   14000213c:	29 d0                	sub    %edx,%eax
   14000213e:	31 d2                	xor    %edx,%edx
   140002140:	eb 19                	jmp    14000215b <__pformat_cvt+0x8b>
   140002142:	66 81 e9 3e 40       	sub    $0x403e,%cx
   140002147:	b8 01 00 00 00       	mov    $0x1,%eax
   14000214c:	0f bf d1             	movswl %cx,%edx
   14000214f:	eb 0a                	jmp    14000215b <__pformat_cvt+0x8b>
   140002151:	b8 02 00 00 00       	mov    $0x2,%eax
   140002156:	ba c3 bf ff ff       	mov    $0xffffbfc3,%edx
   14000215b:	db 6c 24 40          	fldt   0x40(%rsp)
   14000215f:	89 44 24 54          	mov    %eax,0x54(%rsp)
   140002163:	31 c9                	xor    %ecx,%ecx
   140002165:	db 7c 24 60          	fstpt  0x60(%rsp)
   140002169:	83 f8 04             	cmp    $0x4,%eax
   14000216c:	74 09                	je     140002177 <__pformat_cvt+0xa7>
   14000216e:	44 89 d9             	mov    %r11d,%ecx
   140002171:	81 e1 00 80 00 00    	and    $0x8000,%ecx
   140002177:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
   14000217e:	00 
   14000217f:	89 08                	mov    %ecx,(%rax)
   140002181:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   140002186:	48 8d 0d b3 3e 00 00 	lea    0x3eb3(%rip),%rcx        # 140006040 <fpi.0>
   14000218d:	4c 89 4c 24 30       	mov    %r9,0x30(%rsp)
   140002192:	4c 8d 4c 24 54       	lea    0x54(%rsp),%r9
   140002197:	44 89 44 24 28       	mov    %r8d,0x28(%rsp)
   14000219c:	4c 8d 44 24 60       	lea    0x60(%rsp),%r8
   1400021a1:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
   1400021a6:	44 89 54 24 20       	mov    %r10d,0x20(%rsp)
   1400021ab:	e8 70 18 00 00       	call   140003a20 <__gdtoa>
   1400021b0:	48 83 c4 70          	add    $0x70,%rsp
   1400021b4:	5b                   	pop    %rbx
   1400021b5:	c3                   	ret

00000001400021b6 <__pformat_putc>:
   1400021b6:	53                   	push   %rbx
   1400021b7:	48 83 ec 20          	sub    $0x20,%rsp
   1400021bb:	8b 42 08             	mov    0x8(%rdx),%eax
   1400021be:	0f ba e0 0e          	bt     $0xe,%eax
   1400021c2:	48 89 d3             	mov    %rdx,%rbx
   1400021c5:	72 08                	jb     1400021cf <__pformat_putc+0x19>
   1400021c7:	8b 52 24             	mov    0x24(%rdx),%edx
   1400021ca:	39 53 28             	cmp    %edx,0x28(%rbx)
   1400021cd:	7e 17                	jle    1400021e6 <__pformat_putc+0x30>
   1400021cf:	0f ba e0 0d          	bt     $0xd,%eax
   1400021d3:	48 8b 13             	mov    (%rbx),%rdx
   1400021d6:	73 07                	jae    1400021df <__pformat_putc+0x29>
   1400021d8:	e8 e3 37 00 00       	call   1400059c0 <fputc>
   1400021dd:	eb 07                	jmp    1400021e6 <__pformat_putc+0x30>
   1400021df:	48 63 43 24          	movslq 0x24(%rbx),%rax
   1400021e3:	88 0c 02             	mov    %cl,(%rdx,%rax,1)
   1400021e6:	ff 43 24             	incl   0x24(%rbx)
   1400021e9:	48 83 c4 20          	add    $0x20,%rsp
   1400021ed:	5b                   	pop    %rbx
   1400021ee:	c3                   	ret

00000001400021ef <__pformat_wputchars>:
   1400021ef:	41 57                	push   %r15
   1400021f1:	41 56                	push   %r14
   1400021f3:	41 55                	push   %r13
   1400021f5:	41 54                	push   %r12
   1400021f7:	55                   	push   %rbp
   1400021f8:	57                   	push   %rdi
   1400021f9:	56                   	push   %rsi
   1400021fa:	53                   	push   %rbx
   1400021fb:	48 83 ec 48          	sub    $0x48,%rsp
   1400021ff:	4c 8d 6c 24 28       	lea    0x28(%rsp),%r13
   140002204:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   140002209:	4c 89 c3             	mov    %r8,%rbx
   14000220c:	49 89 cc             	mov    %rcx,%r12
   14000220f:	89 d7                	mov    %edx,%edi
   140002211:	4d 89 e8             	mov    %r13,%r8
   140002214:	31 d2                	xor    %edx,%edx
   140002216:	48 89 e9             	mov    %rbp,%rcx
   140002219:	e8 49 33 00 00       	call   140005567 <wcrtomb>
   14000221e:	8b 43 10             	mov    0x10(%rbx),%eax
   140002221:	85 c0                	test   %eax,%eax
   140002223:	78 05                	js     14000222a <__pformat_wputchars+0x3b>
   140002225:	39 c7                	cmp    %eax,%edi
   140002227:	0f 4f f8             	cmovg  %eax,%edi
   14000222a:	8b 43 0c             	mov    0xc(%rbx),%eax
   14000222d:	39 f8                	cmp    %edi,%eax
   14000222f:	7f 09                	jg     14000223a <__pformat_wputchars+0x4b>
   140002231:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
   140002238:	eb 27                	jmp    140002261 <__pformat_wputchars+0x72>
   14000223a:	29 f8                	sub    %edi,%eax
   14000223c:	89 43 0c             	mov    %eax,0xc(%rbx)
   14000223f:	f6 43 09 04          	testb  $0x4,0x9(%rbx)
   140002243:	75 1c                	jne    140002261 <__pformat_wputchars+0x72>
   140002245:	8b 43 0c             	mov    0xc(%rbx),%eax
   140002248:	8d 50 ff             	lea    -0x1(%rax),%edx
   14000224b:	89 53 0c             	mov    %edx,0xc(%rbx)
   14000224e:	85 c0                	test   %eax,%eax
   140002250:	74 0f                	je     140002261 <__pformat_wputchars+0x72>
   140002252:	48 89 da             	mov    %rbx,%rdx
   140002255:	b9 20 00 00 00       	mov    $0x20,%ecx
   14000225a:	e8 57 ff ff ff       	call   1400021b6 <__pformat_putc>
   14000225f:	eb e4                	jmp    140002245 <__pformat_wputchars+0x56>
   140002261:	45 31 ff             	xor    %r15d,%r15d
   140002264:	89 f8                	mov    %edi,%eax
   140002266:	44 29 f8             	sub    %r15d,%eax
   140002269:	85 c0                	test   %eax,%eax
   14000226b:	7e 39                	jle    1400022a6 <__pformat_wputchars+0xb7>
   14000226d:	43 0f b7 14 7c       	movzwl (%r12,%r15,2),%edx
   140002272:	4d 89 e8             	mov    %r13,%r8
   140002275:	48 89 e9             	mov    %rbp,%rcx
   140002278:	e8 ea 32 00 00       	call   140005567 <wcrtomb>
   14000227d:	85 c0                	test   %eax,%eax
   14000227f:	7e 25                	jle    1400022a6 <__pformat_wputchars+0xb7>
   140002281:	89 c0                	mov    %eax,%eax
   140002283:	49 89 ee             	mov    %rbp,%r14
   140002286:	48 8d 74 05 00       	lea    0x0(%rbp,%rax,1),%rsi
   14000228b:	49 39 f6             	cmp    %rsi,%r14
   14000228e:	74 11                	je     1400022a1 <__pformat_wputchars+0xb2>
   140002290:	41 0f be 0e          	movsbl (%r14),%ecx
   140002294:	48 89 da             	mov    %rbx,%rdx
   140002297:	49 ff c6             	inc    %r14
   14000229a:	e8 17 ff ff ff       	call   1400021b6 <__pformat_putc>
   14000229f:	eb ea                	jmp    14000228b <__pformat_wputchars+0x9c>
   1400022a1:	49 ff c7             	inc    %r15
   1400022a4:	eb be                	jmp    140002264 <__pformat_wputchars+0x75>
   1400022a6:	8b 43 0c             	mov    0xc(%rbx),%eax
   1400022a9:	8d 50 ff             	lea    -0x1(%rax),%edx
   1400022ac:	89 53 0c             	mov    %edx,0xc(%rbx)
   1400022af:	85 c0                	test   %eax,%eax
   1400022b1:	7e 0f                	jle    1400022c2 <__pformat_wputchars+0xd3>
   1400022b3:	48 89 da             	mov    %rbx,%rdx
   1400022b6:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400022bb:	e8 f6 fe ff ff       	call   1400021b6 <__pformat_putc>
   1400022c0:	eb e4                	jmp    1400022a6 <__pformat_wputchars+0xb7>
   1400022c2:	48 83 c4 48          	add    $0x48,%rsp
   1400022c6:	5b                   	pop    %rbx
   1400022c7:	5e                   	pop    %rsi
   1400022c8:	5f                   	pop    %rdi
   1400022c9:	5d                   	pop    %rbp
   1400022ca:	41 5c                	pop    %r12
   1400022cc:	41 5d                	pop    %r13
   1400022ce:	41 5e                	pop    %r14
   1400022d0:	41 5f                	pop    %r15
   1400022d2:	c3                   	ret

00000001400022d3 <__pformat_putchars>:
   1400022d3:	55                   	push   %rbp
   1400022d4:	57                   	push   %rdi
   1400022d5:	56                   	push   %rsi
   1400022d6:	53                   	push   %rbx
   1400022d7:	48 83 ec 28          	sub    $0x28,%rsp
   1400022db:	41 8b 40 10          	mov    0x10(%r8),%eax
   1400022df:	48 89 cd             	mov    %rcx,%rbp
   1400022e2:	89 d6                	mov    %edx,%esi
   1400022e4:	4c 89 c3             	mov    %r8,%rbx
   1400022e7:	85 c0                	test   %eax,%eax
   1400022e9:	78 06                	js     1400022f1 <__pformat_putchars+0x1e>
   1400022eb:	39 c6                	cmp    %eax,%esi
   1400022ed:	48 0f 4f f0          	cmovg  %rax,%rsi
   1400022f1:	8b 43 0c             	mov    0xc(%rbx),%eax
   1400022f4:	39 f0                	cmp    %esi,%eax
   1400022f6:	7f 09                	jg     140002301 <__pformat_putchars+0x2e>
   1400022f8:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
   1400022ff:	eb 0b                	jmp    14000230c <__pformat_putchars+0x39>
   140002301:	29 f0                	sub    %esi,%eax
   140002303:	89 43 0c             	mov    %eax,0xc(%rbx)
   140002306:	f6 43 09 04          	testb  $0x4,0x9(%rbx)
   14000230a:	74 04                	je     140002310 <__pformat_putchars+0x3d>
   14000230c:	31 ff                	xor    %edi,%edi
   14000230e:	eb 1c                	jmp    14000232c <__pformat_putchars+0x59>
   140002310:	8b 43 0c             	mov    0xc(%rbx),%eax
   140002313:	8d 50 ff             	lea    -0x1(%rax),%edx
   140002316:	89 53 0c             	mov    %edx,0xc(%rbx)
   140002319:	85 c0                	test   %eax,%eax
   14000231b:	74 ef                	je     14000230c <__pformat_putchars+0x39>
   14000231d:	48 89 da             	mov    %rbx,%rdx
   140002320:	b9 20 00 00 00       	mov    $0x20,%ecx
   140002325:	e8 8c fe ff ff       	call   1400021b6 <__pformat_putc>
   14000232a:	eb e4                	jmp    140002310 <__pformat_putchars+0x3d>
   14000232c:	48 39 fe             	cmp    %rdi,%rsi
   14000232f:	74 12                	je     140002343 <__pformat_putchars+0x70>
   140002331:	0f be 4c 3d 00       	movsbl 0x0(%rbp,%rdi,1),%ecx
   140002336:	48 89 da             	mov    %rbx,%rdx
   140002339:	48 ff c7             	inc    %rdi
   14000233c:	e8 75 fe ff ff       	call   1400021b6 <__pformat_putc>
   140002341:	eb e9                	jmp    14000232c <__pformat_putchars+0x59>
   140002343:	8b 43 0c             	mov    0xc(%rbx),%eax
   140002346:	8d 50 ff             	lea    -0x1(%rax),%edx
   140002349:	89 53 0c             	mov    %edx,0xc(%rbx)
   14000234c:	85 c0                	test   %eax,%eax
   14000234e:	7e 0f                	jle    14000235f <__pformat_putchars+0x8c>
   140002350:	48 89 da             	mov    %rbx,%rdx
   140002353:	b9 20 00 00 00       	mov    $0x20,%ecx
   140002358:	e8 59 fe ff ff       	call   1400021b6 <__pformat_putc>
   14000235d:	eb e4                	jmp    140002343 <__pformat_putchars+0x70>
   14000235f:	48 83 c4 28          	add    $0x28,%rsp
   140002363:	5b                   	pop    %rbx
   140002364:	5e                   	pop    %rsi
   140002365:	5f                   	pop    %rdi
   140002366:	5d                   	pop    %rbp
   140002367:	c3                   	ret

0000000140002368 <__pformat_puts>:
   140002368:	53                   	push   %rbx
   140002369:	48 83 ec 30          	sub    $0x30,%rsp
   14000236d:	48 89 cb             	mov    %rcx,%rbx
   140002370:	49 89 d0             	mov    %rdx,%r8
   140002373:	48 85 c9             	test   %rcx,%rcx
   140002376:	75 07                	jne    14000237f <__pformat_puts+0x17>
   140002378:	48 8d 1d d1 4f 00 00 	lea    0x4fd1(%rip),%rbx        # 140007350 <.rdata>
   14000237f:	49 63 50 10          	movslq 0x10(%r8),%rdx
   140002383:	4c 89 44 24 28       	mov    %r8,0x28(%rsp)
   140002388:	48 89 d9             	mov    %rbx,%rcx
   14000238b:	85 d2                	test   %edx,%edx
   14000238d:	78 07                	js     140002396 <__pformat_puts+0x2e>
   14000238f:	e8 fc 2f 00 00       	call   140005390 <strnlen>
   140002394:	eb 05                	jmp    14000239b <__pformat_puts+0x33>
   140002396:	e8 5d 36 00 00       	call   1400059f8 <strlen>
   14000239b:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
   1400023a0:	89 c2                	mov    %eax,%edx
   1400023a2:	48 89 d9             	mov    %rbx,%rcx
   1400023a5:	48 83 c4 30          	add    $0x30,%rsp
   1400023a9:	5b                   	pop    %rbx
   1400023aa:	e9 24 ff ff ff       	jmp    1400022d3 <__pformat_putchars>

00000001400023af <__pformat_emit_inf_or_nan>:
   1400023af:	48 83 ec 38          	sub    $0x38,%rsp
   1400023b3:	89 c8                	mov    %ecx,%eax
   1400023b5:	41 c7 40 10 ff ff ff 	movl   $0xffffffff,0x10(%r8)
   1400023bc:	ff 
   1400023bd:	41 8b 48 08          	mov    0x8(%r8),%ecx
   1400023c1:	85 c0                	test   %eax,%eax
   1400023c3:	74 04                	je     1400023c9 <__pformat_emit_inf_or_nan+0x1a>
   1400023c5:	b0 2d                	mov    $0x2d,%al
   1400023c7:	eb 08                	jmp    1400023d1 <__pformat_emit_inf_or_nan+0x22>
   1400023c9:	0f ba e1 08          	bt     $0x8,%ecx
   1400023cd:	73 16                	jae    1400023e5 <__pformat_emit_inf_or_nan+0x36>
   1400023cf:	b0 2b                	mov    $0x2b,%al
   1400023d1:	88 44 24 2c          	mov    %al,0x2c(%rsp)
   1400023d5:	48 8d 44 24 2d       	lea    0x2d(%rsp),%rax
   1400023da:	41 89 ca             	mov    %ecx,%r10d
   1400023dd:	31 c9                	xor    %ecx,%ecx
   1400023df:	41 83 e2 20          	and    $0x20,%r10d
   1400023e3:	eb 0e                	jmp    1400023f3 <__pformat_emit_inf_or_nan+0x44>
   1400023e5:	48 8d 44 24 2c       	lea    0x2c(%rsp),%rax
   1400023ea:	f6 c1 40             	test   $0x40,%cl
   1400023ed:	74 eb                	je     1400023da <__pformat_emit_inf_or_nan+0x2b>
   1400023ef:	b0 20                	mov    $0x20,%al
   1400023f1:	eb de                	jmp    1400023d1 <__pformat_emit_inf_or_nan+0x22>
   1400023f3:	44 8a 0c 0a          	mov    (%rdx,%rcx,1),%r9b
   1400023f7:	41 83 e1 df          	and    $0xffffffdf,%r9d
   1400023fb:	45 09 d1             	or     %r10d,%r9d
   1400023fe:	44 88 0c 08          	mov    %r9b,(%rax,%rcx,1)
   140002402:	48 ff c1             	inc    %rcx
   140002405:	48 83 f9 03          	cmp    $0x3,%rcx
   140002409:	75 e8                	jne    1400023f3 <__pformat_emit_inf_or_nan+0x44>
   14000240b:	48 8d 50 03          	lea    0x3(%rax),%rdx
   14000240f:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
   140002414:	29 ca                	sub    %ecx,%edx
   140002416:	e8 b8 fe ff ff       	call   1400022d3 <__pformat_putchars>
   14000241b:	90                   	nop
   14000241c:	48 83 c4 38          	add    $0x38,%rsp
   140002420:	c3                   	ret

0000000140002421 <__pformat_emit_radix_point>:
   140002421:	55                   	push   %rbp
   140002422:	41 56                	push   %r14
   140002424:	41 54                	push   %r12
   140002426:	57                   	push   %rdi
   140002427:	56                   	push   %rsi
   140002428:	53                   	push   %rbx
   140002429:	48 83 ec 48          	sub    $0x48,%rsp
   14000242d:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140002432:	83 79 14 fd          	cmpl   $0xfffffffd,0x14(%rcx)
   140002436:	48 89 cb             	mov    %rcx,%rbx
   140002439:	75 38                	jne    140002473 <__pformat_emit_radix_point+0x52>
   14000243b:	31 d2                	xor    %edx,%edx
   14000243d:	4c 8d 4d f8          	lea    -0x8(%rbp),%r9
   140002441:	4c 89 4d e8          	mov    %r9,-0x18(%rbp)
   140002445:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
   140002449:	e8 8a 35 00 00       	call   1400059d8 <localeconv>
   14000244e:	4c 8b 4d e8          	mov    -0x18(%rbp),%r9
   140002452:	48 8d 4d f6          	lea    -0xa(%rbp),%rcx
   140002456:	41 b8 10 00 00 00    	mov    $0x10,%r8d
   14000245c:	48 8b 10             	mov    (%rax),%rdx
   14000245f:	e8 28 33 00 00       	call   14000578c <mbrtowc>
   140002464:	85 c0                	test   %eax,%eax
   140002466:	7e 08                	jle    140002470 <__pformat_emit_radix_point+0x4f>
   140002468:	66 8b 55 f6          	mov    -0xa(%rbp),%dx
   14000246c:	66 89 53 18          	mov    %dx,0x18(%rbx)
   140002470:	89 43 14             	mov    %eax,0x14(%rbx)
   140002473:	0f b7 53 18          	movzwl 0x18(%rbx),%edx
   140002477:	66 85 d2             	test   %dx,%dx
   14000247a:	74 5f                	je     1400024db <__pformat_emit_radix_point+0xba>
   14000247c:	48 63 43 14          	movslq 0x14(%rbx),%rax
   140002480:	49 89 e6             	mov    %rsp,%r14
   140002483:	48 83 c0 0f          	add    $0xf,%rax
   140002487:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   14000248b:	e8 b0 fb ff ff       	call   140002040 <___chkstk_ms>
   140002490:	31 ff                	xor    %edi,%edi
   140002492:	48 29 c4             	sub    %rax,%rsp
   140002495:	4c 8d 45 f8          	lea    -0x8(%rbp),%r8
   140002499:	31 c0                	xor    %eax,%eax
   14000249b:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
   1400024a0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   1400024a4:	4c 89 e1             	mov    %r12,%rcx
   1400024a7:	e8 bb 30 00 00       	call   140005567 <wcrtomb>
   1400024ac:	89 c6                	mov    %eax,%esi
   1400024ae:	85 c0                	test   %eax,%eax
   1400024b0:	7e 17                	jle    1400024c9 <__pformat_emit_radix_point+0xa8>
   1400024b2:	48 39 fe             	cmp    %rdi,%rsi
   1400024b5:	74 1f                	je     1400024d6 <__pformat_emit_radix_point+0xb5>
   1400024b7:	41 0f be 0c 3c       	movsbl (%r12,%rdi,1),%ecx
   1400024bc:	48 89 da             	mov    %rbx,%rdx
   1400024bf:	48 ff c7             	inc    %rdi
   1400024c2:	e8 ef fc ff ff       	call   1400021b6 <__pformat_putc>
   1400024c7:	eb e9                	jmp    1400024b2 <__pformat_emit_radix_point+0x91>
   1400024c9:	48 89 da             	mov    %rbx,%rdx
   1400024cc:	b9 2e 00 00 00       	mov    $0x2e,%ecx
   1400024d1:	e8 e0 fc ff ff       	call   1400021b6 <__pformat_putc>
   1400024d6:	4c 89 f4             	mov    %r14,%rsp
   1400024d9:	eb 0e                	jmp    1400024e9 <__pformat_emit_radix_point+0xc8>
   1400024db:	48 89 da             	mov    %rbx,%rdx
   1400024de:	b9 2e 00 00 00       	mov    $0x2e,%ecx
   1400024e3:	e8 ce fc ff ff       	call   1400021b6 <__pformat_putc>
   1400024e8:	90                   	nop
   1400024e9:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   1400024ed:	5b                   	pop    %rbx
   1400024ee:	5e                   	pop    %rsi
   1400024ef:	5f                   	pop    %rdi
   1400024f0:	41 5c                	pop    %r12
   1400024f2:	41 5e                	pop    %r14
   1400024f4:	5d                   	pop    %rbp
   1400024f5:	c3                   	ret

00000001400024f6 <__pformat_emit_float>:
   1400024f6:	55                   	push   %rbp
   1400024f7:	57                   	push   %rdi
   1400024f8:	56                   	push   %rsi
   1400024f9:	53                   	push   %rbx
   1400024fa:	48 83 ec 28          	sub    $0x28,%rsp
   1400024fe:	89 cd                	mov    %ecx,%ebp
   140002500:	48 89 d7             	mov    %rdx,%rdi
   140002503:	41 8b 49 0c          	mov    0xc(%r9),%ecx
   140002507:	44 89 c6             	mov    %r8d,%esi
   14000250a:	4c 89 cb             	mov    %r9,%rbx
   14000250d:	45 85 c0             	test   %r8d,%r8d
   140002510:	7e 0a                	jle    14000251c <__pformat_emit_float+0x26>
   140002512:	41 39 c8             	cmp    %ecx,%r8d
   140002515:	7f 20                	jg     140002537 <__pformat_emit_float+0x41>
   140002517:	44 29 c1             	sub    %r8d,%ecx
   14000251a:	eb 14                	jmp    140002530 <__pformat_emit_float+0x3a>
   14000251c:	85 c9                	test   %ecx,%ecx
   14000251e:	7e 04                	jle    140002524 <__pformat_emit_float+0x2e>
   140002520:	ff c9                	dec    %ecx
   140002522:	eb 0c                	jmp    140002530 <__pformat_emit_float+0x3a>
   140002524:	74 0a                	je     140002530 <__pformat_emit_float+0x3a>
   140002526:	41 c7 41 0c ff ff ff 	movl   $0xffffffff,0xc(%r9)
   14000252d:	ff 
   14000252e:	eb 61                	jmp    140002591 <__pformat_emit_float+0x9b>
   140002530:	8b 43 10             	mov    0x10(%rbx),%eax
   140002533:	39 c8                	cmp    %ecx,%eax
   140002535:	7c 0c                	jl     140002543 <__pformat_emit_float+0x4d>
   140002537:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
   14000253e:	83 c9 ff             	or     $0xffffffff,%ecx
   140002541:	eb 16                	jmp    140002559 <__pformat_emit_float+0x63>
   140002543:	29 c1                	sub    %eax,%ecx
   140002545:	83 7b 10 00          	cmpl   $0x0,0x10(%rbx)
   140002549:	89 4b 0c             	mov    %ecx,0xc(%rbx)
   14000254c:	7f 06                	jg     140002554 <__pformat_emit_float+0x5e>
   14000254e:	f6 43 09 08          	testb  $0x8,0x9(%rbx)
   140002552:	74 05                	je     140002559 <__pformat_emit_float+0x63>
   140002554:	ff c9                	dec    %ecx
   140002556:	89 4b 0c             	mov    %ecx,0xc(%rbx)
   140002559:	85 f6                	test   %esi,%esi
   14000255b:	7e 30                	jle    14000258d <__pformat_emit_float+0x97>
   14000255d:	f6 43 09 10          	testb  $0x10,0x9(%rbx)
   140002561:	74 2a                	je     14000258d <__pformat_emit_float+0x97>
   140002563:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
   140002568:	74 23                	je     14000258d <__pformat_emit_float+0x97>
   14000256a:	8d 46 02             	lea    0x2(%rsi),%eax
   14000256d:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   140002573:	99                   	cltd
   140002574:	41 f7 f8             	idiv   %r8d
   140002577:	89 ca                	mov    %ecx,%edx
   140002579:	29 c2                	sub    %eax,%edx
   14000257b:	8d 42 01             	lea    0x1(%rdx),%eax
   14000257e:	39 c1                	cmp    %eax,%ecx
   140002580:	74 0b                	je     14000258d <__pformat_emit_float+0x97>
   140002582:	85 c9                	test   %ecx,%ecx
   140002584:	7e 0b                	jle    140002591 <__pformat_emit_float+0x9b>
   140002586:	ff c9                	dec    %ecx
   140002588:	89 4b 0c             	mov    %ecx,0xc(%rbx)
   14000258b:	eb f1                	jmp    14000257e <__pformat_emit_float+0x88>
   14000258d:	85 c9                	test   %ecx,%ecx
   14000258f:	7f 0e                	jg     14000259f <__pformat_emit_float+0xa9>
   140002591:	85 ed                	test   %ebp,%ebp
   140002593:	74 43                	je     1400025d8 <__pformat_emit_float+0xe2>
   140002595:	48 89 da             	mov    %rbx,%rdx
   140002598:	b9 2d 00 00 00       	mov    $0x2d,%ecx
   14000259d:	eb 58                	jmp    1400025f7 <__pformat_emit_float+0x101>
   14000259f:	85 ed                	test   %ebp,%ebp
   1400025a1:	75 10                	jne    1400025b3 <__pformat_emit_float+0xbd>
   1400025a3:	66 f7 43 08 c0 01    	testw  $0x1c0,0x8(%rbx)
   1400025a9:	75 08                	jne    1400025b3 <__pformat_emit_float+0xbd>
   1400025ab:	f6 43 09 06          	testb  $0x6,0x9(%rbx)
   1400025af:	74 0b                	je     1400025bc <__pformat_emit_float+0xc6>
   1400025b1:	eb de                	jmp    140002591 <__pformat_emit_float+0x9b>
   1400025b3:	ff c9                	dec    %ecx
   1400025b5:	89 4b 0c             	mov    %ecx,0xc(%rbx)
   1400025b8:	75 f1                	jne    1400025ab <__pformat_emit_float+0xb5>
   1400025ba:	eb d5                	jmp    140002591 <__pformat_emit_float+0x9b>
   1400025bc:	8b 43 0c             	mov    0xc(%rbx),%eax
   1400025bf:	8d 50 ff             	lea    -0x1(%rax),%edx
   1400025c2:	89 53 0c             	mov    %edx,0xc(%rbx)
   1400025c5:	85 c0                	test   %eax,%eax
   1400025c7:	7e c8                	jle    140002591 <__pformat_emit_float+0x9b>
   1400025c9:	48 89 da             	mov    %rbx,%rdx
   1400025cc:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400025d1:	e8 e0 fb ff ff       	call   1400021b6 <__pformat_putc>
   1400025d6:	eb e4                	jmp    1400025bc <__pformat_emit_float+0xc6>
   1400025d8:	8b 43 08             	mov    0x8(%rbx),%eax
   1400025db:	0f ba e0 08          	bt     $0x8,%eax
   1400025df:	73 0a                	jae    1400025eb <__pformat_emit_float+0xf5>
   1400025e1:	48 89 da             	mov    %rbx,%rdx
   1400025e4:	b9 2b 00 00 00       	mov    $0x2b,%ecx
   1400025e9:	eb 0c                	jmp    1400025f7 <__pformat_emit_float+0x101>
   1400025eb:	a8 40                	test   $0x40,%al
   1400025ed:	74 0d                	je     1400025fc <__pformat_emit_float+0x106>
   1400025ef:	48 89 da             	mov    %rbx,%rdx
   1400025f2:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400025f7:	e8 ba fb ff ff       	call   1400021b6 <__pformat_putc>
   1400025fc:	83 7b 0c 00          	cmpl   $0x0,0xc(%rbx)
   140002600:	7f 0b                	jg     14000260d <__pformat_emit_float+0x117>
   140002602:	bd 03 00 00 00       	mov    $0x3,%ebp
   140002607:	85 f6                	test   %esi,%esi
   140002609:	7f 3f                	jg     14000264a <__pformat_emit_float+0x154>
   14000260b:	eb 73                	jmp    140002680 <__pformat_emit_float+0x18a>
   14000260d:	8b 43 08             	mov    0x8(%rbx),%eax
   140002610:	25 00 06 00 00       	and    $0x600,%eax
   140002615:	3d 00 02 00 00       	cmp    $0x200,%eax
   14000261a:	75 e6                	jne    140002602 <__pformat_emit_float+0x10c>
   14000261c:	8b 43 0c             	mov    0xc(%rbx),%eax
   14000261f:	8d 50 ff             	lea    -0x1(%rax),%edx
   140002622:	89 53 0c             	mov    %edx,0xc(%rbx)
   140002625:	85 c0                	test   %eax,%eax
   140002627:	7e d9                	jle    140002602 <__pformat_emit_float+0x10c>
   140002629:	48 89 da             	mov    %rbx,%rdx
   14000262c:	b9 30 00 00 00       	mov    $0x30,%ecx
   140002631:	e8 80 fb ff ff       	call   1400021b6 <__pformat_putc>
   140002636:	eb e4                	jmp    14000261c <__pformat_emit_float+0x126>
   140002638:	48 89 da             	mov    %rbx,%rdx
   14000263b:	e8 76 fb ff ff       	call   1400021b6 <__pformat_putc>
   140002640:	ff ce                	dec    %esi
   140002642:	74 49                	je     14000268d <__pformat_emit_float+0x197>
   140002644:	f6 43 09 10          	testb  $0x10,0x9(%rbx)
   140002648:	75 13                	jne    14000265d <__pformat_emit_float+0x167>
   14000264a:	8a 07                	mov    (%rdi),%al
   14000264c:	b9 30 00 00 00       	mov    $0x30,%ecx
   140002651:	84 c0                	test   %al,%al
   140002653:	74 e3                	je     140002638 <__pformat_emit_float+0x142>
   140002655:	48 ff c7             	inc    %rdi
   140002658:	0f be c8             	movsbl %al,%ecx
   14000265b:	eb db                	jmp    140002638 <__pformat_emit_float+0x142>
   14000265d:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
   140002662:	74 e6                	je     14000264a <__pformat_emit_float+0x154>
   140002664:	89 f0                	mov    %esi,%eax
   140002666:	99                   	cltd
   140002667:	f7 fd                	idiv   %ebp
   140002669:	85 d2                	test   %edx,%edx
   14000266b:	75 dd                	jne    14000264a <__pformat_emit_float+0x154>
   14000266d:	48 8d 4b 20          	lea    0x20(%rbx),%rcx
   140002671:	49 89 d8             	mov    %rbx,%r8
   140002674:	ba 01 00 00 00       	mov    $0x1,%edx
   140002679:	e8 71 fb ff ff       	call   1400021ef <__pformat_wputchars>
   14000267e:	eb ca                	jmp    14000264a <__pformat_emit_float+0x154>
   140002680:	48 89 da             	mov    %rbx,%rdx
   140002683:	b9 30 00 00 00       	mov    $0x30,%ecx
   140002688:	e8 29 fb ff ff       	call   1400021b6 <__pformat_putc>
   14000268d:	83 7b 10 00          	cmpl   $0x0,0x10(%rbx)
   140002691:	7f 06                	jg     140002699 <__pformat_emit_float+0x1a3>
   140002693:	f6 43 09 08          	testb  $0x8,0x9(%rbx)
   140002697:	74 08                	je     1400026a1 <__pformat_emit_float+0x1ab>
   140002699:	48 89 d9             	mov    %rbx,%rcx
   14000269c:	e8 80 fd ff ff       	call   140002421 <__pformat_emit_radix_point>
   1400026a1:	85 f6                	test   %esi,%esi
   1400026a3:	74 2f                	je     1400026d4 <__pformat_emit_float+0x1de>
   1400026a5:	01 73 10             	add    %esi,0x10(%rbx)
   1400026a8:	48 89 da             	mov    %rbx,%rdx
   1400026ab:	b9 30 00 00 00       	mov    $0x30,%ecx
   1400026b0:	e8 01 fb ff ff       	call   1400021b6 <__pformat_putc>
   1400026b5:	ff c6                	inc    %esi
   1400026b7:	75 ef                	jne    1400026a8 <__pformat_emit_float+0x1b2>
   1400026b9:	eb 19                	jmp    1400026d4 <__pformat_emit_float+0x1de>
   1400026bb:	8a 07                	mov    (%rdi),%al
   1400026bd:	b9 30 00 00 00       	mov    $0x30,%ecx
   1400026c2:	84 c0                	test   %al,%al
   1400026c4:	74 06                	je     1400026cc <__pformat_emit_float+0x1d6>
   1400026c6:	48 ff c7             	inc    %rdi
   1400026c9:	0f be c8             	movsbl %al,%ecx
   1400026cc:	48 89 da             	mov    %rbx,%rdx
   1400026cf:	e8 e2 fa ff ff       	call   1400021b6 <__pformat_putc>
   1400026d4:	8b 43 10             	mov    0x10(%rbx),%eax
   1400026d7:	8d 50 ff             	lea    -0x1(%rax),%edx
   1400026da:	89 53 10             	mov    %edx,0x10(%rbx)
   1400026dd:	85 c0                	test   %eax,%eax
   1400026df:	7f da                	jg     1400026bb <__pformat_emit_float+0x1c5>
   1400026e1:	48 83 c4 28          	add    $0x28,%rsp
   1400026e5:	5b                   	pop    %rbx
   1400026e6:	5e                   	pop    %rsi
   1400026e7:	5f                   	pop    %rdi
   1400026e8:	5d                   	pop    %rbp
   1400026e9:	c3                   	ret

00000001400026ea <__pformat_float>:
   1400026ea:	56                   	push   %rsi
   1400026eb:	53                   	push   %rbx
   1400026ec:	48 83 ec 58          	sub    $0x58,%rsp
   1400026f0:	44 8b 42 10          	mov    0x10(%rdx),%r8d
   1400026f4:	db 29                	fldt   (%rcx)
   1400026f6:	48 89 d3             	mov    %rdx,%rbx
   1400026f9:	45 85 c0             	test   %r8d,%r8d
   1400026fc:	79 0d                	jns    14000270b <__pformat_float+0x21>
   1400026fe:	c7 42 10 06 00 00 00 	movl   $0x6,0x10(%rdx)
   140002705:	41 b8 06 00 00 00    	mov    $0x6,%r8d
   14000270b:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
   140002710:	b9 03 00 00 00       	mov    $0x3,%ecx
   140002715:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
   14000271a:	db 7c 24 30          	fstpt  0x30(%rsp)
   14000271e:	4c 8d 4c 24 4c       	lea    0x4c(%rsp),%r9
   140002723:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140002728:	e8 a3 f9 ff ff       	call   1400020d0 <__pformat_cvt>
   14000272d:	44 8b 44 24 4c       	mov    0x4c(%rsp),%r8d
   140002732:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   140002736:	48 89 c6             	mov    %rax,%rsi
   140002739:	41 81 f8 00 80 ff ff 	cmp    $0xffff8000,%r8d
   140002740:	75 0d                	jne    14000274f <__pformat_float+0x65>
   140002742:	49 89 d8             	mov    %rbx,%r8
   140002745:	48 89 c2             	mov    %rax,%rdx
   140002748:	e8 62 fc ff ff       	call   1400023af <__pformat_emit_inf_or_nan>
   14000274d:	eb 27                	jmp    140002776 <__pformat_float+0x8c>
   14000274f:	49 89 d9             	mov    %rbx,%r9
   140002752:	48 89 c2             	mov    %rax,%rdx
   140002755:	e8 9c fd ff ff       	call   1400024f6 <__pformat_emit_float>
   14000275a:	8b 43 0c             	mov    0xc(%rbx),%eax
   14000275d:	8d 50 ff             	lea    -0x1(%rax),%edx
   140002760:	89 53 0c             	mov    %edx,0xc(%rbx)
   140002763:	85 c0                	test   %eax,%eax
   140002765:	7e 0f                	jle    140002776 <__pformat_float+0x8c>
   140002767:	48 89 da             	mov    %rbx,%rdx
   14000276a:	b9 20 00 00 00       	mov    $0x20,%ecx
   14000276f:	e8 42 fa ff ff       	call   1400021b6 <__pformat_putc>
   140002774:	eb e4                	jmp    14000275a <__pformat_float+0x70>
   140002776:	48 89 f1             	mov    %rsi,%rcx
   140002779:	e8 49 11 00 00       	call   1400038c7 <__freedtoa>
   14000277e:	90                   	nop
   14000277f:	48 83 c4 58          	add    $0x58,%rsp
   140002783:	5b                   	pop    %rbx
   140002784:	5e                   	pop    %rsi
   140002785:	c3                   	ret

0000000140002786 <__pformat_xint.isra.0>:
   140002786:	55                   	push   %rbp
   140002787:	41 56                	push   %r14
   140002789:	41 55                	push   %r13
   14000278b:	41 54                	push   %r12
   14000278d:	57                   	push   %rdi
   14000278e:	56                   	push   %rsi
   14000278f:	53                   	push   %rbx
   140002790:	48 83 ec 20          	sub    $0x20,%rsp
   140002794:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   140002799:	41 89 c9             	mov    %ecx,%r9d
   14000279c:	49 89 d2             	mov    %rdx,%r10
   14000279f:	4c 89 c7             	mov    %r8,%rdi
   1400027a2:	b9 04 00 00 00       	mov    $0x4,%ecx
   1400027a7:	41 83 f9 6f          	cmp    $0x6f,%r9d
   1400027ab:	75 05                	jne    1400027b2 <__pformat_xint.isra.0+0x2c>
   1400027ad:	b9 03 00 00 00       	mov    $0x3,%ecx
   1400027b2:	4c 63 c1             	movslq %ecx,%r8
   1400027b5:	31 d2                	xor    %edx,%edx
   1400027b7:	44 8b 5f 10          	mov    0x10(%rdi),%r11d
   1400027bb:	44 8b 67 08          	mov    0x8(%rdi),%r12d
   1400027bf:	49 8d 40 3f          	lea    0x3f(%r8),%rax
   1400027c3:	49 f7 f0             	div    %r8
   1400027c6:	31 d2                	xor    %edx,%edx
   1400027c8:	45 85 db             	test   %r11d,%r11d
   1400027cb:	41 0f 49 d3          	cmovns %r11d,%edx
   1400027cf:	41 0f ba e4 0c       	bt     $0xc,%r12d
   1400027d4:	44 8d 44 02 02       	lea    0x2(%rdx,%rax,1),%r8d
   1400027d9:	73 15                	jae    1400027f0 <__pformat_xint.isra.0+0x6a>
   1400027db:	66 83 7f 20 00       	cmpw   $0x0,0x20(%rdi)
   1400027e0:	74 0e                	je     1400027f0 <__pformat_xint.isra.0+0x6a>
   1400027e2:	44 89 c0             	mov    %r8d,%eax
   1400027e5:	bb 03 00 00 00       	mov    $0x3,%ebx
   1400027ea:	99                   	cltd
   1400027eb:	f7 fb                	idiv   %ebx
   1400027ed:	41 01 c0             	add    %eax,%r8d
   1400027f0:	48 63 77 0c          	movslq 0xc(%rdi),%rsi
   1400027f4:	49 63 c0             	movslq %r8d,%rax
   1400027f7:	44 39 c6             	cmp    %r8d,%esi
   1400027fa:	48 0f 4d c6          	cmovge %rsi,%rax
   1400027fe:	48 83 c0 0f          	add    $0xf,%rax
   140002802:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140002806:	e8 35 f8 ff ff       	call   140002040 <___chkstk_ms>
   14000280b:	ba 0f 00 00 00       	mov    $0xf,%edx
   140002810:	48 29 c4             	sub    %rax,%rsp
   140002813:	4c 8d 6c 24 20       	lea    0x20(%rsp),%r13
   140002818:	41 83 f9 6f          	cmp    $0x6f,%r9d
   14000281c:	75 05                	jne    140002823 <__pformat_xint.isra.0+0x9d>
   14000281e:	ba 07 00 00 00       	mov    $0x7,%edx
   140002823:	45 89 c8             	mov    %r9d,%r8d
   140002826:	4c 89 eb             	mov    %r13,%rbx
   140002829:	41 83 e0 20          	and    $0x20,%r8d
   14000282d:	4d 85 d2             	test   %r10,%r10
   140002830:	74 20                	je     140002852 <__pformat_xint.isra.0+0xcc>
   140002832:	45 89 d6             	mov    %r10d,%r14d
   140002835:	48 ff c3             	inc    %rbx
   140002838:	41 21 d6             	and    %edx,%r14d
   14000283b:	41 8d 46 30          	lea    0x30(%r14),%eax
   14000283f:	3c 39                	cmp    $0x39,%al
   140002841:	76 07                	jbe    14000284a <__pformat_xint.isra.0+0xc4>
   140002843:	41 8d 46 37          	lea    0x37(%r14),%eax
   140002847:	44 09 c0             	or     %r8d,%eax
   14000284a:	88 43 ff             	mov    %al,-0x1(%rbx)
   14000284d:	49 d3 ea             	shr    %cl,%r10
   140002850:	eb db                	jmp    14000282d <__pformat_xint.isra.0+0xa7>
   140002852:	49 39 dd             	cmp    %rbx,%r13
   140002855:	75 0b                	jne    140002862 <__pformat_xint.isra.0+0xdc>
   140002857:	41 81 e4 ff f7 ff ff 	and    $0xfffff7ff,%r12d
   14000285e:	44 89 67 08          	mov    %r12d,0x8(%rdi)
   140002862:	45 85 db             	test   %r11d,%r11d
   140002865:	7e 24                	jle    14000288b <__pformat_xint.isra.0+0x105>
   140002867:	48 89 da             	mov    %rbx,%rdx
   14000286a:	44 89 d8             	mov    %r11d,%eax
   14000286d:	4c 29 ea             	sub    %r13,%rdx
   140002870:	29 d0                	sub    %edx,%eax
   140002872:	85 c0                	test   %eax,%eax
   140002874:	7e 15                	jle    14000288b <__pformat_xint.isra.0+0x105>
   140002876:	89 c2                	mov    %eax,%edx
   140002878:	31 c0                	xor    %eax,%eax
   14000287a:	c6 04 03 30          	movb   $0x30,(%rbx,%rax,1)
   14000287e:	48 ff c0             	inc    %rax
   140002881:	48 39 d0             	cmp    %rdx,%rax
   140002884:	75 f4                	jne    14000287a <__pformat_xint.isra.0+0xf4>
   140002886:	48 01 c3             	add    %rax,%rbx
   140002889:	eb 12                	jmp    14000289d <__pformat_xint.isra.0+0x117>
   14000288b:	41 83 f9 6f          	cmp    $0x6f,%r9d
   14000288f:	75 0c                	jne    14000289d <__pformat_xint.isra.0+0x117>
   140002891:	f6 47 09 08          	testb  $0x8,0x9(%rdi)
   140002895:	74 06                	je     14000289d <__pformat_xint.isra.0+0x117>
   140002897:	c6 03 30             	movb   $0x30,(%rbx)
   14000289a:	48 ff c3             	inc    %rbx
   14000289d:	49 39 dd             	cmp    %rbx,%r13
   1400028a0:	75 0b                	jne    1400028ad <__pformat_xint.isra.0+0x127>
   1400028a2:	45 85 db             	test   %r11d,%r11d
   1400028a5:	74 06                	je     1400028ad <__pformat_xint.isra.0+0x127>
   1400028a7:	c6 03 30             	movb   $0x30,(%rbx)
   1400028aa:	48 ff c3             	inc    %rbx
   1400028ad:	48 89 d8             	mov    %rbx,%rax
   1400028b0:	4c 29 e8             	sub    %r13,%rax
   1400028b3:	39 f0                	cmp    %esi,%eax
   1400028b5:	7c 09                	jl     1400028c0 <__pformat_xint.isra.0+0x13a>
   1400028b7:	c7 47 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rdi)
   1400028be:	eb 43                	jmp    140002903 <__pformat_xint.isra.0+0x17d>
   1400028c0:	29 c6                	sub    %eax,%esi
   1400028c2:	8b 47 08             	mov    0x8(%rdi),%eax
   1400028c5:	89 77 0c             	mov    %esi,0xc(%rdi)
   1400028c8:	41 83 f9 6f          	cmp    $0x6f,%r9d
   1400028cc:	0f 84 9c 00 00 00    	je     14000296e <__pformat_xint.isra.0+0x1e8>
   1400028d2:	0f ba e0 0b          	bt     $0xb,%eax
   1400028d6:	73 07                	jae    1400028df <__pformat_xint.isra.0+0x159>
   1400028d8:	83 ee 02             	sub    $0x2,%esi
   1400028db:	85 f6                	test   %esi,%esi
   1400028dd:	7e 2d                	jle    14000290c <__pformat_xint.isra.0+0x186>
   1400028df:	45 85 db             	test   %r11d,%r11d
   1400028e2:	79 28                	jns    14000290c <__pformat_xint.isra.0+0x186>
   1400028e4:	25 00 06 00 00       	and    $0x600,%eax
   1400028e9:	3d 00 02 00 00       	cmp    $0x200,%eax
   1400028ee:	75 76                	jne    140002966 <__pformat_xint.isra.0+0x1e0>
   1400028f0:	48 63 f6             	movslq %esi,%rsi
   1400028f3:	42 c6 04 13 30       	movb   $0x30,(%rbx,%r10,1)
   1400028f8:	49 ff c2             	inc    %r10
   1400028fb:	49 39 f2             	cmp    %rsi,%r10
   1400028fe:	75 f3                	jne    1400028f3 <__pformat_xint.isra.0+0x16d>
   140002900:	4c 01 d3             	add    %r10,%rbx
   140002903:	83 ce ff             	or     $0xffffffff,%esi
   140002906:	41 83 f9 6f          	cmp    $0x6f,%r9d
   14000290a:	74 2f                	je     14000293b <__pformat_xint.isra.0+0x1b5>
   14000290c:	f6 47 09 08          	testb  $0x8,0x9(%rdi)
   140002910:	74 0b                	je     14000291d <__pformat_xint.isra.0+0x197>
   140002912:	44 88 0b             	mov    %r9b,(%rbx)
   140002915:	48 83 c3 02          	add    $0x2,%rbx
   140002919:	c6 43 ff 30          	movb   $0x30,-0x1(%rbx)
   14000291d:	85 f6                	test   %esi,%esi
   14000291f:	7e 1a                	jle    14000293b <__pformat_xint.isra.0+0x1b5>
   140002921:	f6 47 09 04          	testb  $0x4,0x9(%rdi)
   140002925:	75 14                	jne    14000293b <__pformat_xint.isra.0+0x1b5>
   140002927:	83 ee 01             	sub    $0x1,%esi
   14000292a:	72 0f                	jb     14000293b <__pformat_xint.isra.0+0x1b5>
   14000292c:	48 89 fa             	mov    %rdi,%rdx
   14000292f:	b9 20 00 00 00       	mov    $0x20,%ecx
   140002934:	e8 7d f8 ff ff       	call   1400021b6 <__pformat_putc>
   140002939:	eb ec                	jmp    140002927 <__pformat_xint.isra.0+0x1a1>
   14000293b:	49 39 dd             	cmp    %rbx,%r13
   14000293e:	73 11                	jae    140002951 <__pformat_xint.isra.0+0x1cb>
   140002940:	0f be 4b ff          	movsbl -0x1(%rbx),%ecx
   140002944:	48 89 fa             	mov    %rdi,%rdx
   140002947:	48 ff cb             	dec    %rbx
   14000294a:	e8 67 f8 ff ff       	call   1400021b6 <__pformat_putc>
   14000294f:	eb ea                	jmp    14000293b <__pformat_xint.isra.0+0x1b5>
   140002951:	85 f6                	test   %esi,%esi
   140002953:	7e 23                	jle    140002978 <__pformat_xint.isra.0+0x1f2>
   140002955:	48 89 fa             	mov    %rdi,%rdx
   140002958:	b9 20 00 00 00       	mov    $0x20,%ecx
   14000295d:	ff ce                	dec    %esi
   14000295f:	e8 52 f8 ff ff       	call   1400021b6 <__pformat_putc>
   140002964:	eb eb                	jmp    140002951 <__pformat_xint.isra.0+0x1cb>
   140002966:	41 83 f9 6f          	cmp    $0x6f,%r9d
   14000296a:	75 a0                	jne    14000290c <__pformat_xint.isra.0+0x186>
   14000296c:	eb b3                	jmp    140002921 <__pformat_xint.isra.0+0x19b>
   14000296e:	45 85 db             	test   %r11d,%r11d
   140002971:	79 ae                	jns    140002921 <__pformat_xint.isra.0+0x19b>
   140002973:	e9 6c ff ff ff       	jmp    1400028e4 <__pformat_xint.isra.0+0x15e>
   140002978:	48 89 ec             	mov    %rbp,%rsp
   14000297b:	5b                   	pop    %rbx
   14000297c:	5e                   	pop    %rsi
   14000297d:	5f                   	pop    %rdi
   14000297e:	41 5c                	pop    %r12
   140002980:	41 5d                	pop    %r13
   140002982:	41 5e                	pop    %r14
   140002984:	5d                   	pop    %rbp
   140002985:	c3                   	ret

0000000140002986 <__pformat_int.isra.0>:
   140002986:	55                   	push   %rbp
   140002987:	41 55                	push   %r13
   140002989:	41 54                	push   %r12
   14000298b:	57                   	push   %rdi
   14000298c:	56                   	push   %rsi
   14000298d:	53                   	push   %rbx
   14000298e:	48 83 ec 28          	sub    $0x28,%rsp
   140002992:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   140002997:	44 8b 4a 10          	mov    0x10(%rdx),%r9d
   14000299b:	44 8b 5a 08          	mov    0x8(%rdx),%r11d
   14000299f:	49 89 c8             	mov    %rcx,%r8
   1400029a2:	31 c9                	xor    %ecx,%ecx
   1400029a4:	45 85 c9             	test   %r9d,%r9d
   1400029a7:	48 89 d6             	mov    %rdx,%rsi
   1400029aa:	41 0f 49 c9          	cmovns %r9d,%ecx
   1400029ae:	83 c1 17             	add    $0x17,%ecx
   1400029b1:	41 0f ba e3 0c       	bt     $0xc,%r11d
   1400029b6:	73 15                	jae    1400029cd <__pformat_int.isra.0+0x47>
   1400029b8:	66 83 7a 20 00       	cmpw   $0x0,0x20(%rdx)
   1400029bd:	74 0e                	je     1400029cd <__pformat_int.isra.0+0x47>
   1400029bf:	89 c8                	mov    %ecx,%eax
   1400029c1:	41 ba 03 00 00 00    	mov    $0x3,%r10d
   1400029c7:	99                   	cltd
   1400029c8:	41 f7 fa             	idiv   %r10d
   1400029cb:	01 c1                	add    %eax,%ecx
   1400029cd:	44 8b 56 0c          	mov    0xc(%rsi),%r10d
   1400029d1:	41 39 ca             	cmp    %ecx,%r10d
   1400029d4:	41 0f 4d ca          	cmovge %r10d,%ecx
   1400029d8:	48 63 c9             	movslq %ecx,%rcx
   1400029db:	48 8d 41 0f          	lea    0xf(%rcx),%rax
   1400029df:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   1400029e3:	e8 58 f6 ff ff       	call   140002040 <___chkstk_ms>
   1400029e8:	48 29 c4             	sub    %rax,%rsp
   1400029eb:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
   1400029f0:	41 f6 c3 80          	test   $0x80,%r11b
   1400029f4:	74 08                	je     1400029fe <__pformat_int.isra.0+0x78>
   1400029f6:	4d 85 c0             	test   %r8,%r8
   1400029f9:	79 1d                	jns    140002a18 <__pformat_int.isra.0+0x92>
   1400029fb:	49 f7 d8             	neg    %r8
   1400029fe:	45 89 dd             	mov    %r11d,%r13d
   140002a01:	48 89 fb             	mov    %rdi,%rbx
   140002a04:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002a09:	41 bc 0a 00 00 00    	mov    $0xa,%r12d
   140002a0f:	41 81 e5 00 10 00 00 	and    $0x1000,%r13d
   140002a16:	eb 23                	jmp    140002a3b <__pformat_int.isra.0+0xb5>
   140002a18:	41 80 e3 7f          	and    $0x7f,%r11b
   140002a1c:	44 89 5e 08          	mov    %r11d,0x8(%rsi)
   140002a20:	eb dc                	jmp    1400029fe <__pformat_int.isra.0+0x78>
   140002a22:	48 39 df             	cmp    %rbx,%rdi
   140002a25:	75 1e                	jne    140002a45 <__pformat_int.isra.0+0xbf>
   140002a27:	4c 89 c0             	mov    %r8,%rax
   140002a2a:	31 d2                	xor    %edx,%edx
   140002a2c:	48 ff c3             	inc    %rbx
   140002a2f:	49 f7 f4             	div    %r12
   140002a32:	83 c2 30             	add    $0x30,%edx
   140002a35:	49 89 c0             	mov    %rax,%r8
   140002a38:	88 53 ff             	mov    %dl,-0x1(%rbx)
   140002a3b:	4c 89 c2             	mov    %r8,%rdx
   140002a3e:	4d 85 c0             	test   %r8,%r8
   140002a41:	75 df                	jne    140002a22 <__pformat_int.isra.0+0x9c>
   140002a43:	eb 25                	jmp    140002a6a <__pformat_int.isra.0+0xe4>
   140002a45:	45 85 ed             	test   %r13d,%r13d
   140002a48:	74 dd                	je     140002a27 <__pformat_int.isra.0+0xa1>
   140002a4a:	66 83 7e 20 00       	cmpw   $0x0,0x20(%rsi)
   140002a4f:	74 d6                	je     140002a27 <__pformat_int.isra.0+0xa1>
   140002a51:	48 89 d8             	mov    %rbx,%rax
   140002a54:	48 29 f8             	sub    %rdi,%rax
   140002a57:	48 99                	cqto
   140002a59:	48 f7 f9             	idiv   %rcx
   140002a5c:	48 83 fa 03          	cmp    $0x3,%rdx
   140002a60:	75 c5                	jne    140002a27 <__pformat_int.isra.0+0xa1>
   140002a62:	c6 03 2c             	movb   $0x2c,(%rbx)
   140002a65:	48 ff c3             	inc    %rbx
   140002a68:	eb bd                	jmp    140002a27 <__pformat_int.isra.0+0xa1>
   140002a6a:	45 85 c9             	test   %r9d,%r9d
   140002a6d:	7e 22                	jle    140002a91 <__pformat_int.isra.0+0x10b>
   140002a6f:	48 89 d9             	mov    %rbx,%rcx
   140002a72:	44 89 c8             	mov    %r9d,%eax
   140002a75:	48 29 f9             	sub    %rdi,%rcx
   140002a78:	29 c8                	sub    %ecx,%eax
   140002a7a:	85 c0                	test   %eax,%eax
   140002a7c:	7e 13                	jle    140002a91 <__pformat_int.isra.0+0x10b>
   140002a7e:	89 c1                	mov    %eax,%ecx
   140002a80:	31 c0                	xor    %eax,%eax
   140002a82:	c6 04 03 30          	movb   $0x30,(%rbx,%rax,1)
   140002a86:	48 ff c0             	inc    %rax
   140002a89:	48 39 c8             	cmp    %rcx,%rax
   140002a8c:	75 f4                	jne    140002a82 <__pformat_int.isra.0+0xfc>
   140002a8e:	48 01 c3             	add    %rax,%rbx
   140002a91:	48 39 df             	cmp    %rbx,%rdi
   140002a94:	75 0b                	jne    140002aa1 <__pformat_int.isra.0+0x11b>
   140002a96:	45 85 c9             	test   %r9d,%r9d
   140002a99:	74 06                	je     140002aa1 <__pformat_int.isra.0+0x11b>
   140002a9b:	c6 03 30             	movb   $0x30,(%rbx)
   140002a9e:	48 ff c3             	inc    %rbx
   140002aa1:	45 85 d2             	test   %r10d,%r10d
   140002aa4:	0f 8e 83 00 00 00    	jle    140002b2d <__pformat_int.isra.0+0x1a7>
   140002aaa:	48 89 d8             	mov    %rbx,%rax
   140002aad:	48 29 f8             	sub    %rdi,%rax
   140002ab0:	41 29 c2             	sub    %eax,%r10d
   140002ab3:	44 89 56 0c          	mov    %r10d,0xc(%rsi)
   140002ab7:	45 85 d2             	test   %r10d,%r10d
   140002aba:	7e 71                	jle    140002b2d <__pformat_int.isra.0+0x1a7>
   140002abc:	41 f7 c3 c0 01 00 00 	test   $0x1c0,%r11d
   140002ac3:	74 07                	je     140002acc <__pformat_int.isra.0+0x146>
   140002ac5:	41 ff ca             	dec    %r10d
   140002ac8:	44 89 56 0c          	mov    %r10d,0xc(%rsi)
   140002acc:	45 85 c9             	test   %r9d,%r9d
   140002acf:	79 39                	jns    140002b0a <__pformat_int.isra.0+0x184>
   140002ad1:	44 89 d8             	mov    %r11d,%eax
   140002ad4:	25 00 06 00 00       	and    $0x600,%eax
   140002ad9:	3d 00 02 00 00       	cmp    $0x200,%eax
   140002ade:	75 2a                	jne    140002b0a <__pformat_int.isra.0+0x184>
   140002ae0:	8b 46 0c             	mov    0xc(%rsi),%eax
   140002ae3:	89 c1                	mov    %eax,%ecx
   140002ae5:	29 d1                	sub    %edx,%ecx
   140002ae7:	85 c9                	test   %ecx,%ecx
   140002ae9:	7e 09                	jle    140002af4 <__pformat_int.isra.0+0x16e>
   140002aeb:	c6 04 13 30          	movb   $0x30,(%rbx,%rdx,1)
   140002aef:	48 ff c2             	inc    %rdx
   140002af2:	eb ef                	jmp    140002ae3 <__pformat_int.isra.0+0x15d>
   140002af4:	31 d2                	xor    %edx,%edx
   140002af6:	85 c0                	test   %eax,%eax
   140002af8:	0f 49 d0             	cmovns %eax,%edx
   140002afb:	ff c8                	dec    %eax
   140002afd:	48 63 ca             	movslq %edx,%rcx
   140002b00:	29 d0                	sub    %edx,%eax
   140002b02:	89 46 0c             	mov    %eax,0xc(%rsi)
   140002b05:	48 01 cb             	add    %rcx,%rbx
   140002b08:	eb 23                	jmp    140002b2d <__pformat_int.isra.0+0x1a7>
   140002b0a:	41 0f ba e3 0a       	bt     $0xa,%r11d
   140002b0f:	72 1c                	jb     140002b2d <__pformat_int.isra.0+0x1a7>
   140002b11:	8b 46 0c             	mov    0xc(%rsi),%eax
   140002b14:	8d 50 ff             	lea    -0x1(%rax),%edx
   140002b17:	89 56 0c             	mov    %edx,0xc(%rsi)
   140002b1a:	85 c0                	test   %eax,%eax
   140002b1c:	7e 0f                	jle    140002b2d <__pformat_int.isra.0+0x1a7>
   140002b1e:	48 89 f2             	mov    %rsi,%rdx
   140002b21:	b9 20 00 00 00       	mov    $0x20,%ecx
   140002b26:	e8 8b f6 ff ff       	call   1400021b6 <__pformat_putc>
   140002b2b:	eb e4                	jmp    140002b11 <__pformat_int.isra.0+0x18b>
   140002b2d:	8b 46 08             	mov    0x8(%rsi),%eax
   140002b30:	a8 80                	test   $0x80,%al
   140002b32:	74 05                	je     140002b39 <__pformat_int.isra.0+0x1b3>
   140002b34:	c6 03 2d             	movb   $0x2d,(%rbx)
   140002b37:	eb 12                	jmp    140002b4b <__pformat_int.isra.0+0x1c5>
   140002b39:	0f ba e0 08          	bt     $0x8,%eax
   140002b3d:	73 05                	jae    140002b44 <__pformat_int.isra.0+0x1be>
   140002b3f:	c6 03 2b             	movb   $0x2b,(%rbx)
   140002b42:	eb 07                	jmp    140002b4b <__pformat_int.isra.0+0x1c5>
   140002b44:	a8 40                	test   $0x40,%al
   140002b46:	74 06                	je     140002b4e <__pformat_int.isra.0+0x1c8>
   140002b48:	c6 03 20             	movb   $0x20,(%rbx)
   140002b4b:	48 ff c3             	inc    %rbx
   140002b4e:	48 39 df             	cmp    %rbx,%rdi
   140002b51:	73 11                	jae    140002b64 <__pformat_int.isra.0+0x1de>
   140002b53:	0f be 4b ff          	movsbl -0x1(%rbx),%ecx
   140002b57:	48 89 f2             	mov    %rsi,%rdx
   140002b5a:	48 ff cb             	dec    %rbx
   140002b5d:	e8 54 f6 ff ff       	call   1400021b6 <__pformat_putc>
   140002b62:	eb ea                	jmp    140002b4e <__pformat_int.isra.0+0x1c8>
   140002b64:	8b 46 0c             	mov    0xc(%rsi),%eax
   140002b67:	8d 50 ff             	lea    -0x1(%rax),%edx
   140002b6a:	89 56 0c             	mov    %edx,0xc(%rsi)
   140002b6d:	85 c0                	test   %eax,%eax
   140002b6f:	7e 0f                	jle    140002b80 <__pformat_int.isra.0+0x1fa>
   140002b71:	48 89 f2             	mov    %rsi,%rdx
   140002b74:	b9 20 00 00 00       	mov    $0x20,%ecx
   140002b79:	e8 38 f6 ff ff       	call   1400021b6 <__pformat_putc>
   140002b7e:	eb e4                	jmp    140002b64 <__pformat_int.isra.0+0x1de>
   140002b80:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140002b84:	5b                   	pop    %rbx
   140002b85:	5e                   	pop    %rsi
   140002b86:	5f                   	pop    %rdi
   140002b87:	41 5c                	pop    %r12
   140002b89:	41 5d                	pop    %r13
   140002b8b:	5d                   	pop    %rbp
   140002b8c:	c3                   	ret

0000000140002b8d <__pformat_emit_xfloat.isra.0>:
   140002b8d:	41 55                	push   %r13
   140002b8f:	41 54                	push   %r12
   140002b91:	55                   	push   %rbp
   140002b92:	57                   	push   %rdi
   140002b93:	56                   	push   %rsi
   140002b94:	53                   	push   %rbx
   140002b95:	48 83 ec 48          	sub    $0x48,%rsp
   140002b99:	48 89 c8             	mov    %rcx,%rax
   140002b9c:	4c 89 c3             	mov    %r8,%rbx
   140002b9f:	48 85 c9             	test   %rcx,%rcx
   140002ba2:	75 07                	jne    140002bab <__pformat_emit_xfloat.isra.0+0x1e>
   140002ba4:	31 ff                	xor    %edi,%edi
   140002ba6:	66 85 d2             	test   %dx,%dx
   140002ba9:	74 03                	je     140002bae <__pformat_emit_xfloat.isra.0+0x21>
   140002bab:	8d 7a fd             	lea    -0x3(%rdx),%edi
   140002bae:	44 8b 43 10          	mov    0x10(%rbx),%r8d
   140002bb2:	41 83 f8 0e          	cmp    $0xe,%r8d
   140002bb6:	77 35                	ja     140002bed <__pformat_emit_xfloat.isra.0+0x60>
   140002bb8:	b9 0e 00 00 00       	mov    $0xe,%ecx
   140002bbd:	ba 04 00 00 00       	mov    $0x4,%edx
   140002bc2:	48 d1 e8             	shr    $1,%rax
   140002bc5:	44 29 c1             	sub    %r8d,%ecx
   140002bc8:	c1 e1 02             	shl    $0x2,%ecx
   140002bcb:	48 d3 e2             	shl    %cl,%rdx
   140002bce:	48 01 d0             	add    %rdx,%rax
   140002bd1:	78 05                	js     140002bd8 <__pformat_emit_xfloat.isra.0+0x4b>
   140002bd3:	48 01 c0             	add    %rax,%rax
   140002bd6:	eb 07                	jmp    140002bdf <__pformat_emit_xfloat.isra.0+0x52>
   140002bd8:	83 c7 04             	add    $0x4,%edi
   140002bdb:	48 c1 e8 03          	shr    $0x3,%rax
   140002bdf:	b9 0f 00 00 00       	mov    $0xf,%ecx
   140002be4:	44 29 c1             	sub    %r8d,%ecx
   140002be7:	c1 e1 02             	shl    $0x2,%ecx
   140002bea:	48 d3 e8             	shr    %cl,%rax
   140002bed:	48 85 c0             	test   %rax,%rax
   140002bf0:	44 8b 4b 08          	mov    0x8(%rbx),%r9d
   140002bf4:	75 09                	jne    140002bff <__pformat_emit_xfloat.isra.0+0x72>
   140002bf6:	45 85 c0             	test   %r8d,%r8d
   140002bf9:	0f 8e 8f 00 00 00    	jle    140002c8e <__pformat_emit_xfloat.isra.0+0x101>
   140002bff:	b9 10 00 00 00       	mov    $0x10,%ecx
   140002c04:	41 83 f8 0e          	cmp    $0xe,%r8d
   140002c08:	77 04                	ja     140002c0e <__pformat_emit_xfloat.isra.0+0x81>
   140002c0a:	41 8d 48 01          	lea    0x1(%r8),%ecx
   140002c0e:	45 89 cb             	mov    %r9d,%r11d
   140002c11:	48 8d 74 24 28       	lea    0x28(%rsp),%rsi
   140002c16:	41 83 e3 20          	and    $0x20,%r11d
   140002c1a:	49 89 f2             	mov    %rsi,%r10
   140002c1d:	89 c2                	mov    %eax,%edx
   140002c1f:	83 e2 0f             	and    $0xf,%edx
   140002c22:	83 f9 01             	cmp    $0x1,%ecx
   140002c25:	75 1a                	jne    140002c41 <__pformat_emit_xfloat.isra.0+0xb4>
   140002c27:	49 39 f2             	cmp    %rsi,%r10
   140002c2a:	72 0d                	jb     140002c39 <__pformat_emit_xfloat.isra.0+0xac>
   140002c2c:	41 0f ba e1 0b       	bt     $0xb,%r9d
   140002c31:	72 06                	jb     140002c39 <__pformat_emit_xfloat.isra.0+0xac>
   140002c33:	83 7b 10 00          	cmpl   $0x0,0x10(%rbx)
   140002c37:	7e 29                	jle    140002c62 <__pformat_emit_xfloat.isra.0+0xd5>
   140002c39:	c6 06 2e             	movb   $0x2e,(%rsi)
   140002c3c:	48 ff c6             	inc    %rsi
   140002c3f:	eb 10                	jmp    140002c51 <__pformat_emit_xfloat.isra.0+0xc4>
   140002c41:	44 8b 43 10          	mov    0x10(%rbx),%r8d
   140002c45:	45 85 c0             	test   %r8d,%r8d
   140002c48:	7e 07                	jle    140002c51 <__pformat_emit_xfloat.isra.0+0xc4>
   140002c4a:	41 ff c8             	dec    %r8d
   140002c4d:	44 89 43 10          	mov    %r8d,0x10(%rbx)
   140002c51:	85 d2                	test   %edx,%edx
   140002c53:	75 11                	jne    140002c66 <__pformat_emit_xfloat.isra.0+0xd9>
   140002c55:	49 39 f2             	cmp    %rsi,%r10
   140002c58:	72 19                	jb     140002c73 <__pformat_emit_xfloat.isra.0+0xe6>
   140002c5a:	83 7b 10 00          	cmpl   $0x0,0x10(%rbx)
   140002c5e:	79 13                	jns    140002c73 <__pformat_emit_xfloat.isra.0+0xe6>
   140002c60:	eb 19                	jmp    140002c7b <__pformat_emit_xfloat.isra.0+0xee>
   140002c62:	85 d2                	test   %edx,%edx
   140002c64:	74 f4                	je     140002c5a <__pformat_emit_xfloat.isra.0+0xcd>
   140002c66:	83 fa 09             	cmp    $0x9,%edx
   140002c69:	76 08                	jbe    140002c73 <__pformat_emit_xfloat.isra.0+0xe6>
   140002c6b:	83 c2 37             	add    $0x37,%edx
   140002c6e:	44 09 da             	or     %r11d,%edx
   140002c71:	eb 03                	jmp    140002c76 <__pformat_emit_xfloat.isra.0+0xe9>
   140002c73:	83 c2 30             	add    $0x30,%edx
   140002c76:	88 16                	mov    %dl,(%rsi)
   140002c78:	48 ff c6             	inc    %rsi
   140002c7b:	48 c1 e8 04          	shr    $0x4,%rax
   140002c7f:	ff c9                	dec    %ecx
   140002c81:	75 9a                	jne    140002c1d <__pformat_emit_xfloat.isra.0+0x90>
   140002c83:	4c 39 d6             	cmp    %r10,%rsi
   140002c86:	75 23                	jne    140002cab <__pformat_emit_xfloat.isra.0+0x11e>
   140002c88:	83 7b 10 00          	cmpl   $0x0,0x10(%rbx)
   140002c8c:	7f 0c                	jg     140002c9a <__pformat_emit_xfloat.isra.0+0x10d>
   140002c8e:	41 0f ba e1 0b       	bt     $0xb,%r9d
   140002c93:	48 8d 44 24 28       	lea    0x28(%rsp),%rax
   140002c98:	73 0a                	jae    140002ca4 <__pformat_emit_xfloat.isra.0+0x117>
   140002c9a:	c6 44 24 28 2e       	movb   $0x2e,0x28(%rsp)
   140002c9f:	48 8d 44 24 29       	lea    0x29(%rsp),%rax
   140002ca4:	c6 00 30             	movb   $0x30,(%rax)
   140002ca7:	48 8d 70 01          	lea    0x1(%rax),%rsi
   140002cab:	44 8b 53 0c          	mov    0xc(%rbx),%r10d
   140002caf:	bd 02 00 00 00       	mov    $0x2,%ebp
   140002cb4:	45 85 d2             	test   %r10d,%r10d
   140002cb7:	0f 8e 82 00 00 00    	jle    140002d3f <__pformat_emit_xfloat.isra.0+0x1b2>
   140002cbd:	48 8d 44 24 28       	lea    0x28(%rsp),%rax
   140002cc2:	48 89 f1             	mov    %rsi,%rcx
   140002cc5:	44 8b 43 10          	mov    0x10(%rbx),%r8d
   140002cc9:	48 29 c1             	sub    %rax,%rcx
   140002ccc:	0f bf c7             	movswl %di,%eax
   140002ccf:	89 ca                	mov    %ecx,%edx
   140002cd1:	45 85 c0             	test   %r8d,%r8d
   140002cd4:	7e 04                	jle    140002cda <__pformat_emit_xfloat.isra.0+0x14d>
   140002cd6:	41 8d 14 08          	lea    (%r8,%rcx,1),%edx
   140002cda:	44 89 c9             	mov    %r9d,%ecx
   140002cdd:	81 e1 c0 01 00 00    	and    $0x1c0,%ecx
   140002ce3:	83 f9 01             	cmp    $0x1,%ecx
   140002ce6:	19 c9                	sbb    %ecx,%ecx
   140002ce8:	44 8d 64 0a 06       	lea    0x6(%rdx,%rcx,1),%r12d
   140002ced:	b9 0a 00 00 00       	mov    $0xa,%ecx
   140002cf2:	44 89 e5             	mov    %r12d,%ebp
   140002cf5:	99                   	cltd
   140002cf6:	f7 f9                	idiv   %ecx
   140002cf8:	85 c0                	test   %eax,%eax
   140002cfa:	74 04                	je     140002d00 <__pformat_emit_xfloat.isra.0+0x173>
   140002cfc:	ff c5                	inc    %ebp
   140002cfe:	eb f5                	jmp    140002cf5 <__pformat_emit_xfloat.isra.0+0x168>
   140002d00:	41 39 ea             	cmp    %ebp,%r10d
   140002d03:	7e 2d                	jle    140002d32 <__pformat_emit_xfloat.isra.0+0x1a5>
   140002d05:	44 89 d0             	mov    %r10d,%eax
   140002d08:	29 e8                	sub    %ebp,%eax
   140002d0a:	41 81 e1 00 06 00 00 	and    $0x600,%r9d
   140002d11:	89 43 0c             	mov    %eax,0xc(%rbx)
   140002d14:	75 23                	jne    140002d39 <__pformat_emit_xfloat.isra.0+0x1ac>
   140002d16:	8b 43 0c             	mov    0xc(%rbx),%eax
   140002d19:	8d 50 ff             	lea    -0x1(%rax),%edx
   140002d1c:	89 53 0c             	mov    %edx,0xc(%rbx)
   140002d1f:	85 c0                	test   %eax,%eax
   140002d21:	7e 16                	jle    140002d39 <__pformat_emit_xfloat.isra.0+0x1ac>
   140002d23:	48 89 da             	mov    %rbx,%rdx
   140002d26:	b9 20 00 00 00       	mov    $0x20,%ecx
   140002d2b:	e8 86 f4 ff ff       	call   1400021b6 <__pformat_putc>
   140002d30:	eb e4                	jmp    140002d16 <__pformat_emit_xfloat.isra.0+0x189>
   140002d32:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
   140002d39:	44 29 e5             	sub    %r12d,%ebp
   140002d3c:	83 c5 02             	add    $0x2,%ebp
   140002d3f:	8b 43 08             	mov    0x8(%rbx),%eax
   140002d42:	a8 80                	test   $0x80,%al
   140002d44:	74 0a                	je     140002d50 <__pformat_emit_xfloat.isra.0+0x1c3>
   140002d46:	48 89 da             	mov    %rbx,%rdx
   140002d49:	b9 2d 00 00 00       	mov    $0x2d,%ecx
   140002d4e:	eb 1c                	jmp    140002d6c <__pformat_emit_xfloat.isra.0+0x1df>
   140002d50:	0f ba e0 08          	bt     $0x8,%eax
   140002d54:	73 0a                	jae    140002d60 <__pformat_emit_xfloat.isra.0+0x1d3>
   140002d56:	48 89 da             	mov    %rbx,%rdx
   140002d59:	b9 2b 00 00 00       	mov    $0x2b,%ecx
   140002d5e:	eb 0c                	jmp    140002d6c <__pformat_emit_xfloat.isra.0+0x1df>
   140002d60:	a8 40                	test   $0x40,%al
   140002d62:	74 0d                	je     140002d71 <__pformat_emit_xfloat.isra.0+0x1e4>
   140002d64:	48 89 da             	mov    %rbx,%rdx
   140002d67:	b9 20 00 00 00       	mov    $0x20,%ecx
   140002d6c:	e8 45 f4 ff ff       	call   1400021b6 <__pformat_putc>
   140002d71:	48 89 da             	mov    %rbx,%rdx
   140002d74:	b9 30 00 00 00       	mov    $0x30,%ecx
   140002d79:	e8 38 f4 ff ff       	call   1400021b6 <__pformat_putc>
   140002d7e:	8b 4b 08             	mov    0x8(%rbx),%ecx
   140002d81:	48 89 da             	mov    %rbx,%rdx
   140002d84:	83 e1 20             	and    $0x20,%ecx
   140002d87:	83 c9 58             	or     $0x58,%ecx
   140002d8a:	e8 27 f4 ff ff       	call   1400021b6 <__pformat_putc>
   140002d8f:	83 7b 0c 00          	cmpl   $0x0,0xc(%rbx)
   140002d93:	7f 0c                	jg     140002da1 <__pformat_emit_xfloat.isra.0+0x214>
   140002d95:	4c 8d 64 24 28       	lea    0x28(%rsp),%r12
   140002d9a:	4c 8d 6c 24 26       	lea    0x26(%rsp),%r13
   140002d9f:	eb 36                	jmp    140002dd7 <__pformat_emit_xfloat.isra.0+0x24a>
   140002da1:	f6 43 09 02          	testb  $0x2,0x9(%rbx)
   140002da5:	74 ee                	je     140002d95 <__pformat_emit_xfloat.isra.0+0x208>
   140002da7:	8b 43 0c             	mov    0xc(%rbx),%eax
   140002daa:	8d 50 ff             	lea    -0x1(%rax),%edx
   140002dad:	89 53 0c             	mov    %edx,0xc(%rbx)
   140002db0:	85 c0                	test   %eax,%eax
   140002db2:	7e e1                	jle    140002d95 <__pformat_emit_xfloat.isra.0+0x208>
   140002db4:	48 89 da             	mov    %rbx,%rdx
   140002db7:	b9 30 00 00 00       	mov    $0x30,%ecx
   140002dbc:	e8 f5 f3 ff ff       	call   1400021b6 <__pformat_putc>
   140002dc1:	eb e4                	jmp    140002da7 <__pformat_emit_xfloat.isra.0+0x21a>
   140002dc3:	0f be 4e ff          	movsbl -0x1(%rsi),%ecx
   140002dc7:	48 ff ce             	dec    %rsi
   140002dca:	83 f9 2e             	cmp    $0x2e,%ecx
   140002dcd:	75 0f                	jne    140002dde <__pformat_emit_xfloat.isra.0+0x251>
   140002dcf:	48 89 d9             	mov    %rbx,%rcx
   140002dd2:	e8 4a f6 ff ff       	call   140002421 <__pformat_emit_radix_point>
   140002dd7:	49 39 f4             	cmp    %rsi,%r12
   140002dda:	72 e7                	jb     140002dc3 <__pformat_emit_xfloat.isra.0+0x236>
   140002ddc:	eb 2e                	jmp    140002e0c <__pformat_emit_xfloat.isra.0+0x27f>
   140002dde:	83 f9 2c             	cmp    $0x2c,%ecx
   140002de1:	75 1f                	jne    140002e02 <__pformat_emit_xfloat.isra.0+0x275>
   140002de3:	8b 43 20             	mov    0x20(%rbx),%eax
   140002de6:	66 89 44 24 26       	mov    %ax,0x26(%rsp)
   140002deb:	66 85 c0             	test   %ax,%ax
   140002dee:	74 e7                	je     140002dd7 <__pformat_emit_xfloat.isra.0+0x24a>
   140002df0:	49 89 d8             	mov    %rbx,%r8
   140002df3:	ba 01 00 00 00       	mov    $0x1,%edx
   140002df8:	4c 89 e9             	mov    %r13,%rcx
   140002dfb:	e8 ef f3 ff ff       	call   1400021ef <__pformat_wputchars>
   140002e00:	eb d5                	jmp    140002dd7 <__pformat_emit_xfloat.isra.0+0x24a>
   140002e02:	48 89 da             	mov    %rbx,%rdx
   140002e05:	e8 ac f3 ff ff       	call   1400021b6 <__pformat_putc>
   140002e0a:	eb cb                	jmp    140002dd7 <__pformat_emit_xfloat.isra.0+0x24a>
   140002e0c:	8b 43 10             	mov    0x10(%rbx),%eax
   140002e0f:	8d 50 ff             	lea    -0x1(%rax),%edx
   140002e12:	89 53 10             	mov    %edx,0x10(%rbx)
   140002e15:	85 c0                	test   %eax,%eax
   140002e17:	7e 0f                	jle    140002e28 <__pformat_emit_xfloat.isra.0+0x29b>
   140002e19:	48 89 da             	mov    %rbx,%rdx
   140002e1c:	b9 30 00 00 00       	mov    $0x30,%ecx
   140002e21:	e8 90 f3 ff ff       	call   1400021b6 <__pformat_putc>
   140002e26:	eb e4                	jmp    140002e0c <__pformat_emit_xfloat.isra.0+0x27f>
   140002e28:	8b 4b 08             	mov    0x8(%rbx),%ecx
   140002e2b:	48 89 da             	mov    %rbx,%rdx
   140002e2e:	0f bf ed             	movswl %bp,%ebp
   140002e31:	83 e1 20             	and    $0x20,%ecx
   140002e34:	83 c9 50             	or     $0x50,%ecx
   140002e37:	e8 7a f3 ff ff       	call   1400021b6 <__pformat_putc>
   140002e3c:	01 6b 0c             	add    %ebp,0xc(%rbx)
   140002e3f:	48 0f bf cf          	movswq %di,%rcx
   140002e43:	48 89 da             	mov    %rbx,%rdx
   140002e46:	81 4b 08 c0 01 00 00 	orl    $0x1c0,0x8(%rbx)
   140002e4d:	48 83 c4 48          	add    $0x48,%rsp
   140002e51:	5b                   	pop    %rbx
   140002e52:	5e                   	pop    %rsi
   140002e53:	5f                   	pop    %rdi
   140002e54:	5d                   	pop    %rbp
   140002e55:	41 5c                	pop    %r12
   140002e57:	41 5d                	pop    %r13
   140002e59:	e9 28 fb ff ff       	jmp    140002986 <__pformat_int.isra.0>

0000000140002e5e <__pformat_emit_efloat>:
   140002e5e:	57                   	push   %rdi
   140002e5f:	56                   	push   %rsi
   140002e60:	53                   	push   %rbx
   140002e61:	48 83 ec 20          	sub    $0x20,%rsp
   140002e65:	41 8d 40 ff          	lea    -0x1(%r8),%eax
   140002e69:	41 89 ca             	mov    %ecx,%r10d
   140002e6c:	49 89 d3             	mov    %rdx,%r11
   140002e6f:	4c 89 cb             	mov    %r9,%rbx
   140002e72:	48 63 f0             	movslq %eax,%rsi
   140002e75:	b9 01 00 00 00       	mov    $0x1,%ecx
   140002e7a:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
   140002e80:	99                   	cltd
   140002e81:	41 f7 f8             	idiv   %r8d
   140002e84:	85 c0                	test   %eax,%eax
   140002e86:	74 04                	je     140002e8c <__pformat_emit_efloat+0x2e>
   140002e88:	ff c1                	inc    %ecx
   140002e8a:	eb f4                	jmp    140002e80 <__pformat_emit_efloat+0x22>
   140002e8c:	8b 43 2c             	mov    0x2c(%rbx),%eax
   140002e8f:	83 f8 ff             	cmp    $0xffffffff,%eax
   140002e92:	75 0c                	jne    140002ea0 <__pformat_emit_efloat+0x42>
   140002e94:	c7 43 2c 02 00 00 00 	movl   $0x2,0x2c(%rbx)
   140002e9b:	b8 02 00 00 00       	mov    $0x2,%eax
   140002ea0:	39 c1                	cmp    %eax,%ecx
   140002ea2:	0f 4d c1             	cmovge %ecx,%eax
   140002ea5:	8b 4b 0c             	mov    0xc(%rbx),%ecx
   140002ea8:	8d 50 02             	lea    0x2(%rax),%edx
   140002eab:	89 c7                	mov    %eax,%edi
   140002ead:	83 c8 ff             	or     $0xffffffff,%eax
   140002eb0:	39 d1                	cmp    %edx,%ecx
   140002eb2:	7e 04                	jle    140002eb8 <__pformat_emit_efloat+0x5a>
   140002eb4:	89 c8                	mov    %ecx,%eax
   140002eb6:	29 d0                	sub    %edx,%eax
   140002eb8:	89 43 0c             	mov    %eax,0xc(%rbx)
   140002ebb:	4c 89 da             	mov    %r11,%rdx
   140002ebe:	44 89 d1             	mov    %r10d,%ecx
   140002ec1:	49 89 d9             	mov    %rbx,%r9
   140002ec4:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   140002eca:	e8 27 f6 ff ff       	call   1400024f6 <__pformat_emit_float>
   140002ecf:	8b 4b 08             	mov    0x8(%rbx),%ecx
   140002ed2:	8b 43 2c             	mov    0x2c(%rbx),%eax
   140002ed5:	48 89 da             	mov    %rbx,%rdx
   140002ed8:	89 43 10             	mov    %eax,0x10(%rbx)
   140002edb:	89 c8                	mov    %ecx,%eax
   140002edd:	83 e1 20             	and    $0x20,%ecx
   140002ee0:	0d c0 01 00 00       	or     $0x1c0,%eax
   140002ee5:	83 c9 45             	or     $0x45,%ecx
   140002ee8:	89 43 08             	mov    %eax,0x8(%rbx)
   140002eeb:	e8 c6 f2 ff ff       	call   1400021b6 <__pformat_putc>
   140002ef0:	8d 47 01             	lea    0x1(%rdi),%eax
   140002ef3:	01 43 0c             	add    %eax,0xc(%rbx)
   140002ef6:	48 89 da             	mov    %rbx,%rdx
   140002ef9:	48 89 f1             	mov    %rsi,%rcx
   140002efc:	48 83 c4 20          	add    $0x20,%rsp
   140002f00:	5b                   	pop    %rbx
   140002f01:	5e                   	pop    %rsi
   140002f02:	5f                   	pop    %rdi
   140002f03:	e9 7e fa ff ff       	jmp    140002986 <__pformat_int.isra.0>

0000000140002f08 <__pformat_efloat>:
   140002f08:	56                   	push   %rsi
   140002f09:	53                   	push   %rbx
   140002f0a:	48 83 ec 58          	sub    $0x58,%rsp
   140002f0e:	8b 42 10             	mov    0x10(%rdx),%eax
   140002f11:	db 29                	fldt   (%rcx)
   140002f13:	48 89 d3             	mov    %rdx,%rbx
   140002f16:	85 c0                	test   %eax,%eax
   140002f18:	79 0c                	jns    140002f26 <__pformat_efloat+0x1e>
   140002f1a:	c7 42 10 06 00 00 00 	movl   $0x6,0x10(%rdx)
   140002f21:	b8 06 00 00 00       	mov    $0x6,%eax
   140002f26:	48 8d 4c 24 48       	lea    0x48(%rsp),%rcx
   140002f2b:	44 8d 40 01          	lea    0x1(%rax),%r8d
   140002f2f:	db 7c 24 30          	fstpt  0x30(%rsp)
   140002f33:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
   140002f38:	4c 8d 4c 24 4c       	lea    0x4c(%rsp),%r9
   140002f3d:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
   140002f42:	b9 02 00 00 00       	mov    $0x2,%ecx
   140002f47:	e8 84 f1 ff ff       	call   1400020d0 <__pformat_cvt>
   140002f4c:	44 8b 44 24 4c       	mov    0x4c(%rsp),%r8d
   140002f51:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   140002f55:	48 89 c6             	mov    %rax,%rsi
   140002f58:	41 81 f8 00 80 ff ff 	cmp    $0xffff8000,%r8d
   140002f5f:	75 0d                	jne    140002f6e <__pformat_efloat+0x66>
   140002f61:	49 89 d8             	mov    %rbx,%r8
   140002f64:	48 89 c2             	mov    %rax,%rdx
   140002f67:	e8 43 f4 ff ff       	call   1400023af <__pformat_emit_inf_or_nan>
   140002f6c:	eb 0b                	jmp    140002f79 <__pformat_efloat+0x71>
   140002f6e:	49 89 d9             	mov    %rbx,%r9
   140002f71:	48 89 c2             	mov    %rax,%rdx
   140002f74:	e8 e5 fe ff ff       	call   140002e5e <__pformat_emit_efloat>
   140002f79:	48 89 f1             	mov    %rsi,%rcx
   140002f7c:	e8 46 09 00 00       	call   1400038c7 <__freedtoa>
   140002f81:	90                   	nop
   140002f82:	48 83 c4 58          	add    $0x58,%rsp
   140002f86:	5b                   	pop    %rbx
   140002f87:	5e                   	pop    %rsi
   140002f88:	c3                   	ret

0000000140002f89 <__pformat_gfloat>:
   140002f89:	57                   	push   %rdi
   140002f8a:	56                   	push   %rsi
   140002f8b:	53                   	push   %rbx
   140002f8c:	48 83 ec 60          	sub    $0x60,%rsp
   140002f90:	db 29                	fldt   (%rcx)
   140002f92:	83 7a 10 00          	cmpl   $0x0,0x10(%rdx)
   140002f96:	48 89 d3             	mov    %rdx,%rbx
   140002f99:	79 09                	jns    140002fa4 <__pformat_gfloat+0x1b>
   140002f9b:	c7 42 10 06 00 00 00 	movl   $0x6,0x10(%rdx)
   140002fa2:	eb 09                	jmp    140002fad <__pformat_gfloat+0x24>
   140002fa4:	75 07                	jne    140002fad <__pformat_gfloat+0x24>
   140002fa6:	c7 42 10 01 00 00 00 	movl   $0x1,0x10(%rdx)
   140002fad:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   140002fb2:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
   140002fb7:	b9 02 00 00 00       	mov    $0x2,%ecx
   140002fbc:	db 7c 24 40          	fstpt  0x40(%rsp)
   140002fc0:	4c 8d 4c 24 5c       	lea    0x5c(%rsp),%r9
   140002fc5:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140002fca:	44 8b 43 10          	mov    0x10(%rbx),%r8d
   140002fce:	e8 fd f0 ff ff       	call   1400020d0 <__pformat_cvt>
   140002fd3:	44 8b 44 24 5c       	mov    0x5c(%rsp),%r8d
   140002fd8:	8b 7c 24 58          	mov    0x58(%rsp),%edi
   140002fdc:	48 89 c6             	mov    %rax,%rsi
   140002fdf:	41 81 f8 00 80 ff ff 	cmp    $0xffff8000,%r8d
   140002fe6:	75 12                	jne    140002ffa <__pformat_gfloat+0x71>
   140002fe8:	49 89 d8             	mov    %rbx,%r8
   140002feb:	48 89 c2             	mov    %rax,%rdx
   140002fee:	89 f9                	mov    %edi,%ecx
   140002ff0:	e8 ba f3 ff ff       	call   1400023af <__pformat_emit_inf_or_nan>
   140002ff5:	e9 a0 00 00 00       	jmp    14000309a <__pformat_gfloat+0x111>
   140002ffa:	8b 43 08             	mov    0x8(%rbx),%eax
   140002ffd:	25 00 08 00 00       	and    $0x800,%eax
   140003002:	41 83 f8 fd          	cmp    $0xfffffffd,%r8d
   140003006:	7c 63                	jl     14000306b <__pformat_gfloat+0xe2>
   140003008:	8b 53 10             	mov    0x10(%rbx),%edx
   14000300b:	41 39 d0             	cmp    %edx,%r8d
   14000300e:	7f 5b                	jg     14000306b <__pformat_gfloat+0xe2>
   140003010:	85 c0                	test   %eax,%eax
   140003012:	74 08                	je     14000301c <__pformat_gfloat+0x93>
   140003014:	44 29 c2             	sub    %r8d,%edx
   140003017:	89 53 10             	mov    %edx,0x10(%rbx)
   14000301a:	eb 26                	jmp    140003042 <__pformat_gfloat+0xb9>
   14000301c:	48 89 f1             	mov    %rsi,%rcx
   14000301f:	44 89 44 24 3c       	mov    %r8d,0x3c(%rsp)
   140003024:	e8 cf 29 00 00       	call   1400059f8 <strlen>
   140003029:	44 8b 44 24 3c       	mov    0x3c(%rsp),%r8d
   14000302e:	44 29 c0             	sub    %r8d,%eax
   140003031:	89 43 10             	mov    %eax,0x10(%rbx)
   140003034:	79 0c                	jns    140003042 <__pformat_gfloat+0xb9>
   140003036:	8b 53 0c             	mov    0xc(%rbx),%edx
   140003039:	85 d2                	test   %edx,%edx
   14000303b:	7e 05                	jle    140003042 <__pformat_gfloat+0xb9>
   14000303d:	01 d0                	add    %edx,%eax
   14000303f:	89 43 0c             	mov    %eax,0xc(%rbx)
   140003042:	49 89 d9             	mov    %rbx,%r9
   140003045:	48 89 f2             	mov    %rsi,%rdx
   140003048:	89 f9                	mov    %edi,%ecx
   14000304a:	e8 a7 f4 ff ff       	call   1400024f6 <__pformat_emit_float>
   14000304f:	8b 43 0c             	mov    0xc(%rbx),%eax
   140003052:	8d 50 ff             	lea    -0x1(%rax),%edx
   140003055:	89 53 0c             	mov    %edx,0xc(%rbx)
   140003058:	85 c0                	test   %eax,%eax
   14000305a:	7e 3e                	jle    14000309a <__pformat_gfloat+0x111>
   14000305c:	48 89 da             	mov    %rbx,%rdx
   14000305f:	b9 20 00 00 00       	mov    $0x20,%ecx
   140003064:	e8 4d f1 ff ff       	call   1400021b6 <__pformat_putc>
   140003069:	eb e4                	jmp    14000304f <__pformat_gfloat+0xc6>
   14000306b:	85 c0                	test   %eax,%eax
   14000306d:	74 07                	je     140003076 <__pformat_gfloat+0xed>
   14000306f:	8b 43 10             	mov    0x10(%rbx),%eax
   140003072:	ff c8                	dec    %eax
   140003074:	eb 14                	jmp    14000308a <__pformat_gfloat+0x101>
   140003076:	48 89 f1             	mov    %rsi,%rcx
   140003079:	44 89 44 24 3c       	mov    %r8d,0x3c(%rsp)
   14000307e:	e8 75 29 00 00       	call   1400059f8 <strlen>
   140003083:	44 8b 44 24 3c       	mov    0x3c(%rsp),%r8d
   140003088:	ff c8                	dec    %eax
   14000308a:	89 43 10             	mov    %eax,0x10(%rbx)
   14000308d:	49 89 d9             	mov    %rbx,%r9
   140003090:	48 89 f2             	mov    %rsi,%rdx
   140003093:	89 f9                	mov    %edi,%ecx
   140003095:	e8 c4 fd ff ff       	call   140002e5e <__pformat_emit_efloat>
   14000309a:	48 89 f1             	mov    %rsi,%rcx
   14000309d:	e8 25 08 00 00       	call   1400038c7 <__freedtoa>
   1400030a2:	90                   	nop
   1400030a3:	48 83 c4 60          	add    $0x60,%rsp
   1400030a7:	5b                   	pop    %rbx
   1400030a8:	5e                   	pop    %rsi
   1400030a9:	5f                   	pop    %rdi
   1400030aa:	c3                   	ret

00000001400030ab <__mingw_pformat>:
   1400030ab:	41 57                	push   %r15
   1400030ad:	41 56                	push   %r14
   1400030af:	41 55                	push   %r13
   1400030b1:	41 54                	push   %r12
   1400030b3:	55                   	push   %rbp
   1400030b4:	57                   	push   %rdi
   1400030b5:	56                   	push   %rsi
   1400030b6:	53                   	push   %rbx
   1400030b7:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
   1400030be:	4c 8d 2d ab 42 00 00 	lea    0x42ab(%rip),%r13        # 140007370 <.rdata+0x20>
   1400030c5:	48 8b 9c 24 10 01 00 	mov    0x110(%rsp),%rbx
   1400030cc:	00 
   1400030cd:	89 cf                	mov    %ecx,%edi
   1400030cf:	44 89 c6             	mov    %r8d,%esi
   1400030d2:	4c 89 8c 24 08 01 00 	mov    %r9,0x108(%rsp)
   1400030d9:	00 
   1400030da:	48 89 d5             	mov    %rdx,%rbp
   1400030dd:	e8 96 28 00 00       	call   140005978 <_errno>
   1400030e2:	81 e7 00 60 00 00    	and    $0x6000,%edi
   1400030e8:	31 c9                	xor    %ecx,%ecx
   1400030ea:	45 31 c0             	xor    %r8d,%r8d
   1400030ed:	8b 00                	mov    (%rax),%eax
   1400030ef:	48 89 6c 24 70       	mov    %rbp,0x70(%rsp)
   1400030f4:	89 7c 24 78          	mov    %edi,0x78(%rsp)
   1400030f8:	4c 8b 8c 24 08 01 00 	mov    0x108(%rsp),%r9
   1400030ff:	00 
   140003100:	89 44 24 34          	mov    %eax,0x34(%rsp)
   140003104:	48 b8 ff ff ff ff fd 	movabs $0xfffffffdffffffff,%rax
   14000310b:	ff ff ff 
   14000310e:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
   140003115:	00 
   140003116:	48 8d 44 24 70       	lea    0x70(%rsp),%rax
   14000311b:	c7 44 24 7c ff ff ff 	movl   $0xffffffff,0x7c(%rsp)
   140003122:	ff 
   140003123:	66 c7 84 24 88 00 00 	movw   $0x0,0x88(%rsp)
   14000312a:	00 00 00 
   14000312d:	89 8c 24 8c 00 00 00 	mov    %ecx,0x8c(%rsp)
   140003134:	66 c7 84 24 90 00 00 	movw   $0x0,0x90(%rsp)
   14000313b:	00 00 00 
   14000313e:	44 89 84 24 94 00 00 	mov    %r8d,0x94(%rsp)
   140003145:	00 
   140003146:	89 b4 24 98 00 00 00 	mov    %esi,0x98(%rsp)
   14000314d:	c7 84 24 9c 00 00 00 	movl   $0xffffffff,0x9c(%rsp)
   140003154:	ff ff ff ff 
   140003158:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
   14000315d:	41 0f be 09          	movsbl (%r9),%ecx
   140003161:	4d 8d 61 01          	lea    0x1(%r9),%r12
   140003165:	85 c9                	test   %ecx,%ecx
   140003167:	0f 84 cd 06 00 00    	je     14000383a <__mingw_pformat+0x78f>
   14000316d:	83 f9 25             	cmp    $0x25,%ecx
   140003170:	0f 85 b2 06 00 00    	jne    140003828 <__mingw_pformat+0x77d>
   140003176:	89 7c 24 78          	mov    %edi,0x78(%rsp)
   14000317a:	4d 89 e1             	mov    %r12,%r9
   14000317d:	4c 8d 7c 24 7c       	lea    0x7c(%rsp),%r15
   140003182:	45 31 f6             	xor    %r14d,%r14d
   140003185:	48 c7 44 24 7c ff ff 	movq   $0xffffffffffffffff,0x7c(%rsp)
   14000318c:	ff ff 
   14000318e:	31 f6                	xor    %esi,%esi
   140003190:	41 0f be 09          	movsbl (%r9),%ecx
   140003194:	49 8d 69 01          	lea    0x1(%r9),%rbp
   140003198:	89 c8                	mov    %ecx,%eax
   14000319a:	84 c9                	test   %cl,%cl
   14000319c:	74 bf                	je     14000315d <__mingw_pformat+0xb2>
   14000319e:	8d 50 e0             	lea    -0x20(%rax),%edx
   1400031a1:	80 fa 5a             	cmp    $0x5a,%dl
   1400031a4:	0f 87 f7 05 00 00    	ja     1400037a1 <__mingw_pformat+0x6f6>
   1400031aa:	0f b6 d2             	movzbl %dl,%edx
   1400031ad:	49 63 54 95 00       	movslq 0x0(%r13,%rdx,4),%rdx
   1400031b2:	4c 01 ea             	add    %r13,%rdx
   1400031b5:	ff e2                	jmp    *%rdx
   1400031b7:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   1400031bc:	b9 25 00 00 00       	mov    $0x25,%ecx
   1400031c1:	e8 f0 ef ff ff       	call   1400021b6 <__pformat_putc>
   1400031c6:	e9 55 06 00 00       	jmp    140003820 <__mingw_pformat+0x775>
   1400031cb:	41 be 02 00 00 00    	mov    $0x2,%r14d
   1400031d1:	45 8d 56 fe          	lea    -0x2(%r14),%r10d
   1400031d5:	8b 03                	mov    (%rbx),%eax
   1400031d7:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   1400031dc:	c7 84 24 80 00 00 00 	movl   $0xffffffff,0x80(%rsp)
   1400031e3:	ff ff ff ff 
   1400031e7:	41 83 fa 01          	cmp    $0x1,%r10d
   1400031eb:	48 8d 4c 24 60       	lea    0x60(%rsp),%rcx
   1400031f0:	77 0c                	ja     1400031fe <__mingw_pformat+0x153>
   1400031f2:	66 89 44 24 60       	mov    %ax,0x60(%rsp)
   1400031f7:	ba 01 00 00 00       	mov    $0x1,%edx
   1400031fc:	eb 5b                	jmp    140003259 <__mingw_pformat+0x1ae>
   1400031fe:	ba 01 00 00 00       	mov    $0x1,%edx
   140003203:	88 44 24 60          	mov    %al,0x60(%rsp)
   140003207:	e8 c7 f0 ff ff       	call   1400022d3 <__pformat_putchars>
   14000320c:	e9 a3 03 00 00       	jmp    1400035b4 <__mingw_pformat+0x509>
   140003211:	45 8d 56 fe          	lea    -0x2(%r14),%r10d
   140003215:	41 83 fa 01          	cmp    $0x1,%r10d
   140003219:	77 48                	ja     140003263 <__mingw_pformat+0x1b8>
   14000321b:	48 8b 33             	mov    (%rbx),%rsi
   14000321e:	48 85 f6             	test   %rsi,%rsi
   140003221:	75 07                	jne    14000322a <__mingw_pformat+0x17f>
   140003223:	48 8d 35 2e 41 00 00 	lea    0x412e(%rip),%rsi        # 140007358 <.rdata+0x8>
   14000322a:	48 63 94 24 80 00 00 	movslq 0x80(%rsp),%rdx
   140003231:	00 
   140003232:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   140003237:	48 89 f1             	mov    %rsi,%rcx
   14000323a:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
   14000323f:	85 d2                	test   %edx,%edx
   140003241:	78 07                	js     14000324a <__mingw_pformat+0x19f>
   140003243:	e8 68 21 00 00       	call   1400053b0 <wcsnlen>
   140003248:	eb 05                	jmp    14000324f <__mingw_pformat+0x1a4>
   14000324a:	e8 c1 27 00 00       	call   140005a10 <wcslen>
   14000324f:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
   140003254:	89 c2                	mov    %eax,%edx
   140003256:	48 89 f1             	mov    %rsi,%rcx
   140003259:	e8 91 ef ff ff       	call   1400021ef <__pformat_wputchars>
   14000325e:	e9 51 03 00 00       	jmp    1400035b4 <__mingw_pformat+0x509>
   140003263:	48 8b 0b             	mov    (%rbx),%rcx
   140003266:	48 83 c3 08          	add    $0x8,%rbx
   14000326a:	eb 0c                	jmp    140003278 <__mingw_pformat+0x1cd>
   14000326c:	8b 4c 24 34          	mov    0x34(%rsp),%ecx
   140003270:	e8 7b 27 00 00       	call   1400059f0 <strerror>
   140003275:	48 89 c1             	mov    %rax,%rcx
   140003278:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   14000327d:	e8 e6 f0 ff ff       	call   140002368 <__pformat_puts>
   140003282:	e9 99 05 00 00       	jmp    140003820 <__mingw_pformat+0x775>
   140003287:	81 64 24 78 ff fe ff 	andl   $0xfffffeff,0x78(%rsp)
   14000328e:	ff 
   14000328f:	41 83 fe 03          	cmp    $0x3,%r14d
   140003293:	75 05                	jne    14000329a <__mingw_pformat+0x1ef>
   140003295:	4c 8b 0b             	mov    (%rbx),%r9
   140003298:	eb 24                	jmp    1400032be <__mingw_pformat+0x213>
   14000329a:	41 83 fe 02          	cmp    $0x2,%r14d
   14000329e:	75 05                	jne    1400032a5 <__mingw_pformat+0x1fa>
   1400032a0:	44 8b 0b             	mov    (%rbx),%r9d
   1400032a3:	eb 19                	jmp    1400032be <__mingw_pformat+0x213>
   1400032a5:	8b 13                	mov    (%rbx),%edx
   1400032a7:	44 0f b7 ca          	movzwl %dx,%r9d
   1400032ab:	41 83 fe 01          	cmp    $0x1,%r14d
   1400032af:	74 0d                	je     1400032be <__mingw_pformat+0x213>
   1400032b1:	44 0f b6 ca          	movzbl %dl,%r9d
   1400032b5:	41 83 fe 05          	cmp    $0x5,%r14d
   1400032b9:	74 03                	je     1400032be <__mingw_pformat+0x213>
   1400032bb:	41 89 d1             	mov    %edx,%r9d
   1400032be:	3c 75                	cmp    $0x75,%al
   1400032c0:	4c 89 4c 24 60       	mov    %r9,0x60(%rsp)
   1400032c5:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   1400032ca:	75 10                	jne    1400032dc <__mingw_pformat+0x231>
   1400032cc:	4c 89 c2             	mov    %r8,%rdx
   1400032cf:	4c 89 c9             	mov    %r9,%rcx
   1400032d2:	e8 af f6 ff ff       	call   140002986 <__pformat_int.isra.0>
   1400032d7:	e9 d8 02 00 00       	jmp    1400035b4 <__mingw_pformat+0x509>
   1400032dc:	4c 89 ca             	mov    %r9,%rdx
   1400032df:	e8 a2 f4 ff ff       	call   140002786 <__pformat_xint.isra.0>
   1400032e4:	e9 cb 02 00 00       	jmp    1400035b4 <__mingw_pformat+0x509>
   1400032e9:	81 4c 24 78 80 00 00 	orl    $0x80,0x78(%rsp)
   1400032f0:	00 
   1400032f1:	48 8d 73 08          	lea    0x8(%rbx),%rsi
   1400032f5:	41 83 fe 03          	cmp    $0x3,%r14d
   1400032f9:	75 05                	jne    140003300 <__mingw_pformat+0x255>
   1400032fb:	48 8b 0b             	mov    (%rbx),%rcx
   1400032fe:	eb 1f                	jmp    14000331f <__mingw_pformat+0x274>
   140003300:	48 63 0b             	movslq (%rbx),%rcx
   140003303:	41 83 fe 02          	cmp    $0x2,%r14d
   140003307:	74 16                	je     14000331f <__mingw_pformat+0x274>
   140003309:	41 83 fe 01          	cmp    $0x1,%r14d
   14000330d:	75 06                	jne    140003315 <__mingw_pformat+0x26a>
   14000330f:	48 0f bf c9          	movswq %cx,%rcx
   140003313:	eb 0a                	jmp    14000331f <__mingw_pformat+0x274>
   140003315:	41 83 fe 05          	cmp    $0x5,%r14d
   140003319:	75 04                	jne    14000331f <__mingw_pformat+0x274>
   14000331b:	48 0f be c9          	movsbq %cl,%rcx
   14000331f:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140003324:	e8 5d f6 ff ff       	call   140002986 <__pformat_int.isra.0>
   140003329:	eb 34                	jmp    14000335f <__mingw_pformat+0x2b4>
   14000332b:	85 f6                	test   %esi,%esi
   14000332d:	75 1a                	jne    140003349 <__mingw_pformat+0x29e>
   14000332f:	39 7c 24 78          	cmp    %edi,0x78(%rsp)
   140003333:	75 14                	jne    140003349 <__mingw_pformat+0x29e>
   140003335:	c7 84 24 80 00 00 00 	movl   $0x10,0x80(%rsp)
   14000333c:	10 00 00 00 
   140003340:	89 f8                	mov    %edi,%eax
   140003342:	80 cc 02             	or     $0x2,%ah
   140003345:	89 44 24 78          	mov    %eax,0x78(%rsp)
   140003349:	48 8b 13             	mov    (%rbx),%rdx
   14000334c:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   140003351:	b9 78 00 00 00       	mov    $0x78,%ecx
   140003356:	48 8d 73 08          	lea    0x8(%rbx),%rsi
   14000335a:	e8 27 f4 ff ff       	call   140002786 <__pformat_xint.isra.0>
   14000335f:	48 89 f3             	mov    %rsi,%rbx
   140003362:	e9 b9 04 00 00       	jmp    140003820 <__mingw_pformat+0x775>
   140003367:	83 4c 24 78 20       	orl    $0x20,0x78(%rsp)
   14000336c:	f6 44 24 78 04       	testb  $0x4,0x78(%rsp)
   140003371:	48 8b 03             	mov    (%rbx),%rax
   140003374:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140003379:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   14000337e:	74 08                	je     140003388 <__mingw_pformat+0x2dd>
   140003380:	db 28                	fldt   (%rax)
   140003382:	db 7c 24 40          	fstpt  0x40(%rsp)
   140003386:	eb 0d                	jmp    140003395 <__mingw_pformat+0x2ea>
   140003388:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   14000338d:	dd 44 24 20          	fldl   0x20(%rsp)
   140003391:	db 7c 24 40          	fstpt  0x40(%rsp)
   140003395:	e8 6e fb ff ff       	call   140002f08 <__pformat_efloat>
   14000339a:	e9 15 02 00 00       	jmp    1400035b4 <__mingw_pformat+0x509>
   14000339f:	83 4c 24 78 20       	orl    $0x20,0x78(%rsp)
   1400033a4:	f6 44 24 78 04       	testb  $0x4,0x78(%rsp)
   1400033a9:	48 8b 03             	mov    (%rbx),%rax
   1400033ac:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   1400033b1:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   1400033b6:	74 08                	je     1400033c0 <__mingw_pformat+0x315>
   1400033b8:	db 28                	fldt   (%rax)
   1400033ba:	db 7c 24 40          	fstpt  0x40(%rsp)
   1400033be:	eb 0d                	jmp    1400033cd <__mingw_pformat+0x322>
   1400033c0:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   1400033c5:	dd 44 24 20          	fldl   0x20(%rsp)
   1400033c9:	db 7c 24 40          	fstpt  0x40(%rsp)
   1400033cd:	e8 18 f3 ff ff       	call   1400026ea <__pformat_float>
   1400033d2:	e9 dd 01 00 00       	jmp    1400035b4 <__mingw_pformat+0x509>
   1400033d7:	83 4c 24 78 20       	orl    $0x20,0x78(%rsp)
   1400033dc:	f6 44 24 78 04       	testb  $0x4,0x78(%rsp)
   1400033e1:	48 8b 03             	mov    (%rbx),%rax
   1400033e4:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   1400033e9:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   1400033ee:	74 08                	je     1400033f8 <__mingw_pformat+0x34d>
   1400033f0:	db 28                	fldt   (%rax)
   1400033f2:	db 7c 24 40          	fstpt  0x40(%rsp)
   1400033f6:	eb 0d                	jmp    140003405 <__mingw_pformat+0x35a>
   1400033f8:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   1400033fd:	dd 44 24 20          	fldl   0x20(%rsp)
   140003401:	db 7c 24 40          	fstpt  0x40(%rsp)
   140003405:	e8 7f fb ff ff       	call   140002f89 <__pformat_gfloat>
   14000340a:	e9 a5 01 00 00       	jmp    1400035b4 <__mingw_pformat+0x509>
   14000340f:	83 4c 24 78 20       	orl    $0x20,0x78(%rsp)
   140003414:	44 8b 4c 24 78       	mov    0x78(%rsp),%r9d
   140003419:	48 8b 03             	mov    (%rbx),%rax
   14000341c:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   140003421:	41 f7 c1 04 00 00 00 	test   $0x4,%r9d
   140003428:	0f 84 9d 00 00 00    	je     1400034cb <__mingw_pformat+0x420>
   14000342e:	db 28                	fldt   (%rax)
   140003430:	d9 c0                	fld    %st(0)
   140003432:	db 7c 24 20          	fstpt  0x20(%rsp)
   140003436:	4c 8b 54 24 20       	mov    0x20(%rsp),%r10
   14000343b:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
   140003440:	4c 89 d0             	mov    %r10,%rax
   140003443:	0f bf ca             	movswl %dx,%ecx
   140003446:	48 c1 e8 20          	shr    $0x20,%rax
   14000344a:	44 8d 1c 09          	lea    (%rcx,%rcx,1),%r11d
   14000344e:	db 7c 24 60          	fstpt  0x60(%rsp)
   140003452:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
   140003457:	45 0f b7 db          	movzwl %r11w,%r11d
   14000345b:	44 09 d0             	or     %r10d,%eax
   14000345e:	41 89 c2             	mov    %eax,%r10d
   140003461:	41 f7 da             	neg    %r10d
   140003464:	41 09 c2             	or     %eax,%r10d
   140003467:	41 c1 ea 1f          	shr    $0x1f,%r10d
   14000346b:	45 09 da             	or     %r11d,%r10d
   14000346e:	41 bb fe ff 00 00    	mov    $0xfffe,%r11d
   140003474:	45 29 d3             	sub    %r10d,%r11d
   140003477:	41 c1 eb 10          	shr    $0x10,%r11d
   14000347b:	0f 85 87 00 00 00    	jne    140003508 <__mingw_pformat+0x45d>
   140003481:	66 85 d2             	test   %dx,%dx
   140003484:	79 09                	jns    14000348f <__mingw_pformat+0x3e4>
   140003486:	41 80 c9 80          	or     $0x80,%r9b
   14000348a:	44 89 4c 24 78       	mov    %r9d,0x78(%rsp)
   14000348f:	66 81 e2 ff 7f       	and    $0x7fff,%dx
   140003494:	74 10                	je     1400034a6 <__mingw_pformat+0x3fb>
   140003496:	66 81 fa ff 7f       	cmp    $0x7fff,%dx
   14000349b:	75 1a                	jne    1400034b7 <__mingw_pformat+0x40c>
   14000349d:	85 c0                	test   %eax,%eax
   14000349f:	75 16                	jne    1400034b7 <__mingw_pformat+0x40c>
   1400034a1:	e9 b4 00 00 00       	jmp    14000355a <__mingw_pformat+0x4af>
   1400034a6:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   1400034ab:	48 85 c0             	test   %rax,%rax
   1400034ae:	74 0c                	je     1400034bc <__mingw_pformat+0x411>
   1400034b0:	ba 02 c0 ff ff       	mov    $0xffffc002,%edx
   1400034b5:	eb 05                	jmp    1400034bc <__mingw_pformat+0x411>
   1400034b7:	66 81 ea ff 3f       	sub    $0x3fff,%dx
   1400034bc:	66 89 54 24 68       	mov    %dx,0x68(%rsp)
   1400034c1:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   1400034c6:	e9 e4 00 00 00       	jmp    1400035af <__mingw_pformat+0x504>
   1400034cb:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   1400034d0:	dd 44 24 20          	fldl   0x20(%rsp)
   1400034d4:	48 89 c1             	mov    %rax,%rcx
   1400034d7:	89 c2                	mov    %eax,%edx
   1400034d9:	48 c1 e9 20          	shr    $0x20,%rcx
   1400034dd:	f7 da                	neg    %edx
   1400034df:	41 89 ca             	mov    %ecx,%r10d
   1400034e2:	09 c2                	or     %eax,%edx
   1400034e4:	db 7c 24 20          	fstpt  0x20(%rsp)
   1400034e8:	db 6c 24 20          	fldt   0x20(%rsp)
   1400034ec:	41 81 e2 ff ff ff 7f 	and    $0x7fffffff,%r10d
   1400034f3:	c1 ea 1f             	shr    $0x1f,%edx
   1400034f6:	44 09 d2             	or     %r10d,%edx
   1400034f9:	41 ba 00 00 f0 7f    	mov    $0x7ff00000,%r10d
   1400034ff:	db 7c 24 60          	fstpt  0x60(%rsp)
   140003503:	41 39 d2             	cmp    %edx,%r10d
   140003506:	79 13                	jns    14000351b <__mingw_pformat+0x470>
   140003508:	48 8d 15 57 3e 00 00 	lea    0x3e57(%rip),%rdx        # 140007366 <.rdata+0x16>
   14000350f:	31 c9                	xor    %ecx,%ecx
   140003511:	e8 99 ee ff ff       	call   1400023af <__pformat_emit_inf_or_nan>
   140003516:	e9 99 00 00 00       	jmp    1400035b4 <__mingw_pformat+0x509>
   14000351b:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
   140003520:	66 85 d2             	test   %dx,%dx
   140003523:	79 09                	jns    14000352e <__mingw_pformat+0x483>
   140003525:	41 80 c9 80          	or     $0x80,%r9b
   140003529:	44 89 4c 24 78       	mov    %r9d,0x78(%rsp)
   14000352e:	41 89 c9             	mov    %ecx,%r9d
   140003531:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
   140003537:	41 81 e1 ff ff 0f 00 	and    $0xfffff,%r9d
   14000353e:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
   140003544:	41 0f 95 c2          	setne  %r10b
   140003548:	41 09 c1             	or     %eax,%r9d
   14000354b:	0f 95 c0             	setne  %al
   14000354e:	41 08 c2             	or     %al,%r10b
   140003551:	75 16                	jne    140003569 <__mingw_pformat+0x4be>
   140003553:	41 09 c9             	or     %ecx,%r9d
   140003556:	74 11                	je     140003569 <__mingw_pformat+0x4be>
   140003558:	89 d1                	mov    %edx,%ecx
   14000355a:	81 e1 00 80 00 00    	and    $0x8000,%ecx
   140003560:	48 8d 15 03 3e 00 00 	lea    0x3e03(%rip),%rdx        # 14000736a <.rdata+0x1a>
   140003567:	eb a8                	jmp    140003511 <__mingw_pformat+0x466>
   140003569:	66 81 e2 ff 7f       	and    $0x7fff,%dx
   14000356e:	74 1d                	je     14000358d <__mingw_pformat+0x4e2>
   140003570:	66 81 fa 00 3c       	cmp    $0x3c00,%dx
   140003575:	7f 16                	jg     14000358d <__mingw_pformat+0x4e2>
   140003577:	0f bf c2             	movswl %dx,%eax
   14000357a:	b9 01 3c 00 00       	mov    $0x3c01,%ecx
   14000357f:	29 c1                	sub    %eax,%ecx
   140003581:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   140003586:	01 ca                	add    %ecx,%edx
   140003588:	48 d3 e8             	shr    %cl,%rax
   14000358b:	eb 16                	jmp    1400035a3 <__mingw_pformat+0x4f8>
   14000358d:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
   140003592:	66 85 d2             	test   %dx,%dx
   140003595:	75 0c                	jne    1400035a3 <__mingw_pformat+0x4f8>
   140003597:	48 85 c0             	test   %rax,%rax
   14000359a:	74 0c                	je     1400035a8 <__mingw_pformat+0x4fd>
   14000359c:	ba 05 fc ff ff       	mov    $0xfffffc05,%edx
   1400035a1:	eb 05                	jmp    1400035a8 <__mingw_pformat+0x4fd>
   1400035a3:	66 81 ea fc 3f       	sub    $0x3ffc,%dx
   1400035a8:	48 c1 e8 03          	shr    $0x3,%rax
   1400035ac:	48 89 c1             	mov    %rax,%rcx
   1400035af:	e8 d9 f5 ff ff       	call   140002b8d <__pformat_emit_xfloat.isra.0>
   1400035b4:	48 83 c3 08          	add    $0x8,%rbx
   1400035b8:	e9 63 02 00 00       	jmp    140003820 <__mingw_pformat+0x775>
   1400035bd:	48 8b 13             	mov    (%rbx),%rdx
   1400035c0:	48 63 84 24 94 00 00 	movslq 0x94(%rsp),%rax
   1400035c7:	00 
   1400035c8:	48 83 c3 08          	add    $0x8,%rbx
   1400035cc:	41 83 fe 05          	cmp    $0x5,%r14d
   1400035d0:	75 07                	jne    1400035d9 <__mingw_pformat+0x52e>
   1400035d2:	88 02                	mov    %al,(%rdx)
   1400035d4:	e9 47 02 00 00       	jmp    140003820 <__mingw_pformat+0x775>
   1400035d9:	41 83 fe 01          	cmp    $0x1,%r14d
   1400035dd:	75 08                	jne    1400035e7 <__mingw_pformat+0x53c>
   1400035df:	66 89 02             	mov    %ax,(%rdx)
   1400035e2:	e9 39 02 00 00       	jmp    140003820 <__mingw_pformat+0x775>
   1400035e7:	41 83 fe 02          	cmp    $0x2,%r14d
   1400035eb:	74 0e                	je     1400035fb <__mingw_pformat+0x550>
   1400035ed:	41 83 fe 03          	cmp    $0x3,%r14d
   1400035f1:	75 08                	jne    1400035fb <__mingw_pformat+0x550>
   1400035f3:	48 89 02             	mov    %rax,(%rdx)
   1400035f6:	e9 25 02 00 00       	jmp    140003820 <__mingw_pformat+0x775>
   1400035fb:	89 02                	mov    %eax,(%rdx)
   1400035fd:	e9 1e 02 00 00       	jmp    140003820 <__mingw_pformat+0x775>
   140003602:	41 80 79 01 68       	cmpb   $0x68,0x1(%r9)
   140003607:	41 be 01 00 00 00    	mov    $0x1,%r14d
   14000360d:	0f 85 eb 01 00 00    	jne    1400037fe <__mingw_pformat+0x753>
   140003613:	49 8d 69 02          	lea    0x2(%r9),%rbp
   140003617:	41 be 05 00 00 00    	mov    $0x5,%r14d
   14000361d:	e9 dc 01 00 00       	jmp    1400037fe <__mingw_pformat+0x753>
   140003622:	41 8a 41 01          	mov    0x1(%r9),%al
   140003626:	3c 36                	cmp    $0x36,%al
   140003628:	75 14                	jne    14000363e <__mingw_pformat+0x593>
   14000362a:	41 80 79 02 34       	cmpb   $0x34,0x2(%r9)
   14000362f:	0f 85 c3 01 00 00    	jne    1400037f8 <__mingw_pformat+0x74d>
   140003635:	49 8d 69 03          	lea    0x3(%r9),%rbp
   140003639:	e9 ba 01 00 00       	jmp    1400037f8 <__mingw_pformat+0x74d>
   14000363e:	3c 33                	cmp    $0x33,%al
   140003640:	0f 85 b2 01 00 00    	jne    1400037f8 <__mingw_pformat+0x74d>
   140003646:	41 80 79 02 32       	cmpb   $0x32,0x2(%r9)
   14000364b:	0f 85 a7 01 00 00    	jne    1400037f8 <__mingw_pformat+0x74d>
   140003651:	49 8d 69 03          	lea    0x3(%r9),%rbp
   140003655:	e9 ab 01 00 00       	jmp    140003805 <__mingw_pformat+0x75a>
   14000365a:	41 80 79 01 6c       	cmpb   $0x6c,0x1(%r9)
   14000365f:	0f 85 a0 01 00 00    	jne    140003805 <__mingw_pformat+0x75a>
   140003665:	49 8d 69 02          	lea    0x2(%r9),%rbp
   140003669:	e9 8a 01 00 00       	jmp    1400037f8 <__mingw_pformat+0x74d>
   14000366e:	83 4c 24 78 04       	orl    $0x4,0x78(%rsp)
   140003673:	e9 86 01 00 00       	jmp    1400037fe <__mingw_pformat+0x753>
   140003678:	83 fe 01             	cmp    $0x1,%esi
   14000367b:	0f 87 7d 01 00 00    	ja     1400037fe <__mingw_pformat+0x753>
   140003681:	31 d2                	xor    %edx,%edx
   140003683:	4c 8d bc 24 80 00 00 	lea    0x80(%rsp),%r15
   14000368a:	00 
   14000368b:	89 94 24 80 00 00 00 	mov    %edx,0x80(%rsp)
   140003692:	eb 4c                	jmp    1400036e0 <__mingw_pformat+0x635>
   140003694:	4d 85 ff             	test   %r15,%r15
   140003697:	0f 84 61 01 00 00    	je     1400037fe <__mingw_pformat+0x753>
   14000369d:	f7 c6 05 00 00 00    	test   $0x5,%esi
   1400036a3:	0f 85 64 01 00 00    	jne    14000380d <__mingw_pformat+0x762>
   1400036a9:	8b 13                	mov    (%rbx),%edx
   1400036ab:	48 8d 43 08          	lea    0x8(%rbx),%rax
   1400036af:	41 89 17             	mov    %edx,(%r15)
   1400036b2:	85 d2                	test   %edx,%edx
   1400036b4:	0f 89 58 01 00 00    	jns    140003812 <__mingw_pformat+0x767>
   1400036ba:	85 f6                	test   %esi,%esi
   1400036bc:	75 11                	jne    1400036cf <__mingw_pformat+0x624>
   1400036be:	81 4c 24 78 00 04 00 	orl    $0x400,0x78(%rsp)
   1400036c5:	00 
   1400036c6:	f7 5c 24 7c          	negl   0x7c(%rsp)
   1400036ca:	e9 43 01 00 00       	jmp    140003812 <__mingw_pformat+0x767>
   1400036cf:	c7 84 24 80 00 00 00 	movl   $0xffffffff,0x80(%rsp)
   1400036d6:	ff ff ff ff 
   1400036da:	48 89 c3             	mov    %rax,%rbx
   1400036dd:	45 31 ff             	xor    %r15d,%r15d
   1400036e0:	be 02 00 00 00       	mov    $0x2,%esi
   1400036e5:	e9 2e 01 00 00       	jmp    140003818 <__mingw_pformat+0x76d>
   1400036ea:	85 f6                	test   %esi,%esi
   1400036ec:	0f 85 26 01 00 00    	jne    140003818 <__mingw_pformat+0x76d>
   1400036f2:	8b 44 24 78          	mov    0x78(%rsp),%eax
   1400036f6:	80 cc 08             	or     $0x8,%ah
   1400036f9:	e9 f4 00 00 00       	jmp    1400037f2 <__mingw_pformat+0x747>
   1400036fe:	85 f6                	test   %esi,%esi
   140003700:	0f 85 12 01 00 00    	jne    140003818 <__mingw_pformat+0x76d>
   140003706:	8b 44 24 78          	mov    0x78(%rsp),%eax
   14000370a:	80 cc 01             	or     $0x1,%ah
   14000370d:	e9 e0 00 00 00       	jmp    1400037f2 <__mingw_pformat+0x747>
   140003712:	85 f6                	test   %esi,%esi
   140003714:	0f 85 fe 00 00 00    	jne    140003818 <__mingw_pformat+0x76d>
   14000371a:	8b 44 24 78          	mov    0x78(%rsp),%eax
   14000371e:	80 cc 04             	or     $0x4,%ah
   140003721:	e9 cc 00 00 00       	jmp    1400037f2 <__mingw_pformat+0x747>
   140003726:	85 f6                	test   %esi,%esi
   140003728:	0f 85 ea 00 00 00    	jne    140003818 <__mingw_pformat+0x76d>
   14000372e:	4c 8d 4c 24 60       	lea    0x60(%rsp),%r9
   140003733:	31 c0                	xor    %eax,%eax
   140003735:	81 4c 24 78 00 10 00 	orl    $0x1000,0x78(%rsp)
   14000373c:	00 
   14000373d:	4c 89 4c 24 20       	mov    %r9,0x20(%rsp)
   140003742:	89 44 24 60          	mov    %eax,0x60(%rsp)
   140003746:	e8 8d 22 00 00       	call   1400059d8 <localeconv>
   14000374b:	4c 8b 4c 24 20       	mov    0x20(%rsp),%r9
   140003750:	48 8d 4c 24 5e       	lea    0x5e(%rsp),%rcx
   140003755:	41 b8 10 00 00 00    	mov    $0x10,%r8d
   14000375b:	48 8b 50 08          	mov    0x8(%rax),%rdx
   14000375f:	e8 28 20 00 00       	call   14000578c <mbrtowc>
   140003764:	85 c0                	test   %eax,%eax
   140003766:	7e 0d                	jle    140003775 <__mingw_pformat+0x6ca>
   140003768:	66 8b 54 24 5e       	mov    0x5e(%rsp),%dx
   14000376d:	66 89 94 24 90 00 00 	mov    %dx,0x90(%rsp)
   140003774:	00 
   140003775:	89 84 24 8c 00 00 00 	mov    %eax,0x8c(%rsp)
   14000377c:	e9 97 00 00 00       	jmp    140003818 <__mingw_pformat+0x76d>
   140003781:	85 f6                	test   %esi,%esi
   140003783:	0f 85 8f 00 00 00    	jne    140003818 <__mingw_pformat+0x76d>
   140003789:	83 4c 24 78 40       	orl    $0x40,0x78(%rsp)
   14000378e:	e9 85 00 00 00       	jmp    140003818 <__mingw_pformat+0x76d>
   140003793:	85 f6                	test   %esi,%esi
   140003795:	75 0a                	jne    1400037a1 <__mingw_pformat+0x6f6>
   140003797:	81 4c 24 78 00 02 00 	orl    $0x200,0x78(%rsp)
   14000379e:	00 
   14000379f:	eb 77                	jmp    140003818 <__mingw_pformat+0x76d>
   1400037a1:	83 e8 30             	sub    $0x30,%eax
   1400037a4:	3c 09                	cmp    $0x9,%al
   1400037a6:	77 36                	ja     1400037de <__mingw_pformat+0x733>
   1400037a8:	83 fe 04             	cmp    $0x4,%esi
   1400037ab:	74 31                	je     1400037de <__mingw_pformat+0x733>
   1400037ad:	85 f6                	test   %esi,%esi
   1400037af:	74 0c                	je     1400037bd <__mingw_pformat+0x712>
   1400037b1:	83 fe 02             	cmp    $0x2,%esi
   1400037b4:	75 0c                	jne    1400037c2 <__mingw_pformat+0x717>
   1400037b6:	be 03 00 00 00       	mov    $0x3,%esi
   1400037bb:	eb 05                	jmp    1400037c2 <__mingw_pformat+0x717>
   1400037bd:	be 01 00 00 00       	mov    $0x1,%esi
   1400037c2:	4d 85 ff             	test   %r15,%r15
   1400037c5:	74 51                	je     140003818 <__mingw_pformat+0x76d>
   1400037c7:	41 8b 07             	mov    (%r15),%eax
   1400037ca:	6b d0 0a             	imul   $0xa,%eax,%edx
   1400037cd:	8d 54 11 d0          	lea    -0x30(%rcx,%rdx,1),%edx
   1400037d1:	83 e9 30             	sub    $0x30,%ecx
   1400037d4:	85 c0                	test   %eax,%eax
   1400037d6:	0f 49 ca             	cmovns %edx,%ecx
   1400037d9:	41 89 0f             	mov    %ecx,(%r15)
   1400037dc:	eb 3a                	jmp    140003818 <__mingw_pformat+0x76d>
   1400037de:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   1400037e3:	b9 25 00 00 00       	mov    $0x25,%ecx
   1400037e8:	4c 89 e5             	mov    %r12,%rbp
   1400037eb:	e8 c6 e9 ff ff       	call   1400021b6 <__pformat_putc>
   1400037f0:	eb 2e                	jmp    140003820 <__mingw_pformat+0x775>
   1400037f2:	89 44 24 78          	mov    %eax,0x78(%rsp)
   1400037f6:	eb 20                	jmp    140003818 <__mingw_pformat+0x76d>
   1400037f8:	41 be 03 00 00 00    	mov    $0x3,%r14d
   1400037fe:	be 04 00 00 00       	mov    $0x4,%esi
   140003803:	eb 13                	jmp    140003818 <__mingw_pformat+0x76d>
   140003805:	41 be 02 00 00 00    	mov    $0x2,%r14d
   14000380b:	eb f1                	jmp    1400037fe <__mingw_pformat+0x753>
   14000380d:	45 31 ff             	xor    %r15d,%r15d
   140003810:	eb ec                	jmp    1400037fe <__mingw_pformat+0x753>
   140003812:	48 89 c3             	mov    %rax,%rbx
   140003815:	45 31 ff             	xor    %r15d,%r15d
   140003818:	49 89 e9             	mov    %rbp,%r9
   14000381b:	e9 70 f9 ff ff       	jmp    140003190 <__mingw_pformat+0xe5>
   140003820:	49 89 e9             	mov    %rbp,%r9
   140003823:	e9 35 f9 ff ff       	jmp    14000315d <__mingw_pformat+0xb2>
   140003828:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   14000382d:	e8 84 e9 ff ff       	call   1400021b6 <__pformat_putc>
   140003832:	4d 89 e1             	mov    %r12,%r9
   140003835:	e9 23 f9 ff ff       	jmp    14000315d <__mingw_pformat+0xb2>
   14000383a:	8b 84 24 94 00 00 00 	mov    0x94(%rsp),%eax
   140003841:	48 81 c4 a8 00 00 00 	add    $0xa8,%rsp
   140003848:	5b                   	pop    %rbx
   140003849:	5e                   	pop    %rsi
   14000384a:	5f                   	pop    %rdi
   14000384b:	5d                   	pop    %rbp
   14000384c:	41 5c                	pop    %r12
   14000384e:	41 5d                	pop    %r13
   140003850:	41 5e                	pop    %r14
   140003852:	41 5f                	pop    %r15
   140003854:	c3                   	ret
   140003855:	90                   	nop
   140003856:	90                   	nop
   140003857:	90                   	nop
   140003858:	90                   	nop
   140003859:	90                   	nop
   14000385a:	90                   	nop
   14000385b:	90                   	nop
   14000385c:	90                   	nop
   14000385d:	90                   	nop
   14000385e:	90                   	nop
   14000385f:	90                   	nop

0000000140003860 <__rv_alloc_D2A>:
   140003860:	53                   	push   %rbx
   140003861:	48 83 ec 20          	sub    $0x20,%rsp
   140003865:	31 db                	xor    %ebx,%ebx
   140003867:	b8 04 00 00 00       	mov    $0x4,%eax
   14000386c:	8d 50 17             	lea    0x17(%rax),%edx
   14000386f:	39 ca                	cmp    %ecx,%edx
   140003871:	7d 06                	jge    140003879 <__rv_alloc_D2A+0x19>
   140003873:	ff c3                	inc    %ebx
   140003875:	01 c0                	add    %eax,%eax
   140003877:	eb f3                	jmp    14000386c <__rv_alloc_D2A+0xc>
   140003879:	89 d9                	mov    %ebx,%ecx
   14000387b:	e8 f3 12 00 00       	call   140004b73 <__Balloc_D2A>
   140003880:	89 18                	mov    %ebx,(%rax)
   140003882:	48 83 c0 04          	add    $0x4,%rax
   140003886:	48 83 c4 20          	add    $0x20,%rsp
   14000388a:	5b                   	pop    %rbx
   14000388b:	c3                   	ret

000000014000388c <__nrv_alloc_D2A>:
   14000388c:	56                   	push   %rsi
   14000388d:	53                   	push   %rbx
   14000388e:	48 83 ec 28          	sub    $0x28,%rsp
   140003892:	48 89 ce             	mov    %rcx,%rsi
   140003895:	44 89 c1             	mov    %r8d,%ecx
   140003898:	48 89 d3             	mov    %rdx,%rbx
   14000389b:	e8 c0 ff ff ff       	call   140003860 <__rv_alloc_D2A>
   1400038a0:	45 31 c0             	xor    %r8d,%r8d
   1400038a3:	42 8a 0c 06          	mov    (%rsi,%r8,1),%cl
   1400038a7:	4c 89 c2             	mov    %r8,%rdx
   1400038aa:	42 88 0c 00          	mov    %cl,(%rax,%r8,1)
   1400038ae:	49 ff c0             	inc    %r8
   1400038b1:	84 c9                	test   %cl,%cl
   1400038b3:	75 ee                	jne    1400038a3 <__nrv_alloc_D2A+0x17>
   1400038b5:	48 85 db             	test   %rbx,%rbx
   1400038b8:	74 06                	je     1400038c0 <__nrv_alloc_D2A+0x34>
   1400038ba:	48 01 c2             	add    %rax,%rdx
   1400038bd:	48 89 13             	mov    %rdx,(%rbx)
   1400038c0:	48 83 c4 28          	add    $0x28,%rsp
   1400038c4:	5b                   	pop    %rbx
   1400038c5:	5e                   	pop    %rsi
   1400038c6:	c3                   	ret

00000001400038c7 <__freedtoa>:
   1400038c7:	ba 01 00 00 00       	mov    $0x1,%edx
   1400038cc:	48 89 c8             	mov    %rcx,%rax
   1400038cf:	8b 49 fc             	mov    -0x4(%rcx),%ecx
   1400038d2:	d3 e2                	shl    %cl,%edx
   1400038d4:	89 48 04             	mov    %ecx,0x4(%rax)
   1400038d7:	48 8d 48 fc          	lea    -0x4(%rax),%rcx
   1400038db:	89 50 08             	mov    %edx,0x8(%rax)
   1400038de:	e9 44 13 00 00       	jmp    140004c27 <__Bfree_D2A>

00000001400038e3 <__quorem_D2A>:
   1400038e3:	41 57                	push   %r15
   1400038e5:	41 56                	push   %r14
   1400038e7:	41 55                	push   %r13
   1400038e9:	41 54                	push   %r12
   1400038eb:	55                   	push   %rbp
   1400038ec:	57                   	push   %rdi
   1400038ed:	56                   	push   %rsi
   1400038ee:	53                   	push   %rbx
   1400038ef:	48 83 ec 38          	sub    $0x38,%rsp
   1400038f3:	31 c0                	xor    %eax,%eax
   1400038f5:	8b 5a 14             	mov    0x14(%rdx),%ebx
   1400038f8:	48 89 ce             	mov    %rcx,%rsi
   1400038fb:	49 89 d1             	mov    %rdx,%r9
   1400038fe:	39 59 14             	cmp    %ebx,0x14(%rcx)
   140003901:	0f 8c fe 00 00 00    	jl     140003a05 <__quorem_D2A+0x122>
   140003907:	ff cb                	dec    %ebx
   140003909:	48 8d 6a 18          	lea    0x18(%rdx),%rbp
   14000390d:	48 8d 7e 18          	lea    0x18(%rsi),%rdi
   140003911:	31 d2                	xor    %edx,%edx
   140003913:	48 63 cb             	movslq %ebx,%rcx
   140003916:	48 c1 e1 02          	shl    $0x2,%rcx
   14000391a:	4c 8d 6c 0d 00       	lea    0x0(%rbp,%rcx,1),%r13
   14000391f:	48 01 f9             	add    %rdi,%rcx
   140003922:	41 8b 45 00          	mov    0x0(%r13),%eax
   140003926:	44 8d 40 01          	lea    0x1(%rax),%r8d
   14000392a:	8b 01                	mov    (%rcx),%eax
   14000392c:	41 f7 f0             	div    %r8d
   14000392f:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
   140003933:	41 89 c4             	mov    %eax,%r12d
   140003936:	44 39 01             	cmp    %r8d,(%rcx)
   140003939:	72 62                	jb     14000399d <__quorem_D2A+0xba>
   14000393b:	48 89 e8             	mov    %rbp,%rax
   14000393e:	49 89 fa             	mov    %rdi,%r10
   140003941:	45 31 f6             	xor    %r14d,%r14d
   140003944:	45 31 db             	xor    %r11d,%r11d
   140003947:	45 89 e7             	mov    %r12d,%r15d
   14000394a:	8b 10                	mov    (%rax),%edx
   14000394c:	45 8b 02             	mov    (%r10),%r8d
   14000394f:	48 83 c0 04          	add    $0x4,%rax
   140003953:	49 83 c2 04          	add    $0x4,%r10
   140003957:	49 0f af d7          	imul   %r15,%rdx
   14000395b:	4c 01 f2             	add    %r14,%rdx
   14000395e:	49 89 d6             	mov    %rdx,%r14
   140003961:	89 d2                	mov    %edx,%edx
   140003963:	49 29 d0             	sub    %rdx,%r8
   140003966:	49 c1 ee 20          	shr    $0x20,%r14
   14000396a:	4d 29 d8             	sub    %r11,%r8
   14000396d:	4d 89 c3             	mov    %r8,%r11
   140003970:	45 89 42 fc          	mov    %r8d,-0x4(%r10)
   140003974:	49 c1 eb 20          	shr    $0x20,%r11
   140003978:	41 83 e3 01          	and    $0x1,%r11d
   14000397c:	49 39 c5             	cmp    %rax,%r13
   14000397f:	73 c9                	jae    14000394a <__quorem_D2A+0x67>
   140003981:	83 39 00             	cmpl   $0x0,(%rcx)
   140003984:	75 17                	jne    14000399d <__quorem_D2A+0xba>
   140003986:	48 83 e9 04          	sub    $0x4,%rcx
   14000398a:	48 39 cf             	cmp    %rcx,%rdi
   14000398d:	72 05                	jb     140003994 <__quorem_D2A+0xb1>
   14000398f:	89 5e 14             	mov    %ebx,0x14(%rsi)
   140003992:	eb 09                	jmp    14000399d <__quorem_D2A+0xba>
   140003994:	83 39 00             	cmpl   $0x0,(%rcx)
   140003997:	75 f6                	jne    14000398f <__quorem_D2A+0xac>
   140003999:	ff cb                	dec    %ebx
   14000399b:	eb e9                	jmp    140003986 <__quorem_D2A+0xa3>
   14000399d:	4c 89 ca             	mov    %r9,%rdx
   1400039a0:	48 89 f1             	mov    %rsi,%rcx
   1400039a3:	e8 b9 16 00 00       	call   140005061 <__cmp_D2A>
   1400039a8:	85 c0                	test   %eax,%eax
   1400039aa:	78 56                	js     140003a02 <__quorem_D2A+0x11f>
   1400039ac:	48 89 fa             	mov    %rdi,%rdx
   1400039af:	31 c9                	xor    %ecx,%ecx
   1400039b1:	8b 02                	mov    (%rdx),%eax
   1400039b3:	44 8b 45 00          	mov    0x0(%rbp),%r8d
   1400039b7:	48 83 c5 04          	add    $0x4,%rbp
   1400039bb:	48 83 c2 04          	add    $0x4,%rdx
   1400039bf:	4c 29 c0             	sub    %r8,%rax
   1400039c2:	48 29 c8             	sub    %rcx,%rax
   1400039c5:	48 89 c1             	mov    %rax,%rcx
   1400039c8:	89 42 fc             	mov    %eax,-0x4(%rdx)
   1400039cb:	48 c1 e9 20          	shr    $0x20,%rcx
   1400039cf:	83 e1 01             	and    $0x1,%ecx
   1400039d2:	49 39 ed             	cmp    %rbp,%r13
   1400039d5:	73 da                	jae    1400039b1 <__quorem_D2A+0xce>
   1400039d7:	48 63 c3             	movslq %ebx,%rax
   1400039da:	48 8d 04 87          	lea    (%rdi,%rax,4),%rax
   1400039de:	83 38 00             	cmpl   $0x0,(%rax)
   1400039e1:	75 17                	jne    1400039fa <__quorem_D2A+0x117>
   1400039e3:	48 83 e8 04          	sub    $0x4,%rax
   1400039e7:	48 39 c7             	cmp    %rax,%rdi
   1400039ea:	72 05                	jb     1400039f1 <__quorem_D2A+0x10e>
   1400039ec:	89 5e 14             	mov    %ebx,0x14(%rsi)
   1400039ef:	eb 09                	jmp    1400039fa <__quorem_D2A+0x117>
   1400039f1:	83 38 00             	cmpl   $0x0,(%rax)
   1400039f4:	75 f6                	jne    1400039ec <__quorem_D2A+0x109>
   1400039f6:	ff cb                	dec    %ebx
   1400039f8:	eb e9                	jmp    1400039e3 <__quorem_D2A+0x100>
   1400039fa:	44 8b 64 24 2c       	mov    0x2c(%rsp),%r12d
   1400039ff:	41 ff c4             	inc    %r12d
   140003a02:	44 89 e0             	mov    %r12d,%eax
   140003a05:	48 83 c4 38          	add    $0x38,%rsp
   140003a09:	5b                   	pop    %rbx
   140003a0a:	5e                   	pop    %rsi
   140003a0b:	5f                   	pop    %rdi
   140003a0c:	5d                   	pop    %rbp
   140003a0d:	41 5c                	pop    %r12
   140003a0f:	41 5d                	pop    %r13
   140003a11:	41 5e                	pop    %r14
   140003a13:	41 5f                	pop    %r15
   140003a15:	c3                   	ret
   140003a16:	90                   	nop
   140003a17:	90                   	nop
   140003a18:	90                   	nop
   140003a19:	90                   	nop
   140003a1a:	90                   	nop
   140003a1b:	90                   	nop
   140003a1c:	90                   	nop
   140003a1d:	90                   	nop
   140003a1e:	90                   	nop
   140003a1f:	90                   	nop

0000000140003a20 <__gdtoa>:
   140003a20:	41 57                	push   %r15
   140003a22:	41 56                	push   %r14
   140003a24:	41 55                	push   %r13
   140003a26:	41 54                	push   %r12
   140003a28:	55                   	push   %rbp
   140003a29:	57                   	push   %rdi
   140003a2a:	56                   	push   %rsi
   140003a2b:	53                   	push   %rbx
   140003a2c:	48 81 ec b8 00 00 00 	sub    $0xb8,%rsp
   140003a33:	0f 29 b4 24 a0 00 00 	movaps %xmm6,0xa0(%rsp)
   140003a3a:	00 
   140003a3b:	8b 84 24 20 01 00 00 	mov    0x120(%rsp),%eax
   140003a42:	45 8b 29             	mov    (%r9),%r13d
   140003a45:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
   140003a49:	8b 84 24 28 01 00 00 	mov    0x128(%rsp),%eax
   140003a50:	48 89 4c 24 68       	mov    %rcx,0x68(%rsp)
   140003a55:	89 44 24 50          	mov    %eax,0x50(%rsp)
   140003a59:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
   140003a60:	00 
   140003a61:	89 94 24 84 00 00 00 	mov    %edx,0x84(%rsp)
   140003a68:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
   140003a6d:	48 8b 84 24 38 01 00 	mov    0x138(%rsp),%rax
   140003a74:	00 
   140003a75:	4c 89 44 24 58       	mov    %r8,0x58(%rsp)
   140003a7a:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
   140003a7f:	44 89 e8             	mov    %r13d,%eax
   140003a82:	83 e0 cf             	and    $0xffffffcf,%eax
   140003a85:	4c 89 8c 24 88 00 00 	mov    %r9,0x88(%rsp)
   140003a8c:	00 
   140003a8d:	41 89 01             	mov    %eax,(%r9)
   140003a90:	44 89 e8             	mov    %r13d,%eax
   140003a93:	83 e0 07             	and    $0x7,%eax
   140003a96:	83 f8 03             	cmp    $0x3,%eax
   140003a99:	74 2f                	je     140003aca <__gdtoa+0xaa>
   140003a9b:	45 89 ee             	mov    %r13d,%r14d
   140003a9e:	41 83 e6 04          	and    $0x4,%r14d
   140003aa2:	75 14                	jne    140003ab8 <__gdtoa+0x98>
   140003aa4:	85 c0                	test   %eax,%eax
   140003aa6:	0f 84 58 01 00 00    	je     140003c04 <__gdtoa+0x1e4>
   140003aac:	44 8b 21             	mov    (%rcx),%r12d
   140003aaf:	b8 20 00 00 00       	mov    $0x20,%eax
   140003ab4:	31 c9                	xor    %ecx,%ecx
   140003ab6:	eb 6e                	jmp    140003b26 <__gdtoa+0x106>
   140003ab8:	83 f8 04             	cmp    $0x4,%eax
   140003abb:	74 2c                	je     140003ae9 <__gdtoa+0xc9>
   140003abd:	45 31 db             	xor    %r11d,%r11d
   140003ac0:	4c 89 5c 24 30       	mov    %r11,0x30(%rsp)
   140003ac5:	e9 60 0e 00 00       	jmp    14000492a <__gdtoa+0xf0a>
   140003aca:	48 8b 44 24 78       	mov    0x78(%rsp),%rax
   140003acf:	48 8b 54 24 70       	mov    0x70(%rsp),%rdx
   140003ad4:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   140003ada:	48 8d 0d ff 39 00 00 	lea    0x39ff(%rip),%rcx        # 1400074e0 <.rdata>
   140003ae1:	c7 00 00 80 ff ff    	movl   $0xffff8000,(%rax)
   140003ae7:	eb 1d                	jmp    140003b06 <__gdtoa+0xe6>
   140003ae9:	48 8b 44 24 78       	mov    0x78(%rsp),%rax
   140003aee:	48 8b 54 24 70       	mov    0x70(%rsp),%rdx
   140003af3:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   140003af9:	48 8d 0d e9 39 00 00 	lea    0x39e9(%rip),%rcx        # 1400074e9 <.rdata+0x9>
   140003b00:	c7 00 00 80 ff ff    	movl   $0xffff8000,(%rax)
   140003b06:	0f 28 b4 24 a0 00 00 	movaps 0xa0(%rsp),%xmm6
   140003b0d:	00 
   140003b0e:	48 81 c4 b8 00 00 00 	add    $0xb8,%rsp
   140003b15:	5b                   	pop    %rbx
   140003b16:	5e                   	pop    %rsi
   140003b17:	5f                   	pop    %rdi
   140003b18:	5d                   	pop    %rbp
   140003b19:	41 5c                	pop    %r12
   140003b1b:	41 5d                	pop    %r13
   140003b1d:	41 5e                	pop    %r14
   140003b1f:	41 5f                	pop    %r15
   140003b21:	e9 66 fd ff ff       	jmp    14000388c <__nrv_alloc_D2A>
   140003b26:	41 39 c4             	cmp    %eax,%r12d
   140003b29:	7e 06                	jle    140003b31 <__gdtoa+0x111>
   140003b2b:	01 c0                	add    %eax,%eax
   140003b2d:	ff c1                	inc    %ecx
   140003b2f:	eb f5                	jmp    140003b26 <__gdtoa+0x106>
   140003b31:	e8 3d 10 00 00       	call   140004b73 <__Balloc_D2A>
   140003b36:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
   140003b3b:	31 d2                	xor    %edx,%edx
   140003b3d:	48 89 c3             	mov    %rax,%rbx
   140003b40:	41 8d 44 24 ff       	lea    -0x1(%r12),%eax
   140003b45:	c1 f8 05             	sar    $0x5,%eax
   140003b48:	48 98                	cltq
   140003b4a:	48 8d 0c 87          	lea    (%rdi,%rax,4),%rcx
   140003b4e:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
   140003b53:	44 8b 04 17          	mov    (%rdi,%rdx,1),%r8d
   140003b57:	44 89 44 13 18       	mov    %r8d,0x18(%rbx,%rdx,1)
   140003b5c:	48 83 c2 04          	add    $0x4,%rdx
   140003b60:	4c 8d 04 17          	lea    (%rdi,%rdx,1),%r8
   140003b64:	4c 39 c1             	cmp    %r8,%rcx
   140003b67:	73 e5                	jae    140003b4e <__gdtoa+0x12e>
   140003b69:	48 8d 57 01          	lea    0x1(%rdi),%rdx
   140003b6d:	48 ff c1             	inc    %rcx
   140003b70:	48 c1 e0 02          	shl    $0x2,%rax
   140003b74:	48 39 d1             	cmp    %rdx,%rcx
   140003b77:	ba 00 00 00 00       	mov    $0x0,%edx
   140003b7c:	48 0f 42 c2          	cmovb  %rdx,%rax
   140003b80:	48 83 c0 04          	add    $0x4,%rax
   140003b84:	48 c1 f8 02          	sar    $0x2,%rax
   140003b88:	83 7c 83 14 00       	cmpl   $0x0,0x14(%rbx,%rax,4)
   140003b8d:	75 14                	jne    140003ba3 <__gdtoa+0x183>
   140003b8f:	48 ff c8             	dec    %rax
   140003b92:	89 44 24 60          	mov    %eax,0x60(%rsp)
   140003b96:	85 c0                	test   %eax,%eax
   140003b98:	75 ee                	jne    140003b88 <__gdtoa+0x168>
   140003b9a:	45 31 d2             	xor    %r10d,%r10d
   140003b9d:	44 89 53 14          	mov    %r10d,0x14(%rbx)
   140003ba1:	eb 1a                	jmp    140003bbd <__gdtoa+0x19d>
   140003ba3:	8d 50 ff             	lea    -0x1(%rax),%edx
   140003ba6:	89 43 14             	mov    %eax,0x14(%rbx)
   140003ba9:	c1 e0 05             	shl    $0x5,%eax
   140003bac:	48 63 d2             	movslq %edx,%rdx
   140003baf:	0f bd 54 93 18       	bsr    0x18(%rbx,%rdx,4),%edx
   140003bb4:	83 f2 1f             	xor    $0x1f,%edx
   140003bb7:	29 d0                	sub    %edx,%eax
   140003bb9:	89 44 24 60          	mov    %eax,0x60(%rsp)
   140003bbd:	48 89 d9             	mov    %rbx,%rcx
   140003bc0:	e8 76 0e 00 00       	call   140004a3b <__trailz_D2A>
   140003bc5:	8b ac 24 84 00 00 00 	mov    0x84(%rsp),%ebp
   140003bcc:	89 84 24 9c 00 00 00 	mov    %eax,0x9c(%rsp)
   140003bd3:	89 c2                	mov    %eax,%edx
   140003bd5:	85 c0                	test   %eax,%eax
   140003bd7:	74 1d                	je     140003bf6 <__gdtoa+0x1d6>
   140003bd9:	48 89 d9             	mov    %rbx,%rcx
   140003bdc:	e8 6f 0d 00 00       	call   140004950 <__rshift_D2A>
   140003be1:	8b 84 24 9c 00 00 00 	mov    0x9c(%rsp),%eax
   140003be8:	29 44 24 60          	sub    %eax,0x60(%rsp)
   140003bec:	8b b4 24 84 00 00 00 	mov    0x84(%rsp),%esi
   140003bf3:	8d 2c 30             	lea    (%rax,%rsi,1),%ebp
   140003bf6:	83 7b 14 00          	cmpl   $0x0,0x14(%rbx)
   140003bfa:	75 34                	jne    140003c30 <__gdtoa+0x210>
   140003bfc:	48 89 d9             	mov    %rbx,%rcx
   140003bff:	e8 23 10 00 00       	call   140004c27 <__Bfree_D2A>
   140003c04:	48 8b 44 24 78       	mov    0x78(%rsp),%rax
   140003c09:	48 8b 54 24 70       	mov    0x70(%rsp),%rdx
   140003c0e:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   140003c14:	48 8d 0d d2 38 00 00 	lea    0x38d2(%rip),%rcx        # 1400074ed <.rdata+0xd>
   140003c1b:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140003c21:	e8 66 fc ff ff       	call   14000388c <__nrv_alloc_D2A>
   140003c26:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
   140003c2b:	e9 fa 0c 00 00       	jmp    14000492a <__gdtoa+0xf0a>
   140003c30:	48 8d 94 24 9c 00 00 	lea    0x9c(%rsp),%rdx
   140003c37:	00 
   140003c38:	48 89 d9             	mov    %rbx,%rcx
   140003c3b:	e8 95 15 00 00       	call   1400051d5 <__b2d_D2A>
   140003c40:	8b 7c 24 60          	mov    0x60(%rsp),%edi
   140003c44:	66 48 0f 7e c0       	movq   %xmm0,%rax
   140003c49:	48 89 c2             	mov    %rax,%rdx
   140003c4c:	8d 4c 3d 00          	lea    0x0(%rbp,%rdi,1),%ecx
   140003c50:	89 c0                	mov    %eax,%eax
   140003c52:	48 c1 ea 20          	shr    $0x20,%rdx
   140003c56:	44 8d 41 ff          	lea    -0x1(%rcx),%r8d
   140003c5a:	81 e2 ff ff 0f 00    	and    $0xfffff,%edx
   140003c60:	f2 41 0f 2a c8       	cvtsi2sd %r8d,%xmm1
   140003c65:	f2 0f 59 0d 9b 38 00 	mulsd  0x389b(%rip),%xmm1        # 140007508 <.rdata+0x28>
   140003c6c:	00 
   140003c6d:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
   140003c73:	49 89 d1             	mov    %rdx,%r9
   140003c76:	49 c1 e1 20          	shl    $0x20,%r9
   140003c7a:	4c 09 c8             	or     %r9,%rax
   140003c7d:	45 89 c1             	mov    %r8d,%r9d
   140003c80:	66 48 0f 6e c0       	movq   %rax,%xmm0
   140003c85:	f2 0f 5c 05 63 38 00 	subsd  0x3863(%rip),%xmm0        # 1400074f0 <.rdata+0x10>
   140003c8c:	00 
   140003c8d:	f2 0f 59 05 63 38 00 	mulsd  0x3863(%rip),%xmm0        # 1400074f8 <.rdata+0x18>
   140003c94:	00 
   140003c95:	f2 0f 58 05 63 38 00 	addsd  0x3863(%rip),%xmm0        # 140007500 <.rdata+0x20>
   140003c9c:	00 
   140003c9d:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
   140003ca1:	45 85 c0             	test   %r8d,%r8d
   140003ca4:	79 09                	jns    140003caf <__gdtoa+0x28f>
   140003ca6:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   140003cac:	41 29 c9             	sub    %ecx,%r9d
   140003caf:	41 81 e9 35 04 00 00 	sub    $0x435,%r9d
   140003cb6:	45 85 c9             	test   %r9d,%r9d
   140003cb9:	7e 11                	jle    140003ccc <__gdtoa+0x2ac>
   140003cbb:	f2 41 0f 2a c9       	cvtsi2sd %r9d,%xmm1
   140003cc0:	f2 0f 59 0d 48 38 00 	mulsd  0x3848(%rip),%xmm1        # 140007510 <.rdata+0x30>
   140003cc7:	00 
   140003cc8:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
   140003ccc:	0f 57 c9             	xorps  %xmm1,%xmm1
   140003ccf:	f2 0f 2c f0          	cvttsd2si %xmm0,%esi
   140003cd3:	66 0f 2f c8          	comisd %xmm0,%xmm1
   140003cd7:	76 0e                	jbe    140003ce7 <__gdtoa+0x2c7>
   140003cd9:	f2 0f 2a ce          	cvtsi2sd %esi,%xmm1
   140003cdd:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
   140003ce1:	7a 02                	jp     140003ce5 <__gdtoa+0x2c5>
   140003ce3:	74 02                	je     140003ce7 <__gdtoa+0x2c7>
   140003ce5:	ff ce                	dec    %esi
   140003ce7:	c7 84 24 80 00 00 00 	movl   $0x1,0x80(%rsp)
   140003cee:	01 00 00 00 
   140003cf2:	45 89 c1             	mov    %r8d,%r9d
   140003cf5:	89 c0                	mov    %eax,%eax
   140003cf7:	41 c1 e1 14          	shl    $0x14,%r9d
   140003cfb:	44 01 ca             	add    %r9d,%edx
   140003cfe:	89 d2                	mov    %edx,%edx
   140003d00:	48 c1 e2 20          	shl    $0x20,%rdx
   140003d04:	48 09 d0             	or     %rdx,%rax
   140003d07:	66 48 0f 6e f0       	movq   %rax,%xmm6
   140003d0c:	83 fe 16             	cmp    $0x16,%esi
   140003d0f:	77 22                	ja     140003d33 <__gdtoa+0x313>
   140003d11:	48 8b 15 b8 3a 00 00 	mov    0x3ab8(%rip),%rdx        # 1400077d0 <.refptr.__tens_D2A>
   140003d18:	48 63 c6             	movslq %esi,%rax
   140003d1b:	f2 0f 10 04 c2       	movsd  (%rdx,%rax,8),%xmm0
   140003d20:	66 0f 2f c6          	comisd %xmm6,%xmm0
   140003d24:	76 02                	jbe    140003d28 <__gdtoa+0x308>
   140003d26:	ff ce                	dec    %esi
   140003d28:	45 31 c9             	xor    %r9d,%r9d
   140003d2b:	44 89 8c 24 80 00 00 	mov    %r9d,0x80(%rsp)
   140003d32:	00 
   140003d33:	8b 44 24 60          	mov    0x60(%rsp),%eax
   140003d37:	31 d2                	xor    %edx,%edx
   140003d39:	89 54 24 3c          	mov    %edx,0x3c(%rsp)
   140003d3d:	44 29 c0             	sub    %r8d,%eax
   140003d40:	41 89 c7             	mov    %eax,%r15d
   140003d43:	41 ff cf             	dec    %r15d
   140003d46:	79 0e                	jns    140003d56 <__gdtoa+0x336>
   140003d48:	ba 01 00 00 00       	mov    $0x1,%edx
   140003d4d:	45 31 ff             	xor    %r15d,%r15d
   140003d50:	29 c2                	sub    %eax,%edx
   140003d52:	89 54 24 3c          	mov    %edx,0x3c(%rsp)
   140003d56:	85 f6                	test   %esi,%esi
   140003d58:	78 0c                	js     140003d66 <__gdtoa+0x346>
   140003d5a:	89 74 24 64          	mov    %esi,0x64(%rsp)
   140003d5e:	41 01 f7             	add    %esi,%r15d
   140003d61:	45 31 c0             	xor    %r8d,%r8d
   140003d64:	eb 10                	jmp    140003d76 <__gdtoa+0x356>
   140003d66:	31 c0                	xor    %eax,%eax
   140003d68:	29 74 24 3c          	sub    %esi,0x3c(%rsp)
   140003d6c:	41 89 f0             	mov    %esi,%r8d
   140003d6f:	89 44 24 64          	mov    %eax,0x64(%rsp)
   140003d73:	41 f7 d8             	neg    %r8d
   140003d76:	83 7c 24 2c 09       	cmpl   $0x9,0x2c(%rsp)
   140003d7b:	77 10                	ja     140003d8d <__gdtoa+0x36d>
   140003d7d:	83 7c 24 2c 05       	cmpl   $0x5,0x2c(%rsp)
   140003d82:	7e 0f                	jle    140003d93 <__gdtoa+0x373>
   140003d84:	83 6c 24 2c 04       	subl   $0x4,0x2c(%rsp)
   140003d89:	31 d2                	xor    %edx,%edx
   140003d8b:	eb 15                	jmp    140003da2 <__gdtoa+0x382>
   140003d8d:	31 ff                	xor    %edi,%edi
   140003d8f:	89 7c 24 2c          	mov    %edi,0x2c(%rsp)
   140003d93:	81 c1 fd 03 00 00    	add    $0x3fd,%ecx
   140003d99:	81 f9 f7 07 00 00    	cmp    $0x7f7,%ecx
   140003d9f:	0f 96 c2             	setbe  %dl
   140003da2:	83 7c 24 2c 04       	cmpl   $0x4,0x2c(%rsp)
   140003da7:	74 50                	je     140003df9 <__gdtoa+0x3d9>
   140003da9:	83 7c 24 2c 05       	cmpl   $0x5,0x2c(%rsp)
   140003dae:	74 6e                	je     140003e1e <__gdtoa+0x3fe>
   140003db0:	83 7c 24 2c 02       	cmpl   $0x2,0x2c(%rsp)
   140003db5:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
   140003dbc:	00 
   140003dbd:	74 42                	je     140003e01 <__gdtoa+0x3e1>
   140003dbf:	83 7c 24 2c 03       	cmpl   $0x3,0x2c(%rsp)
   140003dc4:	74 60                	je     140003e26 <__gdtoa+0x406>
   140003dc6:	f2 41 0f 2a c4       	cvtsi2sd %r12d,%xmm0
   140003dcb:	45 31 db             	xor    %r11d,%r11d
   140003dce:	c7 44 24 44 01 00 00 	movl   $0x1,0x44(%rsp)
   140003dd5:	00 
   140003dd6:	83 cf ff             	or     $0xffffffff,%edi
   140003dd9:	f2 0f 59 05 37 37 00 	mulsd  0x3737(%rip),%xmm0        # 140007518 <.rdata+0x38>
   140003de0:	00 
   140003de1:	44 89 5c 24 50       	mov    %r11d,0x50(%rsp)
   140003de6:	c7 44 24 48 ff ff ff 	movl   $0xffffffff,0x48(%rsp)
   140003ded:	ff 
   140003dee:	f2 0f 2c c8          	cvttsd2si %xmm0,%ecx
   140003df2:	83 c1 03             	add    $0x3,%ecx
   140003df5:	89 c8                	mov    %ecx,%eax
   140003df7:	eb 4e                	jmp    140003e47 <__gdtoa+0x427>
   140003df9:	c7 44 24 44 01 00 00 	movl   $0x1,0x44(%rsp)
   140003e00:	00 
   140003e01:	83 7c 24 50 00       	cmpl   $0x0,0x50(%rsp)
   140003e06:	b9 01 00 00 00       	mov    $0x1,%ecx
   140003e0b:	0f 4f 4c 24 50       	cmovg  0x50(%rsp),%ecx
   140003e10:	89 4c 24 48          	mov    %ecx,0x48(%rsp)
   140003e14:	89 c8                	mov    %ecx,%eax
   140003e16:	89 cf                	mov    %ecx,%edi
   140003e18:	89 4c 24 50          	mov    %ecx,0x50(%rsp)
   140003e1c:	eb 29                	jmp    140003e47 <__gdtoa+0x427>
   140003e1e:	c7 44 24 44 01 00 00 	movl   $0x1,0x44(%rsp)
   140003e25:	00 
   140003e26:	8b 44 24 50          	mov    0x50(%rsp),%eax
   140003e2a:	01 f0                	add    %esi,%eax
   140003e2c:	8d 78 01             	lea    0x1(%rax),%edi
   140003e2f:	89 44 24 48          	mov    %eax,0x48(%rsp)
   140003e33:	85 ff                	test   %edi,%edi
   140003e35:	7e 06                	jle    140003e3d <__gdtoa+0x41d>
   140003e37:	89 f8                	mov    %edi,%eax
   140003e39:	89 f9                	mov    %edi,%ecx
   140003e3b:	eb 0a                	jmp    140003e47 <__gdtoa+0x427>
   140003e3d:	b8 01 00 00 00       	mov    $0x1,%eax
   140003e42:	b9 01 00 00 00       	mov    $0x1,%ecx
   140003e47:	88 54 24 4c          	mov    %dl,0x4c(%rsp)
   140003e4b:	44 89 44 24 40       	mov    %r8d,0x40(%rsp)
   140003e50:	89 84 24 9c 00 00 00 	mov    %eax,0x9c(%rsp)
   140003e57:	e8 04 fa ff ff       	call   140003860 <__rv_alloc_D2A>
   140003e5c:	45 31 d2             	xor    %r10d,%r10d
   140003e5f:	83 7c 24 2c 01       	cmpl   $0x1,0x2c(%rsp)
   140003e64:	44 8b 44 24 40       	mov    0x40(%rsp),%r8d
   140003e69:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
   140003e6e:	8a 54 24 4c          	mov    0x4c(%rsp),%dl
   140003e72:	44 89 54 24 38       	mov    %r10d,0x38(%rsp)
   140003e77:	7e 33                	jle    140003eac <__gdtoa+0x48c>
   140003e79:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
   140003e7e:	8b 40 0c             	mov    0xc(%rax),%eax
   140003e81:	ff c8                	dec    %eax
   140003e83:	89 44 24 38          	mov    %eax,0x38(%rsp)
   140003e87:	74 23                	je     140003eac <__gdtoa+0x48c>
   140003e89:	b8 02 00 00 00       	mov    $0x2,%eax
   140003e8e:	0f 49 44 24 38       	cmovns 0x38(%rsp),%eax
   140003e93:	41 83 e5 08          	and    $0x8,%r13d
   140003e97:	89 44 24 38          	mov    %eax,0x38(%rsp)
   140003e9b:	74 0f                	je     140003eac <__gdtoa+0x48c>
   140003e9d:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
   140003ea1:	b8 03 00 00 00       	mov    $0x3,%eax
   140003ea6:	29 c8                	sub    %ecx,%eax
   140003ea8:	89 44 24 38          	mov    %eax,0x38(%rsp)
   140003eac:	83 ff 0e             	cmp    $0xe,%edi
   140003eaf:	0f 96 c1             	setbe  %cl
   140003eb2:	20 d1                	and    %dl,%cl
   140003eb4:	0f 84 ff 01 00 00    	je     1400040b9 <__gdtoa+0x699>
   140003eba:	8b 44 24 38          	mov    0x38(%rsp),%eax
   140003ebe:	09 f0                	or     %esi,%eax
   140003ec0:	89 44 24 40          	mov    %eax,0x40(%rsp)
   140003ec4:	0f 85 ef 01 00 00    	jne    1400040b9 <__gdtoa+0x699>
   140003eca:	45 31 c9             	xor    %r9d,%r9d
   140003ecd:	83 bc 24 80 00 00 00 	cmpl   $0x0,0x80(%rsp)
   140003ed4:	00 
   140003ed5:	0f 28 c6             	movaps %xmm6,%xmm0
   140003ed8:	44 89 8c 24 9c 00 00 	mov    %r9d,0x9c(%rsp)
   140003edf:	00 
   140003ee0:	74 38                	je     140003f1a <__gdtoa+0x4fa>
   140003ee2:	f2 0f 10 0d 36 36 00 	movsd  0x3636(%rip),%xmm1        # 140007520 <.rdata+0x40>
   140003ee9:	00 
   140003eea:	66 0f 2f ce          	comisd %xmm6,%xmm1
   140003eee:	76 2a                	jbe    140003f1a <__gdtoa+0x4fa>
   140003ef0:	85 ff                	test   %edi,%edi
   140003ef2:	74 2a                	je     140003f1e <__gdtoa+0x4fe>
   140003ef4:	83 7c 24 48 00       	cmpl   $0x0,0x48(%rsp)
   140003ef9:	0f 8e ba 01 00 00    	jle    1400040b9 <__gdtoa+0x699>
   140003eff:	f2 0f 59 05 21 36 00 	mulsd  0x3621(%rip),%xmm0        # 140007528 <.rdata+0x48>
   140003f06:	00 
   140003f07:	8b 54 24 48          	mov    0x48(%rsp),%edx
   140003f0b:	b8 03 00 00 00       	mov    $0x3,%eax
   140003f10:	c7 44 24 40 ff ff ff 	movl   $0xffffffff,0x40(%rsp)
   140003f17:	ff 
   140003f18:	eb 0b                	jmp    140003f25 <__gdtoa+0x505>
   140003f1a:	89 fa                	mov    %edi,%edx
   140003f1c:	eb 02                	jmp    140003f20 <__gdtoa+0x500>
   140003f1e:	31 d2                	xor    %edx,%edx
   140003f20:	b8 02 00 00 00       	mov    $0x2,%eax
   140003f25:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
   140003f29:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
   140003f2d:	f2 0f 58 0d fb 35 00 	addsd  0x35fb(%rip),%xmm1        # 140007530 <.rdata+0x50>
   140003f34:	00 
   140003f35:	66 48 0f 7e c8       	movq   %xmm1,%rax
   140003f3a:	49 89 c1             	mov    %rax,%r9
   140003f3d:	89 c0                	mov    %eax,%eax
   140003f3f:	49 c1 e9 20          	shr    $0x20,%r9
   140003f43:	41 81 e9 00 00 40 03 	sub    $0x3400000,%r9d
   140003f4a:	49 c1 e1 20          	shl    $0x20,%r9
   140003f4e:	4c 09 c8             	or     %r9,%rax
   140003f51:	66 48 0f 6e c8       	movq   %rax,%xmm1
   140003f56:	85 d2                	test   %edx,%edx
   140003f58:	75 28                	jne    140003f82 <__gdtoa+0x562>
   140003f5a:	f2 0f 5c 05 d6 35 00 	subsd  0x35d6(%rip),%xmm0        # 140007538 <.rdata+0x58>
   140003f61:	00 
   140003f62:	66 0f 2f c1          	comisd %xmm1,%xmm0
   140003f66:	0f 87 62 05 00 00    	ja     1400044ce <__gdtoa+0xaae>
   140003f6c:	0f 57 0d cd 35 00 00 	xorps  0x35cd(%rip),%xmm1        # 140007540 <.rdata+0x60>
   140003f73:	66 0f 2f c8          	comisd %xmm0,%xmm1
   140003f77:	0f 87 80 01 00 00    	ja     1400040fd <__gdtoa+0x6dd>
   140003f7d:	e9 37 01 00 00       	jmp    1400040b9 <__gdtoa+0x699>
   140003f82:	4c 8b 0d 47 38 00 00 	mov    0x3847(%rip),%r9        # 1400077d0 <.refptr.__tens_D2A>
   140003f89:	8d 42 ff             	lea    -0x1(%rdx),%eax
   140003f8c:	83 7c 24 44 00       	cmpl   $0x0,0x44(%rsp)
   140003f91:	48 98                	cltq
   140003f93:	f2 41 0f 10 1c c1    	movsd  (%r9,%rax,8),%xmm3
   140003f99:	74 78                	je     140004013 <__gdtoa+0x5f3>
   140003f9b:	f2 0f 10 15 ad 35 00 	movsd  0x35ad(%rip),%xmm2        # 140007550 <.rdata+0x70>
   140003fa2:	00 
   140003fa3:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
   140003fa8:	f2 0f 5e d3          	divsd  %xmm3,%xmm2
   140003fac:	f2 0f 10 1d 6c 35 00 	movsd  0x356c(%rip),%xmm3        # 140007520 <.rdata+0x40>
   140003fb3:	00 
   140003fb4:	f2 0f 5c d1          	subsd  %xmm1,%xmm2
   140003fb8:	f2 0f 10 0d 68 35 00 	movsd  0x3568(%rip),%xmm1        # 140007528 <.rdata+0x48>
   140003fbf:	00 
   140003fc0:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
   140003fc4:	49 ff c5             	inc    %r13
   140003fc7:	f2 0f 2a e0          	cvtsi2sd %eax,%xmm4
   140003fcb:	83 c0 30             	add    $0x30,%eax
   140003fce:	41 88 45 ff          	mov    %al,-0x1(%r13)
   140003fd2:	f2 0f 5c c4          	subsd  %xmm4,%xmm0
   140003fd6:	66 0f 2f d0          	comisd %xmm0,%xmm2
   140003fda:	0f 87 ac 00 00 00    	ja     14000408c <__gdtoa+0x66c>
   140003fe0:	0f 28 e3             	movaps %xmm3,%xmm4
   140003fe3:	f2 0f 5c e0          	subsd  %xmm0,%xmm4
   140003fe7:	66 0f 2f d4          	comisd %xmm4,%xmm2
   140003feb:	0f 87 b1 01 00 00    	ja     1400041a2 <__gdtoa+0x782>
   140003ff1:	8b 84 24 9c 00 00 00 	mov    0x9c(%rsp),%eax
   140003ff8:	ff c0                	inc    %eax
   140003ffa:	89 84 24 9c 00 00 00 	mov    %eax,0x9c(%rsp)
   140004001:	39 d0                	cmp    %edx,%eax
   140004003:	0f 8d b0 00 00 00    	jge    1400040b9 <__gdtoa+0x699>
   140004009:	f2 0f 59 d1          	mulsd  %xmm1,%xmm2
   14000400d:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
   140004011:	eb ad                	jmp    140003fc0 <__gdtoa+0x5a0>
   140004013:	f2 0f 59 d9          	mulsd  %xmm1,%xmm3
   140004017:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
   14000401c:	0f 28 c8             	movaps %xmm0,%xmm1
   14000401f:	b8 01 00 00 00       	mov    $0x1,%eax
   140004024:	45 31 d2             	xor    %r10d,%r10d
   140004027:	0f 28 d3             	movaps %xmm3,%xmm2
   14000402a:	f2 0f 10 1d f6 34 00 	movsd  0x34f6(%rip),%xmm3        # 140007528 <.rdata+0x48>
   140004031:	00 
   140004032:	89 84 24 9c 00 00 00 	mov    %eax,0x9c(%rsp)
   140004039:	f2 0f 2c c1          	cvttsd2si %xmm1,%eax
   14000403d:	85 c0                	test   %eax,%eax
   14000403f:	74 0b                	je     14000404c <__gdtoa+0x62c>
   140004041:	f2 0f 2a e0          	cvtsi2sd %eax,%xmm4
   140004045:	41 89 ca             	mov    %ecx,%r10d
   140004048:	f2 0f 5c cc          	subsd  %xmm4,%xmm1
   14000404c:	83 c0 30             	add    $0x30,%eax
   14000404f:	49 ff c5             	inc    %r13
   140004052:	41 88 45 ff          	mov    %al,-0x1(%r13)
   140004056:	8b 84 24 9c 00 00 00 	mov    0x9c(%rsp),%eax
   14000405d:	39 d0                	cmp    %edx,%eax
   14000405f:	75 4a                	jne    1400040ab <__gdtoa+0x68b>
   140004061:	45 84 d2             	test   %r10b,%r10b
   140004064:	74 03                	je     140004069 <__gdtoa+0x649>
   140004066:	0f 28 c1             	movaps %xmm1,%xmm0
   140004069:	f2 0f 10 0d df 34 00 	movsd  0x34df(%rip),%xmm1        # 140007550 <.rdata+0x70>
   140004070:	00 
   140004071:	0f 28 da             	movaps %xmm2,%xmm3
   140004074:	f2 0f 58 d9          	addsd  %xmm1,%xmm3
   140004078:	66 0f 2f c3          	comisd %xmm3,%xmm0
   14000407c:	0f 87 20 01 00 00    	ja     1400041a2 <__gdtoa+0x782>
   140004082:	f2 0f 5c ca          	subsd  %xmm2,%xmm1
   140004086:	66 0f 2f c8          	comisd %xmm0,%xmm1
   14000408a:	76 2d                	jbe    1400040b9 <__gdtoa+0x699>
   14000408c:	0f 57 c9             	xorps  %xmm1,%xmm1
   14000408f:	31 c0                	xor    %eax,%eax
   140004091:	ba 01 00 00 00       	mov    $0x1,%edx
   140004096:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
   14000409a:	0f 9a c0             	setp   %al
   14000409d:	0f 45 c2             	cmovne %edx,%eax
   1400040a0:	c1 e0 04             	shl    $0x4,%eax
   1400040a3:	41 89 c6             	mov    %eax,%r14d
   1400040a6:	e9 1b 08 00 00       	jmp    1400048c6 <__gdtoa+0xea6>
   1400040ab:	f2 0f 59 cb          	mulsd  %xmm3,%xmm1
   1400040af:	ff c0                	inc    %eax
   1400040b1:	41 89 ca             	mov    %ecx,%r10d
   1400040b4:	e9 79 ff ff ff       	jmp    140004032 <__gdtoa+0x612>
   1400040b9:	85 ed                	test   %ebp,%ebp
   1400040bb:	0f 88 22 01 00 00    	js     1400041e3 <__gdtoa+0x7c3>
   1400040c1:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
   1400040c6:	39 70 14             	cmp    %esi,0x14(%rax)
   1400040c9:	0f 8c 14 01 00 00    	jl     1400041e3 <__gdtoa+0x7c3>
   1400040cf:	48 8b 15 fa 36 00 00 	mov    0x36fa(%rip),%rdx        # 1400077d0 <.refptr.__tens_D2A>
   1400040d6:	48 63 c6             	movslq %esi,%rax
   1400040d9:	83 7c 24 50 00       	cmpl   $0x0,0x50(%rsp)
   1400040de:	f2 0f 10 0c c2       	movsd  (%rdx,%rax,8),%xmm1
   1400040e3:	79 22                	jns    140004107 <__gdtoa+0x6e7>
   1400040e5:	85 ff                	test   %edi,%edi
   1400040e7:	7f 1e                	jg     140004107 <__gdtoa+0x6e7>
   1400040e9:	75 12                	jne    1400040fd <__gdtoa+0x6dd>
   1400040eb:	f2 0f 59 0d 45 34 00 	mulsd  0x3445(%rip),%xmm1        # 140007538 <.rdata+0x58>
   1400040f2:	00 
   1400040f3:	66 0f 2f ce          	comisd %xmm6,%xmm1
   1400040f7:	0f 82 cd 03 00 00    	jb     1400044ca <__gdtoa+0xaaa>
   1400040fd:	45 31 e4             	xor    %r12d,%r12d
   140004100:	31 ed                	xor    %ebp,%ebp
   140004102:	e9 a7 03 00 00       	jmp    1400044ae <__gdtoa+0xa8e>
   140004107:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
   14000410c:	f2 0f 10 1d 14 34 00 	movsd  0x3414(%rip),%xmm3        # 140007528 <.rdata+0x48>
   140004113:	00 
   140004114:	0f 28 c6             	movaps %xmm6,%xmm0
   140004117:	0f 57 e4             	xorps  %xmm4,%xmm4
   14000411a:	c7 84 24 9c 00 00 00 	movl   $0x1,0x9c(%rsp)
   140004121:	01 00 00 00 
   140004125:	0f 28 d0             	movaps %xmm0,%xmm2
   140004128:	49 ff c5             	inc    %r13
   14000412b:	f2 0f 5e d1          	divsd  %xmm1,%xmm2
   14000412f:	f2 0f 2c d2          	cvttsd2si %xmm2,%edx
   140004133:	f2 0f 2a d2          	cvtsi2sd %edx,%xmm2
   140004137:	8d 42 30             	lea    0x30(%rdx),%eax
   14000413a:	41 88 45 ff          	mov    %al,-0x1(%r13)
   14000413e:	f2 0f 59 d1          	mulsd  %xmm1,%xmm2
   140004142:	f2 0f 5c c2          	subsd  %xmm2,%xmm0
   140004146:	66 0f 2e c4          	ucomisd %xmm4,%xmm0
   14000414a:	7a 06                	jp     140004152 <__gdtoa+0x732>
   14000414c:	0f 84 a0 07 00 00    	je     1400048f2 <__gdtoa+0xed2>
   140004152:	8b 84 24 9c 00 00 00 	mov    0x9c(%rsp),%eax
   140004159:	39 f8                	cmp    %edi,%eax
   14000415b:	75 74                	jne    1400041d1 <__gdtoa+0x7b1>
   14000415d:	83 7c 24 38 00       	cmpl   $0x0,0x38(%rsp)
   140004162:	74 13                	je     140004177 <__gdtoa+0x757>
   140004164:	83 7c 24 38 01       	cmpl   $0x1,0x38(%rsp)
   140004169:	41 be 10 00 00 00    	mov    $0x10,%r14d
   14000416f:	0f 85 7d 07 00 00    	jne    1400048f2 <__gdtoa+0xed2>
   140004175:	eb 2f                	jmp    1400041a6 <__gdtoa+0x786>
   140004177:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
   14000417b:	66 0f 2f c1          	comisd %xmm1,%xmm0
   14000417f:	77 25                	ja     1400041a6 <__gdtoa+0x786>
   140004181:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
   140004185:	41 be 10 00 00 00    	mov    $0x10,%r14d
   14000418b:	0f 8a 61 07 00 00    	jp     1400048f2 <__gdtoa+0xed2>
   140004191:	0f 85 5b 07 00 00    	jne    1400048f2 <__gdtoa+0xed2>
   140004197:	80 e2 01             	and    $0x1,%dl
   14000419a:	0f 84 52 07 00 00    	je     1400048f2 <__gdtoa+0xed2>
   1400041a0:	eb 04                	jmp    1400041a6 <__gdtoa+0x786>
   1400041a2:	8b 74 24 40          	mov    0x40(%rsp),%esi
   1400041a6:	4c 89 e8             	mov    %r13,%rax
   1400041a9:	49 89 c5             	mov    %rax,%r13
   1400041ac:	8a 50 ff             	mov    -0x1(%rax),%dl
   1400041af:	48 ff c8             	dec    %rax
   1400041b2:	80 fa 39             	cmp    $0x39,%dl
   1400041b5:	75 0b                	jne    1400041c2 <__gdtoa+0x7a2>
   1400041b7:	48 39 44 24 30       	cmp    %rax,0x30(%rsp)
   1400041bc:	75 eb                	jne    1400041a9 <__gdtoa+0x789>
   1400041be:	ff c6                	inc    %esi
   1400041c0:	b2 30                	mov    $0x30,%dl
   1400041c2:	ff c2                	inc    %edx
   1400041c4:	41 be 20 00 00 00    	mov    $0x20,%r14d
   1400041ca:	88 10                	mov    %dl,(%rax)
   1400041cc:	e9 21 07 00 00       	jmp    1400048f2 <__gdtoa+0xed2>
   1400041d1:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
   1400041d5:	ff c0                	inc    %eax
   1400041d7:	89 84 24 9c 00 00 00 	mov    %eax,0x9c(%rsp)
   1400041de:	e9 42 ff ff ff       	jmp    140004125 <__gdtoa+0x705>
   1400041e3:	83 7c 24 44 00       	cmpl   $0x0,0x44(%rsp)
   1400041e8:	0f 84 d5 00 00 00    	je     1400042c3 <__gdtoa+0x8a3>
   1400041ee:	8b 44 24 60          	mov    0x60(%rsp),%eax
   1400041f2:	89 e9                	mov    %ebp,%ecx
   1400041f4:	41 29 c4             	sub    %eax,%r12d
   1400041f7:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
   1400041fc:	41 8d 54 24 01       	lea    0x1(%r12),%edx
   140004201:	44 29 e1             	sub    %r12d,%ecx
   140004204:	8b 40 04             	mov    0x4(%rax),%eax
   140004207:	89 94 24 9c 00 00 00 	mov    %edx,0x9c(%rsp)
   14000420e:	39 c1                	cmp    %eax,%ecx
   140004210:	7d 31                	jge    140004243 <__gdtoa+0x823>
   140004212:	8b 4c 24 2c          	mov    0x2c(%rsp),%ecx
   140004216:	8d 51 fd             	lea    -0x3(%rcx),%edx
   140004219:	83 e2 fd             	and    $0xfffffffd,%edx
   14000421c:	75 0a                	jne    140004228 <__gdtoa+0x808>
   14000421e:	8d 47 ff             	lea    -0x1(%rdi),%eax
   140004221:	41 39 c0             	cmp    %eax,%r8d
   140004224:	7d 29                	jge    14000424f <__gdtoa+0x82f>
   140004226:	eb 44                	jmp    14000426c <__gdtoa+0x84c>
   140004228:	89 ea                	mov    %ebp,%edx
   14000422a:	29 c2                	sub    %eax,%edx
   14000422c:	ff c2                	inc    %edx
   14000422e:	85 ff                	test   %edi,%edi
   140004230:	0f 9f c1             	setg   %cl
   140004233:	39 fa                	cmp    %edi,%edx
   140004235:	89 94 24 9c 00 00 00 	mov    %edx,0x9c(%rsp)
   14000423c:	0f 9f c0             	setg   %al
   14000423f:	84 c1                	test   %al,%cl
   140004241:	74 07                	je     14000424a <__gdtoa+0x82a>
   140004243:	83 7c 24 2c 01       	cmpl   $0x1,0x2c(%rsp)
   140004248:	7f d4                	jg     14000421e <__gdtoa+0x7fe>
   14000424a:	45 89 c4             	mov    %r8d,%r12d
   14000424d:	eb 13                	jmp    140004262 <__gdtoa+0x842>
   14000424f:	45 89 c4             	mov    %r8d,%r12d
   140004252:	41 29 c4             	sub    %eax,%r12d
   140004255:	85 ff                	test   %edi,%edi
   140004257:	78 35                	js     14000428e <__gdtoa+0x86e>
   140004259:	89 bc 24 9c 00 00 00 	mov    %edi,0x9c(%rsp)
   140004260:	89 fa                	mov    %edi,%edx
   140004262:	8b 44 24 3c          	mov    0x3c(%rsp),%eax
   140004266:	89 44 24 4c          	mov    %eax,0x4c(%rsp)
   14000426a:	eb 37                	jmp    1400042a3 <__gdtoa+0x883>
   14000426c:	8b 4c 24 3c          	mov    0x3c(%rsp),%ecx
   140004270:	89 c2                	mov    %eax,%edx
   140004272:	89 bc 24 9c 00 00 00 	mov    %edi,0x9c(%rsp)
   140004279:	45 31 e4             	xor    %r12d,%r12d
   14000427c:	44 29 c2             	sub    %r8d,%edx
   14000427f:	41 89 c0             	mov    %eax,%r8d
   140004282:	01 54 24 64          	add    %edx,0x64(%rsp)
   140004286:	89 fa                	mov    %edi,%edx
   140004288:	89 4c 24 4c          	mov    %ecx,0x4c(%rsp)
   14000428c:	eb 15                	jmp    1400042a3 <__gdtoa+0x883>
   14000428e:	8b 44 24 3c          	mov    0x3c(%rsp),%eax
   140004292:	31 c9                	xor    %ecx,%ecx
   140004294:	31 d2                	xor    %edx,%edx
   140004296:	89 8c 24 9c 00 00 00 	mov    %ecx,0x9c(%rsp)
   14000429d:	29 f8                	sub    %edi,%eax
   14000429f:	89 44 24 4c          	mov    %eax,0x4c(%rsp)
   1400042a3:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400042a8:	44 89 44 24 40       	mov    %r8d,0x40(%rsp)
   1400042ad:	41 01 d7             	add    %edx,%r15d
   1400042b0:	01 54 24 3c          	add    %edx,0x3c(%rsp)
   1400042b4:	e8 5a 0a 00 00       	call   140004d13 <__i2b_D2A>
   1400042b9:	44 8b 44 24 40       	mov    0x40(%rsp),%r8d
   1400042be:	48 89 c5             	mov    %rax,%rbp
   1400042c1:	eb 0d                	jmp    1400042d0 <__gdtoa+0x8b0>
   1400042c3:	8b 44 24 3c          	mov    0x3c(%rsp),%eax
   1400042c7:	45 89 c4             	mov    %r8d,%r12d
   1400042ca:	31 ed                	xor    %ebp,%ebp
   1400042cc:	89 44 24 4c          	mov    %eax,0x4c(%rsp)
   1400042d0:	83 7c 24 4c 00       	cmpl   $0x0,0x4c(%rsp)
   1400042d5:	74 24                	je     1400042fb <__gdtoa+0x8db>
   1400042d7:	45 85 ff             	test   %r15d,%r15d
   1400042da:	7e 1f                	jle    1400042fb <__gdtoa+0x8db>
   1400042dc:	8b 44 24 4c          	mov    0x4c(%rsp),%eax
   1400042e0:	44 39 7c 24 4c       	cmp    %r15d,0x4c(%rsp)
   1400042e5:	41 0f 4f c7          	cmovg  %r15d,%eax
   1400042e9:	29 44 24 3c          	sub    %eax,0x3c(%rsp)
   1400042ed:	29 44 24 4c          	sub    %eax,0x4c(%rsp)
   1400042f1:	89 84 24 9c 00 00 00 	mov    %eax,0x9c(%rsp)
   1400042f8:	41 29 c7             	sub    %eax,%r15d
   1400042fb:	45 85 c0             	test   %r8d,%r8d
   1400042fe:	74 5b                	je     14000435b <__gdtoa+0x93b>
   140004300:	83 7c 24 44 00       	cmpl   $0x0,0x44(%rsp)
   140004305:	74 46                	je     14000434d <__gdtoa+0x92d>
   140004307:	49 89 dd             	mov    %rbx,%r13
   14000430a:	45 85 e4             	test   %r12d,%r12d
   14000430d:	74 36                	je     140004345 <__gdtoa+0x925>
   14000430f:	48 89 e9             	mov    %rbp,%rcx
   140004312:	44 89 e2             	mov    %r12d,%edx
   140004315:	44 89 44 24 40       	mov    %r8d,0x40(%rsp)
   14000431a:	e8 24 0b 00 00       	call   140004e43 <__pow5mult_D2A>
   14000431f:	48 89 da             	mov    %rbx,%rdx
   140004322:	48 89 c1             	mov    %rax,%rcx
   140004325:	48 89 c5             	mov    %rax,%rbp
   140004328:	e8 0c 0a 00 00       	call   140004d39 <__mult_D2A>
   14000432d:	48 89 d9             	mov    %rbx,%rcx
   140004330:	49 89 c5             	mov    %rax,%r13
   140004333:	e8 ef 08 00 00       	call   140004c27 <__Bfree_D2A>
   140004338:	44 8b 44 24 40       	mov    0x40(%rsp),%r8d
   14000433d:	4c 89 eb             	mov    %r13,%rbx
   140004340:	45 29 e0             	sub    %r12d,%r8d
   140004343:	74 16                	je     14000435b <__gdtoa+0x93b>
   140004345:	44 89 c2             	mov    %r8d,%edx
   140004348:	4c 89 e9             	mov    %r13,%rcx
   14000434b:	eb 06                	jmp    140004353 <__gdtoa+0x933>
   14000434d:	44 89 c2             	mov    %r8d,%edx
   140004350:	48 89 d9             	mov    %rbx,%rcx
   140004353:	e8 eb 0a 00 00       	call   140004e43 <__pow5mult_D2A>
   140004358:	48 89 c3             	mov    %rax,%rbx
   14000435b:	b9 01 00 00 00       	mov    $0x1,%ecx
   140004360:	e8 ae 09 00 00       	call   140004d13 <__i2b_D2A>
   140004365:	83 7c 24 64 00       	cmpl   $0x0,0x64(%rsp)
   14000436a:	49 89 c4             	mov    %rax,%r12
   14000436d:	74 0f                	je     14000437e <__gdtoa+0x95e>
   14000436f:	8b 54 24 64          	mov    0x64(%rsp),%edx
   140004373:	48 89 c1             	mov    %rax,%rcx
   140004376:	e8 c8 0a 00 00       	call   140004e43 <__pow5mult_D2A>
   14000437b:	49 89 c4             	mov    %rax,%r12
   14000437e:	83 7c 24 2c 01       	cmpl   $0x1,0x2c(%rsp)
   140004383:	7f 33                	jg     1400043b8 <__gdtoa+0x998>
   140004385:	83 7c 24 60 01       	cmpl   $0x1,0x60(%rsp)
   14000438a:	75 2c                	jne    1400043b8 <__gdtoa+0x998>
   14000438c:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
   140004391:	8b 8c 24 84 00 00 00 	mov    0x84(%rsp),%ecx
   140004398:	31 d2                	xor    %edx,%edx
   14000439a:	89 54 24 60          	mov    %edx,0x60(%rsp)
   14000439e:	8b 40 04             	mov    0x4(%rax),%eax
   1400043a1:	ff c0                	inc    %eax
   1400043a3:	39 c8                	cmp    %ecx,%eax
   1400043a5:	7d 17                	jge    1400043be <__gdtoa+0x99e>
   1400043a7:	ff 44 24 3c          	incl   0x3c(%rsp)
   1400043ab:	41 ff c7             	inc    %r15d
   1400043ae:	c7 44 24 60 01 00 00 	movl   $0x1,0x60(%rsp)
   1400043b5:	00 
   1400043b6:	eb 06                	jmp    1400043be <__gdtoa+0x99e>
   1400043b8:	31 c0                	xor    %eax,%eax
   1400043ba:	89 44 24 60          	mov    %eax,0x60(%rsp)
   1400043be:	83 7c 24 64 00       	cmpl   $0x0,0x64(%rsp)
   1400043c3:	41 bd 1f 00 00 00    	mov    $0x1f,%r13d
   1400043c9:	74 13                	je     1400043de <__gdtoa+0x9be>
   1400043cb:	41 8b 44 24 14       	mov    0x14(%r12),%eax
   1400043d0:	ff c8                	dec    %eax
   1400043d2:	48 98                	cltq
   1400043d4:	45 0f bd 6c 84 18    	bsr    0x18(%r12,%rax,4),%r13d
   1400043da:	41 83 f5 1f          	xor    $0x1f,%r13d
   1400043de:	45 29 fd             	sub    %r15d,%r13d
   1400043e1:	8b 54 24 3c          	mov    0x3c(%rsp),%edx
   1400043e5:	41 83 ed 04          	sub    $0x4,%r13d
   1400043e9:	41 83 e5 1f          	and    $0x1f,%r13d
   1400043ed:	44 01 ea             	add    %r13d,%edx
   1400043f0:	44 89 ac 24 9c 00 00 	mov    %r13d,0x9c(%rsp)
   1400043f7:	00 
   1400043f8:	85 d2                	test   %edx,%edx
   1400043fa:	7e 0b                	jle    140004407 <__gdtoa+0x9e7>
   1400043fc:	48 89 d9             	mov    %rbx,%rcx
   1400043ff:	e8 4f 0b 00 00       	call   140004f53 <__lshift_D2A>
   140004404:	48 89 c3             	mov    %rax,%rbx
   140004407:	8b 94 24 9c 00 00 00 	mov    0x9c(%rsp),%edx
   14000440e:	44 01 fa             	add    %r15d,%edx
   140004411:	85 d2                	test   %edx,%edx
   140004413:	7e 0b                	jle    140004420 <__gdtoa+0xa00>
   140004415:	4c 89 e1             	mov    %r12,%rcx
   140004418:	e8 36 0b 00 00       	call   140004f53 <__lshift_D2A>
   14000441d:	49 89 c4             	mov    %rax,%r12
   140004420:	83 bc 24 80 00 00 00 	cmpl   $0x0,0x80(%rsp)
   140004427:	00 
   140004428:	74 0f                	je     140004439 <__gdtoa+0xa19>
   14000442a:	4c 89 e2             	mov    %r12,%rdx
   14000442d:	48 89 d9             	mov    %rbx,%rcx
   140004430:	e8 2c 0c 00 00       	call   140005061 <__cmp_D2A>
   140004435:	85 c0                	test   %eax,%eax
   140004437:	78 0a                	js     140004443 <__gdtoa+0xa23>
   140004439:	89 74 24 40          	mov    %esi,0x40(%rsp)
   14000443d:	89 7c 24 48          	mov    %edi,0x48(%rsp)
   140004441:	eb 34                	jmp    140004477 <__gdtoa+0xa57>
   140004443:	8d 46 ff             	lea    -0x1(%rsi),%eax
   140004446:	45 31 c0             	xor    %r8d,%r8d
   140004449:	48 89 d9             	mov    %rbx,%rcx
   14000444c:	ba 0a 00 00 00       	mov    $0xa,%edx
   140004451:	89 44 24 40          	mov    %eax,0x40(%rsp)
   140004455:	e8 19 08 00 00       	call   140004c73 <__multadd_D2A>
   14000445a:	83 7c 24 44 00       	cmpl   $0x0,0x44(%rsp)
   14000445f:	48 89 c3             	mov    %rax,%rbx
   140004462:	74 13                	je     140004477 <__gdtoa+0xa57>
   140004464:	48 89 e9             	mov    %rbp,%rcx
   140004467:	45 31 c0             	xor    %r8d,%r8d
   14000446a:	ba 0a 00 00 00       	mov    $0xa,%edx
   14000446f:	e8 ff 07 00 00       	call   140004c73 <__multadd_D2A>
   140004474:	48 89 c5             	mov    %rax,%rbp
   140004477:	83 7c 24 48 00       	cmpl   $0x0,0x48(%rsp)
   14000447c:	7f 6c                	jg     1400044ea <__gdtoa+0xaca>
   14000447e:	83 7c 24 2c 02       	cmpl   $0x2,0x2c(%rsp)
   140004483:	7e 65                	jle    1400044ea <__gdtoa+0xaca>
   140004485:	83 7c 24 48 00       	cmpl   $0x0,0x48(%rsp)
   14000448a:	75 22                	jne    1400044ae <__gdtoa+0xa8e>
   14000448c:	4c 89 e1             	mov    %r12,%rcx
   14000448f:	45 31 c0             	xor    %r8d,%r8d
   140004492:	ba 05 00 00 00       	mov    $0x5,%edx
   140004497:	e8 d7 07 00 00       	call   140004c73 <__multadd_D2A>
   14000449c:	48 89 d9             	mov    %rbx,%rcx
   14000449f:	48 89 c2             	mov    %rax,%rdx
   1400044a2:	49 89 c4             	mov    %rax,%r12
   1400044a5:	e8 b7 0b 00 00       	call   140005061 <__cmp_D2A>
   1400044aa:	85 c0                	test   %eax,%eax
   1400044ac:	7f 25                	jg     1400044d3 <__gdtoa+0xab3>
   1400044ae:	8b 44 24 50          	mov    0x50(%rsp),%eax
   1400044b2:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
   1400044b7:	31 f6                	xor    %esi,%esi
   1400044b9:	41 be 10 00 00 00    	mov    $0x10,%r14d
   1400044bf:	f7 d0                	not    %eax
   1400044c1:	89 44 24 40          	mov    %eax,0x40(%rsp)
   1400044c5:	e9 ef 03 00 00       	jmp    1400048b9 <__gdtoa+0xe99>
   1400044ca:	89 74 24 40          	mov    %esi,0x40(%rsp)
   1400044ce:	45 31 e4             	xor    %r12d,%r12d
   1400044d1:	31 ed                	xor    %ebp,%ebp
   1400044d3:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   1400044d8:	ff 44 24 40          	incl   0x40(%rsp)
   1400044dc:	31 f6                	xor    %esi,%esi
   1400044de:	c6 00 31             	movb   $0x31,(%rax)
   1400044e1:	4c 8d 68 01          	lea    0x1(%rax),%r13
   1400044e5:	e9 6e 02 00 00       	jmp    140004758 <__gdtoa+0xd38>
   1400044ea:	83 7c 24 44 00       	cmpl   $0x0,0x44(%rsp)
   1400044ef:	0f 84 e0 02 00 00    	je     1400047d5 <__gdtoa+0xdb5>
   1400044f5:	8b 54 24 4c          	mov    0x4c(%rsp),%edx
   1400044f9:	44 01 ea             	add    %r13d,%edx
   1400044fc:	85 d2                	test   %edx,%edx
   1400044fe:	7e 0b                	jle    14000450b <__gdtoa+0xaeb>
   140004500:	48 89 e9             	mov    %rbp,%rcx
   140004503:	e8 4b 0a 00 00       	call   140004f53 <__lshift_D2A>
   140004508:	48 89 c5             	mov    %rax,%rbp
   14000450b:	83 7c 24 60 00       	cmpl   $0x0,0x60(%rsp)
   140004510:	48 89 e8             	mov    %rbp,%rax
   140004513:	74 2e                	je     140004543 <__gdtoa+0xb23>
   140004515:	8b 4d 08             	mov    0x8(%rbp),%ecx
   140004518:	48 8d 75 10          	lea    0x10(%rbp),%rsi
   14000451c:	e8 52 06 00 00       	call   140004b73 <__Balloc_D2A>
   140004521:	48 63 4d 14          	movslq 0x14(%rbp),%rcx
   140004525:	48 8d 50 10          	lea    0x10(%rax),%rdx
   140004529:	48 89 d7             	mov    %rdx,%rdi
   14000452c:	48 8d 0c 8d 08 00 00 	lea    0x8(,%rcx,4),%rcx
   140004533:	00 
   140004534:	ba 01 00 00 00       	mov    $0x1,%edx
   140004539:	f3 a4                	rep movsb %ds:(%rsi),%es:(%rdi)
   14000453b:	48 89 c1             	mov    %rax,%rcx
   14000453e:	e8 10 0a 00 00       	call   140004f53 <__lshift_D2A>
   140004543:	83 7c 24 38 02       	cmpl   $0x2,0x38(%rsp)
   140004548:	8b 54 24 44          	mov    0x44(%rsp),%edx
   14000454c:	48 89 ee             	mov    %rbp,%rsi
   14000454f:	48 89 c5             	mov    %rax,%rbp
   140004552:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
   140004557:	0f 95 44 24 4c       	setne  0x4c(%rsp)
   14000455c:	89 94 24 9c 00 00 00 	mov    %edx,0x9c(%rsp)
   140004563:	48 89 d9             	mov    %rbx,%rcx
   140004566:	4c 89 e2             	mov    %r12,%rdx
   140004569:	e8 75 f3 ff ff       	call   1400038e3 <__quorem_D2A>
   14000456e:	48 89 f2             	mov    %rsi,%rdx
   140004571:	48 89 d9             	mov    %rbx,%rcx
   140004574:	89 44 24 3c          	mov    %eax,0x3c(%rsp)
   140004578:	44 8d 78 30          	lea    0x30(%rax),%r15d
   14000457c:	e8 e0 0a 00 00       	call   140005061 <__cmp_D2A>
   140004581:	48 89 ea             	mov    %rbp,%rdx
   140004584:	4c 89 e1             	mov    %r12,%rcx
   140004587:	41 89 c5             	mov    %eax,%r13d
   14000458a:	e8 18 0b 00 00       	call   1400050a7 <__diff_D2A>
   14000458f:	8b 54 24 44          	mov    0x44(%rsp),%edx
   140004593:	83 78 10 00          	cmpl   $0x0,0x10(%rax)
   140004597:	49 89 c1             	mov    %rax,%r9
   14000459a:	75 17                	jne    1400045b3 <__gdtoa+0xb93>
   14000459c:	48 89 c2             	mov    %rax,%rdx
   14000459f:	48 89 d9             	mov    %rbx,%rcx
   1400045a2:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
   1400045a7:	e8 b5 0a 00 00       	call   140005061 <__cmp_D2A>
   1400045ac:	4c 8b 4c 24 50       	mov    0x50(%rsp),%r9
   1400045b1:	89 c2                	mov    %eax,%edx
   1400045b3:	4c 89 c9             	mov    %r9,%rcx
   1400045b6:	89 54 24 50          	mov    %edx,0x50(%rsp)
   1400045ba:	e8 68 06 00 00       	call   140004c27 <__Bfree_D2A>
   1400045bf:	8b 44 24 2c          	mov    0x2c(%rsp),%eax
   1400045c3:	8b 54 24 50          	mov    0x50(%rsp),%edx
   1400045c7:	09 d0                	or     %edx,%eax
   1400045c9:	75 55                	jne    140004620 <__gdtoa+0xc00>
   1400045cb:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
   1400045d0:	8b 00                	mov    (%rax),%eax
   1400045d2:	89 44 24 50          	mov    %eax,0x50(%rsp)
   1400045d6:	83 e0 01             	and    $0x1,%eax
   1400045d9:	0b 44 24 38          	or     0x38(%rsp),%eax
   1400045dd:	75 41                	jne    140004620 <__gdtoa+0xc00>
   1400045df:	41 83 ff 39          	cmp    $0x39,%r15d
   1400045e3:	0f 84 5d 01 00 00    	je     140004746 <__gdtoa+0xd26>
   1400045e9:	45 85 ed             	test   %r13d,%r13d
   1400045ec:	7f 24                	jg     140004612 <__gdtoa+0xbf2>
   1400045ee:	83 7b 14 01          	cmpl   $0x1,0x14(%rbx)
   1400045f2:	41 be 10 00 00 00    	mov    $0x10,%r14d
   1400045f8:	0f 8f 27 01 00 00    	jg     140004725 <__gdtoa+0xd05>
   1400045fe:	31 c0                	xor    %eax,%eax
   140004600:	83 7b 18 00          	cmpl   $0x0,0x18(%rbx)
   140004604:	0f 95 c0             	setne  %al
   140004607:	c1 e0 04             	shl    $0x4,%eax
   14000460a:	41 89 c6             	mov    %eax,%r14d
   14000460d:	e9 13 01 00 00       	jmp    140004725 <__gdtoa+0xd05>
   140004612:	44 8b 7c 24 3c       	mov    0x3c(%rsp),%r15d
   140004617:	41 83 c7 31          	add    $0x31,%r15d
   14000461b:	e9 a8 00 00 00       	jmp    1400046c8 <__gdtoa+0xca8>
   140004620:	45 85 ed             	test   %r13d,%r13d
   140004623:	78 19                	js     14000463e <__gdtoa+0xc1e>
   140004625:	44 0b 6c 24 2c       	or     0x2c(%rsp),%r13d
   14000462a:	0f 85 01 01 00 00    	jne    140004731 <__gdtoa+0xd11>
   140004630:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
   140004635:	f6 00 01             	testb  $0x1,(%rax)
   140004638:	0f 85 f3 00 00 00    	jne    140004731 <__gdtoa+0xd11>
   14000463e:	83 7c 24 38 00       	cmpl   $0x0,0x38(%rsp)
   140004643:	0f 84 87 00 00 00    	je     1400046d0 <__gdtoa+0xcb0>
   140004649:	83 7b 14 01          	cmpl   $0x1,0x14(%rbx)
   14000464d:	7f 06                	jg     140004655 <__gdtoa+0xc35>
   14000464f:	83 7b 18 00          	cmpl   $0x0,0x18(%rbx)
   140004653:	74 7b                	je     1400046d0 <__gdtoa+0xcb0>
   140004655:	83 7c 24 38 02       	cmpl   $0x2,0x38(%rsp)
   14000465a:	0f 84 bf 00 00 00    	je     14000471f <__gdtoa+0xcff>
   140004660:	48 89 ea             	mov    %rbp,%rdx
   140004663:	4c 89 e1             	mov    %r12,%rcx
   140004666:	4c 8d 6f 01          	lea    0x1(%rdi),%r13
   14000466a:	e8 f2 09 00 00       	call   140005061 <__cmp_D2A>
   14000466f:	85 c0                	test   %eax,%eax
   140004671:	7e 48                	jle    1400046bb <__gdtoa+0xc9b>
   140004673:	45 88 7d ff          	mov    %r15b,-0x1(%r13)
   140004677:	45 31 c0             	xor    %r8d,%r8d
   14000467a:	48 89 e9             	mov    %rbp,%rcx
   14000467d:	ba 0a 00 00 00       	mov    $0xa,%edx
   140004682:	4c 89 ef             	mov    %r13,%rdi
   140004685:	e8 e9 05 00 00       	call   140004c73 <__multadd_D2A>
   14000468a:	48 39 ee             	cmp    %rbp,%rsi
   14000468d:	48 89 d9             	mov    %rbx,%rcx
   140004690:	ba 0a 00 00 00       	mov    $0xa,%edx
   140004695:	48 0f 44 f0          	cmove  %rax,%rsi
   140004699:	45 31 c0             	xor    %r8d,%r8d
   14000469c:	49 89 c6             	mov    %rax,%r14
   14000469f:	e8 cf 05 00 00       	call   140004c73 <__multadd_D2A>
   1400046a4:	4c 89 e2             	mov    %r12,%rdx
   1400046a7:	4c 89 f5             	mov    %r14,%rbp
   1400046aa:	48 89 c1             	mov    %rax,%rcx
   1400046ad:	48 89 c3             	mov    %rax,%rbx
   1400046b0:	e8 2e f2 ff ff       	call   1400038e3 <__quorem_D2A>
   1400046b5:	44 8d 78 30          	lea    0x30(%rax),%r15d
   1400046b9:	eb a5                	jmp    140004660 <__gdtoa+0xc40>
   1400046bb:	41 83 ff 39          	cmp    $0x39,%r15d
   1400046bf:	0f 84 81 00 00 00    	je     140004746 <__gdtoa+0xd26>
   1400046c5:	41 ff c7             	inc    %r15d
   1400046c8:	41 be 20 00 00 00    	mov    $0x20,%r14d
   1400046ce:	eb 55                	jmp    140004725 <__gdtoa+0xd05>
   1400046d0:	85 d2                	test   %edx,%edx
   1400046d2:	7e 3f                	jle    140004713 <__gdtoa+0xcf3>
   1400046d4:	48 89 d9             	mov    %rbx,%rcx
   1400046d7:	ba 01 00 00 00       	mov    $0x1,%edx
   1400046dc:	e8 72 08 00 00       	call   140004f53 <__lshift_D2A>
   1400046e1:	4c 89 e2             	mov    %r12,%rdx
   1400046e4:	48 89 c1             	mov    %rax,%rcx
   1400046e7:	48 89 c3             	mov    %rax,%rbx
   1400046ea:	e8 72 09 00 00       	call   140005061 <__cmp_D2A>
   1400046ef:	85 c0                	test   %eax,%eax
   1400046f1:	7f 0b                	jg     1400046fe <__gdtoa+0xcde>
   1400046f3:	75 18                	jne    14000470d <__gdtoa+0xced>
   1400046f5:	41 f7 c7 01 00 00 00 	test   $0x1,%r15d
   1400046fc:	74 0f                	je     14000470d <__gdtoa+0xced>
   1400046fe:	41 83 ff 39          	cmp    $0x39,%r15d
   140004702:	74 42                	je     140004746 <__gdtoa+0xd26>
   140004704:	44 8b 7c 24 3c       	mov    0x3c(%rsp),%r15d
   140004709:	41 83 c7 31          	add    $0x31,%r15d
   14000470d:	41 be 20 00 00 00    	mov    $0x20,%r14d
   140004713:	83 7b 14 01          	cmpl   $0x1,0x14(%rbx)
   140004717:	7f 06                	jg     14000471f <__gdtoa+0xcff>
   140004719:	83 7b 18 00          	cmpl   $0x0,0x18(%rbx)
   14000471d:	74 06                	je     140004725 <__gdtoa+0xd05>
   14000471f:	41 be 10 00 00 00    	mov    $0x10,%r14d
   140004725:	44 88 3f             	mov    %r15b,(%rdi)
   140004728:	4c 8d 6f 01          	lea    0x1(%rdi),%r13
   14000472c:	e9 88 01 00 00       	jmp    1400048b9 <__gdtoa+0xe99>
   140004731:	4c 8d 6f 01          	lea    0x1(%rdi),%r13
   140004735:	85 d2                	test   %edx,%edx
   140004737:	7e 2a                	jle    140004763 <__gdtoa+0xd43>
   140004739:	80 7c 24 4c 00       	cmpb   $0x0,0x4c(%rsp)
   14000473e:	74 23                	je     140004763 <__gdtoa+0xd43>
   140004740:	41 83 ff 39          	cmp    $0x39,%r15d
   140004744:	75 0c                	jne    140004752 <__gdtoa+0xd32>
   140004746:	c6 07 39             	movb   $0x39,(%rdi)
   140004749:	4c 8d 6f 01          	lea    0x1(%rdi),%r13
   14000474d:	e9 18 01 00 00       	jmp    14000486a <__gdtoa+0xe4a>
   140004752:	41 ff c7             	inc    %r15d
   140004755:	44 88 3f             	mov    %r15b,(%rdi)
   140004758:	41 be 20 00 00 00    	mov    $0x20,%r14d
   14000475e:	e9 56 01 00 00       	jmp    1400048b9 <__gdtoa+0xe99>
   140004763:	45 88 7d ff          	mov    %r15b,-0x1(%r13)
   140004767:	8b 44 24 48          	mov    0x48(%rsp),%eax
   14000476b:	39 84 24 9c 00 00 00 	cmp    %eax,0x9c(%rsp)
   140004772:	0f 84 b1 00 00 00    	je     140004829 <__gdtoa+0xe09>
   140004778:	48 89 d9             	mov    %rbx,%rcx
   14000477b:	45 31 c0             	xor    %r8d,%r8d
   14000477e:	ba 0a 00 00 00       	mov    $0xa,%edx
   140004783:	e8 eb 04 00 00       	call   140004c73 <__multadd_D2A>
   140004788:	45 31 c0             	xor    %r8d,%r8d
   14000478b:	ba 0a 00 00 00       	mov    $0xa,%edx
   140004790:	48 89 f1             	mov    %rsi,%rcx
   140004793:	48 89 c3             	mov    %rax,%rbx
   140004796:	48 39 ee             	cmp    %rbp,%rsi
   140004799:	75 0d                	jne    1400047a8 <__gdtoa+0xd88>
   14000479b:	e8 d3 04 00 00       	call   140004c73 <__multadd_D2A>
   1400047a0:	48 89 c6             	mov    %rax,%rsi
   1400047a3:	48 89 c5             	mov    %rax,%rbp
   1400047a6:	eb 1b                	jmp    1400047c3 <__gdtoa+0xda3>
   1400047a8:	e8 c6 04 00 00       	call   140004c73 <__multadd_D2A>
   1400047ad:	48 89 e9             	mov    %rbp,%rcx
   1400047b0:	45 31 c0             	xor    %r8d,%r8d
   1400047b3:	ba 0a 00 00 00       	mov    $0xa,%edx
   1400047b8:	48 89 c6             	mov    %rax,%rsi
   1400047bb:	e8 b3 04 00 00       	call   140004c73 <__multadd_D2A>
   1400047c0:	48 89 c5             	mov    %rax,%rbp
   1400047c3:	8b 84 24 9c 00 00 00 	mov    0x9c(%rsp),%eax
   1400047ca:	4c 89 ef             	mov    %r13,%rdi
   1400047cd:	8d 50 01             	lea    0x1(%rax),%edx
   1400047d0:	e9 87 fd ff ff       	jmp    14000455c <__gdtoa+0xb3c>
   1400047d5:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
   1400047da:	b8 01 00 00 00       	mov    $0x1,%eax
   1400047df:	4c 89 e2             	mov    %r12,%rdx
   1400047e2:	48 89 d9             	mov    %rbx,%rcx
   1400047e5:	89 84 24 9c 00 00 00 	mov    %eax,0x9c(%rsp)
   1400047ec:	49 ff c5             	inc    %r13
   1400047ef:	e8 ef f0 ff ff       	call   1400038e3 <__quorem_D2A>
   1400047f4:	44 8d 78 30          	lea    0x30(%rax),%r15d
   1400047f8:	8b 44 24 48          	mov    0x48(%rsp),%eax
   1400047fc:	45 88 7d ff          	mov    %r15b,-0x1(%r13)
   140004800:	39 84 24 9c 00 00 00 	cmp    %eax,0x9c(%rsp)
   140004807:	7d 1e                	jge    140004827 <__gdtoa+0xe07>
   140004809:	48 89 d9             	mov    %rbx,%rcx
   14000480c:	45 31 c0             	xor    %r8d,%r8d
   14000480f:	ba 0a 00 00 00       	mov    $0xa,%edx
   140004814:	e8 5a 04 00 00       	call   140004c73 <__multadd_D2A>
   140004819:	48 89 c3             	mov    %rax,%rbx
   14000481c:	8b 84 24 9c 00 00 00 	mov    0x9c(%rsp),%eax
   140004823:	ff c0                	inc    %eax
   140004825:	eb b8                	jmp    1400047df <__gdtoa+0xdbf>
   140004827:	31 f6                	xor    %esi,%esi
   140004829:	83 7c 24 38 00       	cmpl   $0x0,0x38(%rsp)
   14000482e:	74 13                	je     140004843 <__gdtoa+0xe23>
   140004830:	83 7c 24 38 02       	cmpl   $0x2,0x38(%rsp)
   140004835:	74 67                	je     14000489e <__gdtoa+0xe7e>
   140004837:	83 7b 14 01          	cmpl   $0x1,0x14(%rbx)
   14000483b:	7f 2d                	jg     14000486a <__gdtoa+0xe4a>
   14000483d:	83 7b 18 00          	cmpl   $0x0,0x18(%rbx)
   140004841:	eb 25                	jmp    140004868 <__gdtoa+0xe48>
   140004843:	48 89 d9             	mov    %rbx,%rcx
   140004846:	ba 01 00 00 00       	mov    $0x1,%edx
   14000484b:	e8 03 07 00 00       	call   140004f53 <__lshift_D2A>
   140004850:	4c 89 e2             	mov    %r12,%rdx
   140004853:	48 89 c1             	mov    %rax,%rcx
   140004856:	48 89 c3             	mov    %rax,%rbx
   140004859:	e8 03 08 00 00       	call   140005061 <__cmp_D2A>
   14000485e:	85 c0                	test   %eax,%eax
   140004860:	7f 08                	jg     14000486a <__gdtoa+0xe4a>
   140004862:	75 3a                	jne    14000489e <__gdtoa+0xe7e>
   140004864:	41 83 e7 01          	and    $0x1,%r15d
   140004868:	74 34                	je     14000489e <__gdtoa+0xe7e>
   14000486a:	4c 89 e8             	mov    %r13,%rax
   14000486d:	49 89 c5             	mov    %rax,%r13
   140004870:	48 8d 40 ff          	lea    -0x1(%rax),%rax
   140004874:	41 8a 55 ff          	mov    -0x1(%r13),%dl
   140004878:	80 fa 39             	cmp    $0x39,%dl
   14000487b:	75 18                	jne    140004895 <__gdtoa+0xe75>
   14000487d:	48 39 44 24 30       	cmp    %rax,0x30(%rsp)
   140004882:	75 e9                	jne    14000486d <__gdtoa+0xe4d>
   140004884:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140004889:	ff 44 24 40          	incl   0x40(%rsp)
   14000488d:	c6 00 31             	movb   $0x31,(%rax)
   140004890:	e9 c3 fe ff ff       	jmp    140004758 <__gdtoa+0xd38>
   140004895:	ff c2                	inc    %edx
   140004897:	88 10                	mov    %dl,(%rax)
   140004899:	e9 ba fe ff ff       	jmp    140004758 <__gdtoa+0xd38>
   14000489e:	83 7b 14 01          	cmpl   $0x1,0x14(%rbx)
   1400048a2:	41 be 10 00 00 00    	mov    $0x10,%r14d
   1400048a8:	7f 0f                	jg     1400048b9 <__gdtoa+0xe99>
   1400048aa:	31 c0                	xor    %eax,%eax
   1400048ac:	83 7b 18 00          	cmpl   $0x0,0x18(%rbx)
   1400048b0:	0f 95 c0             	setne  %al
   1400048b3:	c1 e0 04             	shl    $0x4,%eax
   1400048b6:	41 89 c6             	mov    %eax,%r14d
   1400048b9:	4c 89 e1             	mov    %r12,%rcx
   1400048bc:	e8 66 03 00 00       	call   140004c27 <__Bfree_D2A>
   1400048c1:	48 85 ed             	test   %rbp,%rbp
   1400048c4:	75 06                	jne    1400048cc <__gdtoa+0xeac>
   1400048c6:	8b 74 24 40          	mov    0x40(%rsp),%esi
   1400048ca:	eb 26                	jmp    1400048f2 <__gdtoa+0xed2>
   1400048cc:	48 85 f6             	test   %rsi,%rsi
   1400048cf:	74 0d                	je     1400048de <__gdtoa+0xebe>
   1400048d1:	48 39 ee             	cmp    %rbp,%rsi
   1400048d4:	74 08                	je     1400048de <__gdtoa+0xebe>
   1400048d6:	48 89 f1             	mov    %rsi,%rcx
   1400048d9:	e8 49 03 00 00       	call   140004c27 <__Bfree_D2A>
   1400048de:	48 89 e9             	mov    %rbp,%rcx
   1400048e1:	e8 41 03 00 00       	call   140004c27 <__Bfree_D2A>
   1400048e6:	eb de                	jmp    1400048c6 <__gdtoa+0xea6>
   1400048e8:	41 80 7d ff 30       	cmpb   $0x30,-0x1(%r13)
   1400048ed:	75 0a                	jne    1400048f9 <__gdtoa+0xed9>
   1400048ef:	49 ff cd             	dec    %r13
   1400048f2:	4c 39 6c 24 30       	cmp    %r13,0x30(%rsp)
   1400048f7:	72 ef                	jb     1400048e8 <__gdtoa+0xec8>
   1400048f9:	48 89 d9             	mov    %rbx,%rcx
   1400048fc:	ff c6                	inc    %esi
   1400048fe:	e8 24 03 00 00       	call   140004c27 <__Bfree_D2A>
   140004903:	48 8b 44 24 78       	mov    0x78(%rsp),%rax
   140004908:	48 83 7c 24 70 00    	cmpq   $0x0,0x70(%rsp)
   14000490e:	41 c6 45 00 00       	movb   $0x0,0x0(%r13)
   140004913:	89 30                	mov    %esi,(%rax)
   140004915:	74 08                	je     14000491f <__gdtoa+0xeff>
   140004917:	48 8b 44 24 70       	mov    0x70(%rsp),%rax
   14000491c:	4c 89 28             	mov    %r13,(%rax)
   14000491f:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
   140004926:	00 
   140004927:	44 09 30             	or     %r14d,(%rax)
   14000492a:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   14000492f:	0f 28 b4 24 a0 00 00 	movaps 0xa0(%rsp),%xmm6
   140004936:	00 
   140004937:	48 81 c4 b8 00 00 00 	add    $0xb8,%rsp
   14000493e:	5b                   	pop    %rbx
   14000493f:	5e                   	pop    %rsi
   140004940:	5f                   	pop    %rdi
   140004941:	5d                   	pop    %rbp
   140004942:	41 5c                	pop    %r12
   140004944:	41 5d                	pop    %r13
   140004946:	41 5e                	pop    %r14
   140004948:	41 5f                	pop    %r15
   14000494a:	c3                   	ret
   14000494b:	90                   	nop
   14000494c:	90                   	nop
   14000494d:	90                   	nop
   14000494e:	90                   	nop
   14000494f:	90                   	nop

0000000140004950 <__rshift_D2A>:
   140004950:	41 55                	push   %r13
   140004952:	41 54                	push   %r12
   140004954:	55                   	push   %rbp
   140004955:	57                   	push   %rdi
   140004956:	56                   	push   %rsi
   140004957:	53                   	push   %rbx
   140004958:	4c 8d 59 18          	lea    0x18(%rcx),%r11
   14000495c:	49 89 c9             	mov    %rcx,%r9
   14000495f:	89 d3                	mov    %edx,%ebx
   140004961:	8b 49 14             	mov    0x14(%rcx),%ecx
   140004964:	c1 fb 05             	sar    $0x5,%ebx
   140004967:	4c 89 d8             	mov    %r11,%rax
   14000496a:	39 d9                	cmp    %ebx,%ecx
   14000496c:	0f 8e ab 00 00 00    	jle    140004a1d <__rshift_D2A+0xcd>
   140004972:	48 63 c1             	movslq %ecx,%rax
   140004975:	48 63 db             	movslq %ebx,%rbx
   140004978:	49 8d 34 83          	lea    (%r11,%rax,4),%rsi
   14000497c:	4d 8d 04 9b          	lea    (%r11,%rbx,4),%r8
   140004980:	83 e2 1f             	and    $0x1f,%edx
   140004983:	74 67                	je     1400049ec <__rshift_D2A+0x9c>
   140004985:	45 8b 10             	mov    (%r8),%r10d
   140004988:	41 bd 20 00 00 00    	mov    $0x20,%r13d
   14000498e:	89 d1                	mov    %edx,%ecx
   140004990:	49 8d 78 04          	lea    0x4(%r8),%rdi
   140004994:	41 29 d5             	sub    %edx,%r13d
   140004997:	4d 89 dc             	mov    %r11,%r12
   14000499a:	41 d3 ea             	shr    %cl,%r10d
   14000499d:	48 39 f7             	cmp    %rsi,%rdi
   1400049a0:	73 22                	jae    1400049c4 <__rshift_D2A+0x74>
   1400049a2:	8b 2f                	mov    (%rdi),%ebp
   1400049a4:	44 89 e9             	mov    %r13d,%ecx
   1400049a7:	49 83 c4 04          	add    $0x4,%r12
   1400049ab:	48 83 c7 04          	add    $0x4,%rdi
   1400049af:	d3 e5                	shl    %cl,%ebp
   1400049b1:	89 d1                	mov    %edx,%ecx
   1400049b3:	41 09 ea             	or     %ebp,%r10d
   1400049b6:	45 89 54 24 fc       	mov    %r10d,-0x4(%r12)
   1400049bb:	44 8b 57 fc          	mov    -0x4(%rdi),%r10d
   1400049bf:	41 d3 ea             	shr    %cl,%r10d
   1400049c2:	eb d9                	jmp    14000499d <__rshift_D2A+0x4d>
   1400049c4:	48 29 d8             	sub    %rbx,%rax
   1400049c7:	49 ff c0             	inc    %r8
   1400049ca:	31 d2                	xor    %edx,%edx
   1400049cc:	48 8d 04 85 fc ff ff 	lea    -0x4(,%rax,4),%rax
   1400049d3:	ff 
   1400049d4:	4c 39 c6             	cmp    %r8,%rsi
   1400049d7:	48 0f 42 c2          	cmovb  %rdx,%rax
   1400049db:	4c 01 d8             	add    %r11,%rax
   1400049de:	44 89 10             	mov    %r10d,(%rax)
   1400049e1:	45 85 d2             	test   %r10d,%r10d
   1400049e4:	74 37                	je     140004a1d <__rshift_D2A+0xcd>
   1400049e6:	48 83 c0 04          	add    $0x4,%rax
   1400049ea:	eb 31                	jmp    140004a1d <__rshift_D2A+0xcd>
   1400049ec:	31 d2                	xor    %edx,%edx
   1400049ee:	49 8d 0c 10          	lea    (%r8,%rdx,1),%rcx
   1400049f2:	48 39 f1             	cmp    %rsi,%rcx
   1400049f5:	73 0f                	jae    140004a06 <__rshift_D2A+0xb6>
   1400049f7:	41 8b 0c 10          	mov    (%r8,%rdx,1),%ecx
   1400049fb:	41 89 4c 11 18       	mov    %ecx,0x18(%r9,%rdx,1)
   140004a00:	48 83 c2 04          	add    $0x4,%rdx
   140004a04:	eb e8                	jmp    1400049ee <__rshift_D2A+0x9e>
   140004a06:	48 29 d8             	sub    %rbx,%rax
   140004a09:	49 83 e8 03          	sub    $0x3,%r8
   140004a0d:	31 d2                	xor    %edx,%edx
   140004a0f:	48 c1 e0 02          	shl    $0x2,%rax
   140004a13:	4c 39 c6             	cmp    %r8,%rsi
   140004a16:	48 0f 42 c2          	cmovb  %rdx,%rax
   140004a1a:	4c 01 d8             	add    %r11,%rax
   140004a1d:	4c 29 d8             	sub    %r11,%rax
   140004a20:	48 c1 f8 02          	sar    $0x2,%rax
   140004a24:	41 89 41 14          	mov    %eax,0x14(%r9)
   140004a28:	85 c0                	test   %eax,%eax
   140004a2a:	75 06                	jne    140004a32 <__rshift_D2A+0xe2>
   140004a2c:	31 c0                	xor    %eax,%eax
   140004a2e:	41 89 41 18          	mov    %eax,0x18(%r9)
   140004a32:	5b                   	pop    %rbx
   140004a33:	5e                   	pop    %rsi
   140004a34:	5f                   	pop    %rdi
   140004a35:	5d                   	pop    %rbp
   140004a36:	41 5c                	pop    %r12
   140004a38:	41 5d                	pop    %r13
   140004a3a:	c3                   	ret

0000000140004a3b <__trailz_D2A>:
   140004a3b:	48 63 51 14          	movslq 0x14(%rcx),%rdx
   140004a3f:	48 8d 41 18          	lea    0x18(%rcx),%rax
   140004a43:	48 8d 0c 90          	lea    (%rax,%rdx,4),%rcx
   140004a47:	31 d2                	xor    %edx,%edx
   140004a49:	48 39 c8             	cmp    %rcx,%rax
   140004a4c:	73 13                	jae    140004a61 <__trailz_D2A+0x26>
   140004a4e:	83 38 00             	cmpl   $0x0,(%rax)
   140004a51:	75 09                	jne    140004a5c <__trailz_D2A+0x21>
   140004a53:	83 c2 20             	add    $0x20,%edx
   140004a56:	48 83 c0 04          	add    $0x4,%rax
   140004a5a:	eb ed                	jmp    140004a49 <__trailz_D2A+0xe>
   140004a5c:	0f bc 00             	bsf    (%rax),%eax
   140004a5f:	01 c2                	add    %eax,%edx
   140004a61:	89 d0                	mov    %edx,%eax
   140004a63:	c3                   	ret
   140004a64:	90                   	nop
   140004a65:	90                   	nop
   140004a66:	90                   	nop
   140004a67:	90                   	nop
   140004a68:	90                   	nop
   140004a69:	90                   	nop
   140004a6a:	90                   	nop
   140004a6b:	90                   	nop
   140004a6c:	90                   	nop
   140004a6d:	90                   	nop
   140004a6e:	90                   	nop
   140004a6f:	90                   	nop

0000000140004a70 <dtoa_lock>:
   140004a70:	56                   	push   %rsi
   140004a71:	53                   	push   %rbx
   140004a72:	48 83 ec 28          	sub    $0x28,%rsp
   140004a76:	8b 05 74 60 00 00    	mov    0x6074(%rip),%eax        # 14000aaf0 <dtoa_CS_init>
   140004a7c:	89 cb                	mov    %ecx,%ebx
   140004a7e:	83 f8 02             	cmp    $0x2,%eax
   140004a81:	75 1e                	jne    140004aa1 <dtoa_lock+0x31>
   140004a83:	48 f7 db             	neg    %rbx
   140004a86:	48 8d 05 73 60 00 00 	lea    0x6073(%rip),%rax        # 14000ab00 <dtoa_CritSec>
   140004a8d:	83 e3 28             	and    $0x28,%ebx
   140004a90:	48 8d 0c 03          	lea    (%rbx,%rax,1),%rcx
   140004a94:	48 83 c4 28          	add    $0x28,%rsp
   140004a98:	5b                   	pop    %rbx
   140004a99:	5e                   	pop    %rsi
   140004a9a:	48 ff 25 1f 67 00 00 	rex.W jmp *0x671f(%rip)        # 14000b1c0 <__imp_EnterCriticalSection>
   140004aa1:	85 c0                	test   %eax,%eax
   140004aa3:	75 45                	jne    140004aea <dtoa_lock+0x7a>
   140004aa5:	b8 01 00 00 00       	mov    $0x1,%eax
   140004aaa:	87 05 40 60 00 00    	xchg   %eax,0x6040(%rip)        # 14000aaf0 <dtoa_CS_init>
   140004ab0:	85 c0                	test   %eax,%eax
   140004ab2:	75 27                	jne    140004adb <dtoa_lock+0x6b>
   140004ab4:	48 8b 35 15 67 00 00 	mov    0x6715(%rip),%rsi        # 14000b1d0 <__imp_InitializeCriticalSection>
   140004abb:	48 8d 0d 3e 60 00 00 	lea    0x603e(%rip),%rcx        # 14000ab00 <dtoa_CritSec>
   140004ac2:	ff d6                	call   *%rsi
   140004ac4:	48 8d 0d 5d 60 00 00 	lea    0x605d(%rip),%rcx        # 14000ab28 <dtoa_CritSec+0x28>
   140004acb:	ff d6                	call   *%rsi
   140004acd:	48 8d 0d 62 00 00 00 	lea    0x62(%rip),%rcx        # 140004b36 <dtoa_lock_cleanup>
   140004ad4:	e8 5c c8 ff ff       	call   140001335 <atexit>
   140004ad9:	eb 05                	jmp    140004ae0 <dtoa_lock+0x70>
   140004adb:	83 f8 02             	cmp    $0x2,%eax
   140004ade:	75 0a                	jne    140004aea <dtoa_lock+0x7a>
   140004ae0:	c7 05 06 60 00 00 02 	movl   $0x2,0x6006(%rip)        # 14000aaf0 <dtoa_CS_init>
   140004ae7:	00 00 00 
   140004aea:	48 8b 35 07 67 00 00 	mov    0x6707(%rip),%rsi        # 14000b1f8 <__imp_Sleep>
   140004af1:	8b 05 f9 5f 00 00    	mov    0x5ff9(%rip),%eax        # 14000aaf0 <dtoa_CS_init>
   140004af7:	83 f8 01             	cmp    $0x1,%eax
   140004afa:	75 09                	jne    140004b05 <dtoa_lock+0x95>
   140004afc:	b9 01 00 00 00       	mov    $0x1,%ecx
   140004b01:	ff d6                	call   *%rsi
   140004b03:	eb ec                	jmp    140004af1 <dtoa_lock+0x81>
   140004b05:	83 f8 02             	cmp    $0x2,%eax
   140004b08:	0f 84 75 ff ff ff    	je     140004a83 <dtoa_lock+0x13>
   140004b0e:	48 83 c4 28          	add    $0x28,%rsp
   140004b12:	5b                   	pop    %rbx
   140004b13:	5e                   	pop    %rsi
   140004b14:	c3                   	ret

0000000140004b15 <dtoa_unlock>:
   140004b15:	83 3d d4 5f 00 00 02 	cmpl   $0x2,0x5fd4(%rip)        # 14000aaf0 <dtoa_CS_init>
   140004b1c:	75 17                	jne    140004b35 <dtoa_unlock+0x20>
   140004b1e:	48 f7 d9             	neg    %rcx
   140004b21:	48 8d 05 d8 5f 00 00 	lea    0x5fd8(%rip),%rax        # 14000ab00 <dtoa_CritSec>
   140004b28:	83 e1 28             	and    $0x28,%ecx
   140004b2b:	48 01 c1             	add    %rax,%rcx
   140004b2e:	48 ff 25 ab 66 00 00 	rex.W jmp *0x66ab(%rip)        # 14000b1e0 <__imp_LeaveCriticalSection>
   140004b35:	c3                   	ret

0000000140004b36 <dtoa_lock_cleanup>:
   140004b36:	53                   	push   %rbx
   140004b37:	48 83 ec 20          	sub    $0x20,%rsp
   140004b3b:	b8 03 00 00 00       	mov    $0x3,%eax
   140004b40:	87 05 aa 5f 00 00    	xchg   %eax,0x5faa(%rip)        # 14000aaf0 <dtoa_CS_init>
   140004b46:	83 f8 02             	cmp    $0x2,%eax
   140004b49:	75 22                	jne    140004b6d <dtoa_lock_cleanup+0x37>
   140004b4b:	48 8b 1d 66 66 00 00 	mov    0x6666(%rip),%rbx        # 14000b1b8 <__IAT_start__>
   140004b52:	48 8d 0d a7 5f 00 00 	lea    0x5fa7(%rip),%rcx        # 14000ab00 <dtoa_CritSec>
   140004b59:	ff d3                	call   *%rbx
   140004b5b:	48 8d 0d c6 5f 00 00 	lea    0x5fc6(%rip),%rcx        # 14000ab28 <dtoa_CritSec+0x28>
   140004b62:	48 89 d8             	mov    %rbx,%rax
   140004b65:	48 83 c4 20          	add    $0x20,%rsp
   140004b69:	5b                   	pop    %rbx
   140004b6a:	48 ff e0             	rex.W jmp *%rax
   140004b6d:	48 83 c4 20          	add    $0x20,%rsp
   140004b71:	5b                   	pop    %rbx
   140004b72:	c3                   	ret

0000000140004b73 <__Balloc_D2A>:
   140004b73:	57                   	push   %rdi
   140004b74:	56                   	push   %rsi
   140004b75:	53                   	push   %rbx
   140004b76:	48 83 ec 20          	sub    $0x20,%rsp
   140004b7a:	89 ce                	mov    %ecx,%esi
   140004b7c:	31 c9                	xor    %ecx,%ecx
   140004b7e:	e8 ed fe ff ff       	call   140004a70 <dtoa_lock>
   140004b83:	83 fe 09             	cmp    $0x9,%esi
   140004b86:	7f 1c                	jg     140004ba4 <__Balloc_D2A+0x31>
   140004b88:	48 8d 05 11 5f 00 00 	lea    0x5f11(%rip),%rax        # 14000aaa0 <freelist>
   140004b8f:	48 63 d6             	movslq %esi,%rdx
   140004b92:	48 8b 1c d0          	mov    (%rax,%rdx,8),%rbx
   140004b96:	48 85 db             	test   %rbx,%rbx
   140004b99:	74 09                	je     140004ba4 <__Balloc_D2A+0x31>
   140004b9b:	48 8b 0b             	mov    (%rbx),%rcx
   140004b9e:	48 89 0c d0          	mov    %rcx,(%rax,%rdx,8)
   140004ba2:	eb 6b                	jmp    140004c0f <__Balloc_D2A+0x9c>
   140004ba4:	89 f1                	mov    %esi,%ecx
   140004ba6:	bf 01 00 00 00       	mov    $0x1,%edi
   140004bab:	d3 e7                	shl    %cl,%edi
   140004bad:	8d 47 ff             	lea    -0x1(%rdi),%eax
   140004bb0:	48 98                	cltq
   140004bb2:	48 8d 04 85 27 00 00 	lea    0x27(,%rax,4),%rax
   140004bb9:	00 
   140004bba:	48 c1 e8 03          	shr    $0x3,%rax
   140004bbe:	89 c0                	mov    %eax,%eax
   140004bc0:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
   140004bc7:	00 
   140004bc8:	83 fe 09             	cmp    $0x9,%esi
   140004bcb:	7f 2f                	jg     140004bfc <__Balloc_D2A+0x89>
   140004bcd:	48 8b 1d 8c 14 00 00 	mov    0x148c(%rip),%rbx        # 140006060 <pmem_next>
   140004bd4:	4c 8d 05 c5 55 00 00 	lea    0x55c5(%rip),%r8        # 14000a1a0 <private_mem>
   140004bdb:	48 89 da             	mov    %rbx,%rdx
   140004bde:	4c 29 c2             	sub    %r8,%rdx
   140004be1:	48 c1 fa 03          	sar    $0x3,%rdx
   140004be5:	48 01 d0             	add    %rdx,%rax
   140004be8:	48 3d 20 01 00 00    	cmp    $0x120,%rax
   140004bee:	77 0c                	ja     140004bfc <__Balloc_D2A+0x89>
   140004bf0:	48 01 d9             	add    %rbx,%rcx
   140004bf3:	48 89 0d 66 14 00 00 	mov    %rcx,0x1466(%rip)        # 140006060 <pmem_next>
   140004bfa:	eb 0d                	jmp    140004c09 <__Balloc_D2A+0x96>
   140004bfc:	e8 df 0d 00 00       	call   1400059e0 <malloc>
   140004c01:	48 89 c3             	mov    %rax,%rbx
   140004c04:	48 85 c0             	test   %rax,%rax
   140004c07:	74 13                	je     140004c1c <__Balloc_D2A+0xa9>
   140004c09:	89 73 08             	mov    %esi,0x8(%rbx)
   140004c0c:	89 7b 0c             	mov    %edi,0xc(%rbx)
   140004c0f:	31 c9                	xor    %ecx,%ecx
   140004c11:	e8 ff fe ff ff       	call   140004b15 <dtoa_unlock>
   140004c16:	31 c0                	xor    %eax,%eax
   140004c18:	48 89 43 10          	mov    %rax,0x10(%rbx)
   140004c1c:	48 89 d8             	mov    %rbx,%rax
   140004c1f:	48 83 c4 20          	add    $0x20,%rsp
   140004c23:	5b                   	pop    %rbx
   140004c24:	5e                   	pop    %rsi
   140004c25:	5f                   	pop    %rdi
   140004c26:	c3                   	ret

0000000140004c27 <__Bfree_D2A>:
   140004c27:	53                   	push   %rbx
   140004c28:	48 83 ec 20          	sub    $0x20,%rsp
   140004c2c:	48 89 cb             	mov    %rcx,%rbx
   140004c2f:	48 85 c9             	test   %rcx,%rcx
   140004c32:	74 39                	je     140004c6d <__Bfree_D2A+0x46>
   140004c34:	83 79 08 09          	cmpl   $0x9,0x8(%rcx)
   140004c38:	7e 0a                	jle    140004c44 <__Bfree_D2A+0x1d>
   140004c3a:	48 83 c4 20          	add    $0x20,%rsp
   140004c3e:	5b                   	pop    %rbx
   140004c3f:	e9 8c 0d 00 00       	jmp    1400059d0 <free>
   140004c44:	31 c9                	xor    %ecx,%ecx
   140004c46:	e8 25 fe ff ff       	call   140004a70 <dtoa_lock>
   140004c4b:	48 63 53 08          	movslq 0x8(%rbx),%rdx
   140004c4f:	48 8d 05 4a 5e 00 00 	lea    0x5e4a(%rip),%rax        # 14000aaa0 <freelist>
   140004c56:	48 8b 0c d0          	mov    (%rax,%rdx,8),%rcx
   140004c5a:	48 89 1c d0          	mov    %rbx,(%rax,%rdx,8)
   140004c5e:	48 89 0b             	mov    %rcx,(%rbx)
   140004c61:	31 c9                	xor    %ecx,%ecx
   140004c63:	48 83 c4 20          	add    $0x20,%rsp
   140004c67:	5b                   	pop    %rbx
   140004c68:	e9 a8 fe ff ff       	jmp    140004b15 <dtoa_unlock>
   140004c6d:	48 83 c4 20          	add    $0x20,%rsp
   140004c71:	5b                   	pop    %rbx
   140004c72:	c3                   	ret

0000000140004c73 <__multadd_D2A>:
   140004c73:	41 55                	push   %r13
   140004c75:	41 54                	push   %r12
   140004c77:	55                   	push   %rbp
   140004c78:	57                   	push   %rdi
   140004c79:	56                   	push   %rsi
   140004c7a:	53                   	push   %rbx
   140004c7b:	48 83 ec 28          	sub    $0x28,%rsp
   140004c7f:	44 8b 61 14          	mov    0x14(%rcx),%r12d
   140004c83:	48 89 cb             	mov    %rcx,%rbx
   140004c86:	4d 63 e8             	movslq %r8d,%r13
   140004c89:	31 c9                	xor    %ecx,%ecx
   140004c8b:	48 63 d2             	movslq %edx,%rdx
   140004c8e:	8b 44 8b 18          	mov    0x18(%rbx,%rcx,4),%eax
   140004c92:	48 0f af c2          	imul   %rdx,%rax
   140004c96:	4c 01 e8             	add    %r13,%rax
   140004c99:	89 44 8b 18          	mov    %eax,0x18(%rbx,%rcx,4)
   140004c9d:	49 89 c5             	mov    %rax,%r13
   140004ca0:	48 ff c1             	inc    %rcx
   140004ca3:	49 c1 ed 20          	shr    $0x20,%r13
   140004ca7:	41 39 cc             	cmp    %ecx,%r12d
   140004caa:	7f e2                	jg     140004c8e <__multadd_D2A+0x1b>
   140004cac:	48 89 dd             	mov    %rbx,%rbp
   140004caf:	4d 85 ed             	test   %r13,%r13
   140004cb2:	74 4f                	je     140004d03 <__multadd_D2A+0x90>
   140004cb4:	44 39 63 0c          	cmp    %r12d,0xc(%rbx)
   140004cb8:	7f 37                	jg     140004cf1 <__multadd_D2A+0x7e>
   140004cba:	8b 43 08             	mov    0x8(%rbx),%eax
   140004cbd:	8d 48 01             	lea    0x1(%rax),%ecx
   140004cc0:	e8 ae fe ff ff       	call   140004b73 <__Balloc_D2A>
   140004cc5:	48 89 c5             	mov    %rax,%rbp
   140004cc8:	48 85 c0             	test   %rax,%rax
   140004ccb:	74 36                	je     140004d03 <__multadd_D2A+0x90>
   140004ccd:	48 63 53 14          	movslq 0x14(%rbx),%rdx
   140004cd1:	48 8d 40 10          	lea    0x10(%rax),%rax
   140004cd5:	48 8d 73 10          	lea    0x10(%rbx),%rsi
   140004cd9:	48 89 c7             	mov    %rax,%rdi
   140004cdc:	48 8d 0c 95 08 00 00 	lea    0x8(,%rdx,4),%rcx
   140004ce3:	00 
   140004ce4:	f3 a4                	rep movsb %ds:(%rsi),%es:(%rdi)
   140004ce6:	48 89 d9             	mov    %rbx,%rcx
   140004ce9:	48 89 eb             	mov    %rbp,%rbx
   140004cec:	e8 36 ff ff ff       	call   140004c27 <__Bfree_D2A>
   140004cf1:	49 63 c4             	movslq %r12d,%rax
   140004cf4:	41 ff c4             	inc    %r12d
   140004cf7:	48 89 dd             	mov    %rbx,%rbp
   140004cfa:	44 89 6c 83 18       	mov    %r13d,0x18(%rbx,%rax,4)
   140004cff:	44 89 63 14          	mov    %r12d,0x14(%rbx)
   140004d03:	48 89 e8             	mov    %rbp,%rax
   140004d06:	48 83 c4 28          	add    $0x28,%rsp
   140004d0a:	5b                   	pop    %rbx
   140004d0b:	5e                   	pop    %rsi
   140004d0c:	5f                   	pop    %rdi
   140004d0d:	5d                   	pop    %rbp
   140004d0e:	41 5c                	pop    %r12
   140004d10:	41 5d                	pop    %r13
   140004d12:	c3                   	ret

0000000140004d13 <__i2b_D2A>:
   140004d13:	53                   	push   %rbx
   140004d14:	48 83 ec 20          	sub    $0x20,%rsp
   140004d18:	89 cb                	mov    %ecx,%ebx
   140004d1a:	b9 01 00 00 00       	mov    $0x1,%ecx
   140004d1f:	e8 4f fe ff ff       	call   140004b73 <__Balloc_D2A>
   140004d24:	48 85 c0             	test   %rax,%rax
   140004d27:	74 0a                	je     140004d33 <__i2b_D2A+0x20>
   140004d29:	89 58 18             	mov    %ebx,0x18(%rax)
   140004d2c:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%rax)
   140004d33:	48 83 c4 20          	add    $0x20,%rsp
   140004d37:	5b                   	pop    %rbx
   140004d38:	c3                   	ret

0000000140004d39 <__mult_D2A>:
   140004d39:	41 57                	push   %r15
   140004d3b:	41 56                	push   %r14
   140004d3d:	41 55                	push   %r13
   140004d3f:	41 54                	push   %r12
   140004d41:	55                   	push   %rbp
   140004d42:	57                   	push   %rdi
   140004d43:	56                   	push   %rsi
   140004d44:	53                   	push   %rbx
   140004d45:	48 83 ec 28          	sub    $0x28,%rsp
   140004d49:	4c 63 61 14          	movslq 0x14(%rcx),%r12
   140004d4d:	48 63 7a 14          	movslq 0x14(%rdx),%rdi
   140004d51:	49 89 cd             	mov    %rcx,%r13
   140004d54:	48 89 d3             	mov    %rdx,%rbx
   140004d57:	41 39 fc             	cmp    %edi,%r12d
   140004d5a:	7c 0b                	jl     140004d67 <__mult_D2A+0x2e>
   140004d5c:	89 f8                	mov    %edi,%eax
   140004d5e:	4c 87 eb             	xchg   %r13,%rbx
   140004d61:	49 63 fc             	movslq %r12d,%rdi
   140004d64:	4c 63 e0             	movslq %eax,%r12
   140004d67:	8b 4b 08             	mov    0x8(%rbx),%ecx
   140004d6a:	42 8d 34 27          	lea    (%rdi,%r12,1),%esi
   140004d6e:	39 73 0c             	cmp    %esi,0xc(%rbx)
   140004d71:	7d 02                	jge    140004d75 <__mult_D2A+0x3c>
   140004d73:	ff c1                	inc    %ecx
   140004d75:	e8 f9 fd ff ff       	call   140004b73 <__Balloc_D2A>
   140004d7a:	48 89 c1             	mov    %rax,%rcx
   140004d7d:	48 85 c0             	test   %rax,%rax
   140004d80:	0f 84 a9 00 00 00    	je     140004e2f <__mult_D2A+0xf6>
   140004d86:	4c 8d 40 18          	lea    0x18(%rax),%r8
   140004d8a:	48 63 c6             	movslq %esi,%rax
   140004d8d:	4d 8d 14 80          	lea    (%r8,%rax,4),%r10
   140004d91:	4c 89 c0             	mov    %r8,%rax
   140004d94:	4c 39 d0             	cmp    %r10,%rax
   140004d97:	73 0b                	jae    140004da4 <__mult_D2A+0x6b>
   140004d99:	31 d2                	xor    %edx,%edx
   140004d9b:	48 83 c0 04          	add    $0x4,%rax
   140004d9f:	89 50 fc             	mov    %edx,-0x4(%rax)
   140004da2:	eb f0                	jmp    140004d94 <__mult_D2A+0x5b>
   140004da4:	48 8d 6b 18          	lea    0x18(%rbx),%rbp
   140004da8:	49 8d 45 18          	lea    0x18(%r13),%rax
   140004dac:	48 8d 7c bd 00       	lea    0x0(%rbp,%rdi,4),%rdi
   140004db1:	4e 8d 24 a0          	lea    (%rax,%r12,4),%r12
   140004db5:	48 89 fa             	mov    %rdi,%rdx
   140004db8:	48 29 da             	sub    %rbx,%rdx
   140004dbb:	48 83 c3 19          	add    $0x19,%rbx
   140004dbf:	4c 8d 4a e7          	lea    -0x19(%rdx),%r9
   140004dc3:	31 d2                	xor    %edx,%edx
   140004dc5:	49 83 e1 fc          	and    $0xfffffffffffffffc,%r9
   140004dc9:	48 39 df             	cmp    %rbx,%rdi
   140004dcc:	4c 0f 42 ca          	cmovb  %rdx,%r9
   140004dd0:	4c 39 e0             	cmp    %r12,%rax
   140004dd3:	73 53                	jae    140004e28 <__mult_D2A+0xef>
   140004dd5:	44 8b 28             	mov    (%rax),%r13d
   140004dd8:	48 83 c0 04          	add    $0x4,%rax
   140004ddc:	45 85 ed             	test   %r13d,%r13d
   140004ddf:	74 35                	je     140004e16 <__mult_D2A+0xdd>
   140004de1:	4c 89 c3             	mov    %r8,%rbx
   140004de4:	49 89 eb             	mov    %rbp,%r11
   140004de7:	45 31 f6             	xor    %r14d,%r14d
   140004dea:	41 8b 13             	mov    (%r11),%edx
   140004ded:	44 8b 3b             	mov    (%rbx),%r15d
   140004df0:	49 83 c3 04          	add    $0x4,%r11
   140004df4:	48 83 c3 04          	add    $0x4,%rbx
   140004df8:	49 0f af d5          	imul   %r13,%rdx
   140004dfc:	4c 01 fa             	add    %r15,%rdx
   140004dff:	4c 01 f2             	add    %r14,%rdx
   140004e02:	49 89 d6             	mov    %rdx,%r14
   140004e05:	89 53 fc             	mov    %edx,-0x4(%rbx)
   140004e08:	49 c1 ee 20          	shr    $0x20,%r14
   140004e0c:	49 39 fb             	cmp    %rdi,%r11
   140004e0f:	72 d9                	jb     140004dea <__mult_D2A+0xb1>
   140004e11:	47 89 74 08 04       	mov    %r14d,0x4(%r8,%r9,1)
   140004e16:	49 83 c0 04          	add    $0x4,%r8
   140004e1a:	eb b4                	jmp    140004dd0 <__mult_D2A+0x97>
   140004e1c:	49 83 ea 04          	sub    $0x4,%r10
   140004e20:	41 83 3a 00          	cmpl   $0x0,(%r10)
   140004e24:	75 06                	jne    140004e2c <__mult_D2A+0xf3>
   140004e26:	ff ce                	dec    %esi
   140004e28:	85 f6                	test   %esi,%esi
   140004e2a:	7f f0                	jg     140004e1c <__mult_D2A+0xe3>
   140004e2c:	89 71 14             	mov    %esi,0x14(%rcx)
   140004e2f:	48 89 c8             	mov    %rcx,%rax
   140004e32:	48 83 c4 28          	add    $0x28,%rsp
   140004e36:	5b                   	pop    %rbx
   140004e37:	5e                   	pop    %rsi
   140004e38:	5f                   	pop    %rdi
   140004e39:	5d                   	pop    %rbp
   140004e3a:	41 5c                	pop    %r12
   140004e3c:	41 5d                	pop    %r13
   140004e3e:	41 5e                	pop    %r14
   140004e40:	41 5f                	pop    %r15
   140004e42:	c3                   	ret

0000000140004e43 <__pow5mult_D2A>:
   140004e43:	55                   	push   %rbp
   140004e44:	57                   	push   %rdi
   140004e45:	56                   	push   %rsi
   140004e46:	53                   	push   %rbx
   140004e47:	48 83 ec 28          	sub    $0x28,%rsp
   140004e4b:	89 d0                	mov    %edx,%eax
   140004e4d:	48 89 cb             	mov    %rcx,%rbx
   140004e50:	89 d7                	mov    %edx,%edi
   140004e52:	83 e0 03             	and    $0x3,%eax
   140004e55:	74 22                	je     140004e79 <__pow5mult_D2A+0x36>
   140004e57:	ff c8                	dec    %eax
   140004e59:	48 8d 15 00 27 00 00 	lea    0x2700(%rip),%rdx        # 140007560 <p05.0>
   140004e60:	45 31 c0             	xor    %r8d,%r8d
   140004e63:	48 98                	cltq
   140004e65:	8b 14 82             	mov    (%rdx,%rax,4),%edx
   140004e68:	e8 06 fe ff ff       	call   140004c73 <__multadd_D2A>
   140004e6d:	48 89 c3             	mov    %rax,%rbx
   140004e70:	48 85 c0             	test   %rax,%rax
   140004e73:	0f 84 cc 00 00 00    	je     140004f45 <__pow5mult_D2A+0x102>
   140004e79:	c1 ff 02             	sar    $0x2,%edi
   140004e7c:	0f 84 c5 00 00 00    	je     140004f47 <__pow5mult_D2A+0x104>
   140004e82:	48 8b 35 f7 52 00 00 	mov    0x52f7(%rip),%rsi        # 14000a180 <p5s>
   140004e89:	48 85 f6             	test   %rsi,%rsi
   140004e8c:	75 6e                	jne    140004efc <__pow5mult_D2A+0xb9>
   140004e8e:	b9 01 00 00 00       	mov    $0x1,%ecx
   140004e93:	e8 d8 fb ff ff       	call   140004a70 <dtoa_lock>
   140004e98:	48 8b 35 e1 52 00 00 	mov    0x52e1(%rip),%rsi        # 14000a180 <p5s>
   140004e9f:	48 85 f6             	test   %rsi,%rsi
   140004ea2:	75 22                	jne    140004ec6 <__pow5mult_D2A+0x83>
   140004ea4:	b9 71 02 00 00       	mov    $0x271,%ecx
   140004ea9:	e8 65 fe ff ff       	call   140004d13 <__i2b_D2A>
   140004eae:	48 89 05 cb 52 00 00 	mov    %rax,0x52cb(%rip)        # 14000a180 <p5s>
   140004eb5:	48 89 c6             	mov    %rax,%rsi
   140004eb8:	48 85 c0             	test   %rax,%rax
   140004ebb:	0f 84 84 00 00 00    	je     140004f45 <__pow5mult_D2A+0x102>
   140004ec1:	31 d2                	xor    %edx,%edx
   140004ec3:	48 89 10             	mov    %rdx,(%rax)
   140004ec6:	b9 01 00 00 00       	mov    $0x1,%ecx
   140004ecb:	e8 45 fc ff ff       	call   140004b15 <dtoa_unlock>
   140004ed0:	eb 2a                	jmp    140004efc <__pow5mult_D2A+0xb9>
   140004ed2:	48 89 d9             	mov    %rbx,%rcx
   140004ed5:	48 89 f2             	mov    %rsi,%rdx
   140004ed8:	e8 5c fe ff ff       	call   140004d39 <__mult_D2A>
   140004edd:	48 89 c3             	mov    %rax,%rbx
   140004ee0:	48 85 c0             	test   %rax,%rax
   140004ee3:	74 60                	je     140004f45 <__pow5mult_D2A+0x102>
   140004ee5:	48 89 e9             	mov    %rbp,%rcx
   140004ee8:	e8 3a fd ff ff       	call   140004c27 <__Bfree_D2A>
   140004eed:	d1 ff                	sar    $1,%edi
   140004eef:	74 56                	je     140004f47 <__pow5mult_D2A+0x104>
   140004ef1:	48 8b 2e             	mov    (%rsi),%rbp
   140004ef4:	48 85 ed             	test   %rbp,%rbp
   140004ef7:	74 12                	je     140004f0b <__pow5mult_D2A+0xc8>
   140004ef9:	48 89 ee             	mov    %rbp,%rsi
   140004efc:	48 89 dd             	mov    %rbx,%rbp
   140004eff:	f7 c7 01 00 00 00    	test   $0x1,%edi
   140004f05:	75 cb                	jne    140004ed2 <__pow5mult_D2A+0x8f>
   140004f07:	d1 ff                	sar    $1,%edi
   140004f09:	eb e6                	jmp    140004ef1 <__pow5mult_D2A+0xae>
   140004f0b:	b9 01 00 00 00       	mov    $0x1,%ecx
   140004f10:	e8 5b fb ff ff       	call   140004a70 <dtoa_lock>
   140004f15:	48 8b 2e             	mov    (%rsi),%rbp
   140004f18:	48 85 ed             	test   %rbp,%rbp
   140004f1b:	75 1c                	jne    140004f39 <__pow5mult_D2A+0xf6>
   140004f1d:	48 89 f2             	mov    %rsi,%rdx
   140004f20:	48 89 f1             	mov    %rsi,%rcx
   140004f23:	e8 11 fe ff ff       	call   140004d39 <__mult_D2A>
   140004f28:	48 89 06             	mov    %rax,(%rsi)
   140004f2b:	48 89 c5             	mov    %rax,%rbp
   140004f2e:	48 85 c0             	test   %rax,%rax
   140004f31:	74 12                	je     140004f45 <__pow5mult_D2A+0x102>
   140004f33:	31 c0                	xor    %eax,%eax
   140004f35:	48 89 45 00          	mov    %rax,0x0(%rbp)
   140004f39:	b9 01 00 00 00       	mov    $0x1,%ecx
   140004f3e:	e8 d2 fb ff ff       	call   140004b15 <dtoa_unlock>
   140004f43:	eb b4                	jmp    140004ef9 <__pow5mult_D2A+0xb6>
   140004f45:	31 db                	xor    %ebx,%ebx
   140004f47:	48 89 d8             	mov    %rbx,%rax
   140004f4a:	48 83 c4 28          	add    $0x28,%rsp
   140004f4e:	5b                   	pop    %rbx
   140004f4f:	5e                   	pop    %rsi
   140004f50:	5f                   	pop    %rdi
   140004f51:	5d                   	pop    %rbp
   140004f52:	c3                   	ret

0000000140004f53 <__lshift_D2A>:
   140004f53:	41 56                	push   %r14
   140004f55:	41 55                	push   %r13
   140004f57:	41 54                	push   %r12
   140004f59:	55                   	push   %rbp
   140004f5a:	57                   	push   %rdi
   140004f5b:	56                   	push   %rsi
   140004f5c:	53                   	push   %rbx
   140004f5d:	48 83 ec 20          	sub    $0x20,%rsp
   140004f61:	48 89 cb             	mov    %rcx,%rbx
   140004f64:	89 d7                	mov    %edx,%edi
   140004f66:	8b 49 08             	mov    0x8(%rcx),%ecx
   140004f69:	89 d6                	mov    %edx,%esi
   140004f6b:	44 8b 6b 14          	mov    0x14(%rbx),%r13d
   140004f6f:	c1 ff 05             	sar    $0x5,%edi
   140004f72:	8b 43 0c             	mov    0xc(%rbx),%eax
   140004f75:	41 01 fd             	add    %edi,%r13d
   140004f78:	45 8d 65 01          	lea    0x1(%r13),%r12d
   140004f7c:	44 39 e0             	cmp    %r12d,%eax
   140004f7f:	7d 06                	jge    140004f87 <__lshift_D2A+0x34>
   140004f81:	ff c1                	inc    %ecx
   140004f83:	01 c0                	add    %eax,%eax
   140004f85:	eb f5                	jmp    140004f7c <__lshift_D2A+0x29>
   140004f87:	e8 e7 fb ff ff       	call   140004b73 <__Balloc_D2A>
   140004f8c:	48 89 c5             	mov    %rax,%rbp
   140004f8f:	48 85 c0             	test   %rax,%rax
   140004f92:	0f 84 b7 00 00 00    	je     14000504f <__lshift_D2A+0xfc>
   140004f98:	48 8d 50 18          	lea    0x18(%rax),%rdx
   140004f9c:	31 c0                	xor    %eax,%eax
   140004f9e:	39 c7                	cmp    %eax,%edi
   140004fa0:	7e 0b                	jle    140004fad <__lshift_D2A+0x5a>
   140004fa2:	31 c9                	xor    %ecx,%ecx
   140004fa4:	89 4c 85 18          	mov    %ecx,0x18(%rbp,%rax,4)
   140004fa8:	48 ff c0             	inc    %rax
   140004fab:	eb f1                	jmp    140004f9e <__lshift_D2A+0x4b>
   140004fad:	31 c0                	xor    %eax,%eax
   140004faf:	85 ff                	test   %edi,%edi
   140004fb1:	48 63 4b 14          	movslq 0x14(%rbx),%rcx
   140004fb5:	0f 48 f8             	cmovs  %eax,%edi
   140004fb8:	48 8d 43 18          	lea    0x18(%rbx),%rax
   140004fbc:	4c 8d 14 88          	lea    (%rax,%rcx,4),%r10
   140004fc0:	48 63 ff             	movslq %edi,%rdi
   140004fc3:	4c 8d 1c ba          	lea    (%rdx,%rdi,4),%r11
   140004fc7:	4c 89 da             	mov    %r11,%rdx
   140004fca:	83 e6 1f             	and    $0x1f,%esi
   140004fcd:	74 5b                	je     14000502a <__lshift_D2A+0xd7>
   140004fcf:	bf 20 00 00 00       	mov    $0x20,%edi
   140004fd4:	45 31 c0             	xor    %r8d,%r8d
   140004fd7:	29 f7                	sub    %esi,%edi
   140004fd9:	44 8b 08             	mov    (%rax),%r9d
   140004fdc:	89 f1                	mov    %esi,%ecx
   140004fde:	49 89 d6             	mov    %rdx,%r14
   140004fe1:	48 83 c0 04          	add    $0x4,%rax
   140004fe5:	48 83 c2 04          	add    $0x4,%rdx
   140004fe9:	41 d3 e1             	shl    %cl,%r9d
   140004fec:	89 f9                	mov    %edi,%ecx
   140004fee:	45 09 c8             	or     %r9d,%r8d
   140004ff1:	45 89 06             	mov    %r8d,(%r14)
   140004ff4:	44 8b 40 fc          	mov    -0x4(%rax),%r8d
   140004ff8:	41 d3 e8             	shr    %cl,%r8d
   140004ffb:	4c 39 d0             	cmp    %r10,%rax
   140004ffe:	72 d9                	jb     140004fd9 <__lshift_D2A+0x86>
   140005000:	4c 89 d0             	mov    %r10,%rax
   140005003:	48 8d 53 19          	lea    0x19(%rbx),%rdx
   140005007:	48 29 d8             	sub    %rbx,%rax
   14000500a:	48 83 e8 19          	sub    $0x19,%rax
   14000500e:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
   140005012:	49 39 d2             	cmp    %rdx,%r10
   140005015:	ba 00 00 00 00       	mov    $0x0,%edx
   14000501a:	48 0f 42 c2          	cmovb  %rdx,%rax
   14000501e:	45 89 44 03 04       	mov    %r8d,0x4(%r11,%rax,1)
   140005023:	45 85 c0             	test   %r8d,%r8d
   140005026:	75 1b                	jne    140005043 <__lshift_D2A+0xf0>
   140005028:	eb 16                	jmp    140005040 <__lshift_D2A+0xed>
   14000502a:	44 8b 00             	mov    (%rax),%r8d
   14000502d:	48 89 d1             	mov    %rdx,%rcx
   140005030:	48 83 c0 04          	add    $0x4,%rax
   140005034:	48 83 c2 04          	add    $0x4,%rdx
   140005038:	44 89 01             	mov    %r8d,(%rcx)
   14000503b:	4c 39 d0             	cmp    %r10,%rax
   14000503e:	72 ea                	jb     14000502a <__lshift_D2A+0xd7>
   140005040:	45 89 ec             	mov    %r13d,%r12d
   140005043:	44 89 65 14          	mov    %r12d,0x14(%rbp)
   140005047:	48 89 d9             	mov    %rbx,%rcx
   14000504a:	e8 d8 fb ff ff       	call   140004c27 <__Bfree_D2A>
   14000504f:	48 89 e8             	mov    %rbp,%rax
   140005052:	48 83 c4 20          	add    $0x20,%rsp
   140005056:	5b                   	pop    %rbx
   140005057:	5e                   	pop    %rsi
   140005058:	5f                   	pop    %rdi
   140005059:	5d                   	pop    %rbp
   14000505a:	41 5c                	pop    %r12
   14000505c:	41 5d                	pop    %r13
   14000505e:	41 5e                	pop    %r14
   140005060:	c3                   	ret

0000000140005061 <__cmp_D2A>:
   140005061:	48 63 42 14          	movslq 0x14(%rdx),%rax
   140005065:	44 8b 41 14          	mov    0x14(%rcx),%r8d
   140005069:	41 29 c0             	sub    %eax,%r8d
   14000506c:	75 35                	jne    1400050a3 <__cmp_D2A+0x42>
   14000506e:	48 c1 e0 02          	shl    $0x2,%rax
   140005072:	48 83 c1 18          	add    $0x18,%rcx
   140005076:	4c 8d 0c 01          	lea    (%rcx,%rax,1),%r9
   14000507a:	4c 8d 54 02 18       	lea    0x18(%rdx,%rax,1),%r10
   14000507f:	31 c0                	xor    %eax,%eax
   140005081:	41 8b 54 02 fc       	mov    -0x4(%r10,%rax,1),%edx
   140005086:	41 39 54 01 fc       	cmp    %edx,-0x4(%r9,%rax,1)
   14000508b:	74 09                	je     140005096 <__cmp_D2A+0x35>
   14000508d:	45 19 c0             	sbb    %r8d,%r8d
   140005090:	41 83 c8 01          	or     $0x1,%r8d
   140005094:	eb 0d                	jmp    1400050a3 <__cmp_D2A+0x42>
   140005096:	48 83 e8 04          	sub    $0x4,%rax
   14000509a:	49 8d 14 01          	lea    (%r9,%rax,1),%rdx
   14000509e:	48 39 d1             	cmp    %rdx,%rcx
   1400050a1:	72 de                	jb     140005081 <__cmp_D2A+0x20>
   1400050a3:	44 89 c0             	mov    %r8d,%eax
   1400050a6:	c3                   	ret

00000001400050a7 <__diff_D2A>:
   1400050a7:	41 54                	push   %r12
   1400050a9:	55                   	push   %rbp
   1400050aa:	57                   	push   %rdi
   1400050ab:	56                   	push   %rsi
   1400050ac:	53                   	push   %rbx
   1400050ad:	48 83 ec 20          	sub    $0x20,%rsp
   1400050b1:	48 89 ce             	mov    %rcx,%rsi
   1400050b4:	48 89 d3             	mov    %rdx,%rbx
   1400050b7:	e8 a5 ff ff ff       	call   140005061 <__cmp_D2A>
   1400050bc:	85 c0                	test   %eax,%eax
   1400050be:	75 1d                	jne    1400050dd <__diff_D2A+0x36>
   1400050c0:	31 c9                	xor    %ecx,%ecx
   1400050c2:	e8 ac fa ff ff       	call   140004b73 <__Balloc_D2A>
   1400050c7:	48 85 c0             	test   %rax,%rax
   1400050ca:	0f 84 fa 00 00 00    	je     1400051ca <__diff_D2A+0x123>
   1400050d0:	48 c7 40 14 01 00 00 	movq   $0x1,0x14(%rax)
   1400050d7:	00 
   1400050d8:	e9 ed 00 00 00       	jmp    1400051ca <__diff_D2A+0x123>
   1400050dd:	bf 00 00 00 00       	mov    $0x0,%edi
   1400050e2:	79 08                	jns    1400050ec <__diff_D2A+0x45>
   1400050e4:	48 87 de             	xchg   %rbx,%rsi
   1400050e7:	bf 01 00 00 00       	mov    $0x1,%edi
   1400050ec:	8b 4e 08             	mov    0x8(%rsi),%ecx
   1400050ef:	e8 7f fa ff ff       	call   140004b73 <__Balloc_D2A>
   1400050f4:	48 85 c0             	test   %rax,%rax
   1400050f7:	0f 84 cd 00 00 00    	je     1400051ca <__diff_D2A+0x123>
   1400050fd:	48 63 56 14          	movslq 0x14(%rsi),%rdx
   140005101:	89 78 10             	mov    %edi,0x10(%rax)
   140005104:	48 8d 7e 18          	lea    0x18(%rsi),%rdi
   140005108:	4c 8d 58 18          	lea    0x18(%rax),%r11
   14000510c:	45 31 c0             	xor    %r8d,%r8d
   14000510f:	49 89 d1             	mov    %rdx,%r9
   140005112:	4c 8d 14 97          	lea    (%rdi,%rdx,4),%r10
   140005116:	48 63 53 14          	movslq 0x14(%rbx),%rdx
   14000511a:	48 8d 6c 93 18       	lea    0x18(%rbx,%rdx,4),%rbp
   14000511f:	ba 18 00 00 00       	mov    $0x18,%edx
   140005124:	8b 0c 16             	mov    (%rsi,%rdx,1),%ecx
   140005127:	44 8b 24 13          	mov    (%rbx,%rdx,1),%r12d
   14000512b:	4c 29 e1             	sub    %r12,%rcx
   14000512e:	4c 29 c1             	sub    %r8,%rcx
   140005131:	89 0c 10             	mov    %ecx,(%rax,%rdx,1)
   140005134:	49 89 c8             	mov    %rcx,%r8
   140005137:	48 83 c2 04          	add    $0x4,%rdx
   14000513b:	49 c1 e8 20          	shr    $0x20,%r8
   14000513f:	48 8d 0c 13          	lea    (%rbx,%rdx,1),%rcx
   140005143:	41 83 e0 01          	and    $0x1,%r8d
   140005147:	48 39 e9             	cmp    %rbp,%rcx
   14000514a:	72 d8                	jb     140005124 <__diff_D2A+0x7d>
   14000514c:	48 89 ea             	mov    %rbp,%rdx
   14000514f:	31 c9                	xor    %ecx,%ecx
   140005151:	48 29 da             	sub    %rbx,%rdx
   140005154:	48 83 c3 19          	add    $0x19,%rbx
   140005158:	48 83 ea 19          	sub    $0x19,%rdx
   14000515c:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
   140005160:	48 39 dd             	cmp    %rbx,%rbp
   140005163:	48 0f 42 d1          	cmovb  %rcx,%rdx
   140005167:	48 8d 0c 17          	lea    (%rdi,%rdx,1),%rcx
   14000516b:	49 8d 5c 13 04       	lea    0x4(%r11,%rdx,1),%rbx
   140005170:	49 29 fb             	sub    %rdi,%r11
   140005173:	48 8d 69 04          	lea    0x4(%rcx),%rbp
   140005177:	48 89 ea             	mov    %rbp,%rdx
   14000517a:	4a 8d 3c 1a          	lea    (%rdx,%r11,1),%rdi
   14000517e:	4c 39 d2             	cmp    %r10,%rdx
   140005181:	73 18                	jae    14000519b <__diff_D2A+0xf4>
   140005183:	8b 32                	mov    (%rdx),%esi
   140005185:	48 83 c2 04          	add    $0x4,%rdx
   140005189:	4c 29 c6             	sub    %r8,%rsi
   14000518c:	49 89 f0             	mov    %rsi,%r8
   14000518f:	89 37                	mov    %esi,(%rdi)
   140005191:	49 c1 e8 20          	shr    $0x20,%r8
   140005195:	41 83 e0 01          	and    $0x1,%r8d
   140005199:	eb df                	jmp    14000517a <__diff_D2A+0xd3>
   14000519b:	49 8d 52 03          	lea    0x3(%r10),%rdx
   14000519f:	48 ff c1             	inc    %rcx
   1400051a2:	48 29 ea             	sub    %rbp,%rdx
   1400051a5:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
   1400051a9:	49 39 ca             	cmp    %rcx,%r10
   1400051ac:	b9 00 00 00 00       	mov    $0x0,%ecx
   1400051b1:	48 0f 42 d1          	cmovb  %rcx,%rdx
   1400051b5:	48 01 da             	add    %rbx,%rdx
   1400051b8:	48 83 ea 04          	sub    $0x4,%rdx
   1400051bc:	83 3a 00             	cmpl   $0x0,(%rdx)
   1400051bf:	75 05                	jne    1400051c6 <__diff_D2A+0x11f>
   1400051c1:	41 ff c9             	dec    %r9d
   1400051c4:	eb f2                	jmp    1400051b8 <__diff_D2A+0x111>
   1400051c6:	44 89 48 14          	mov    %r9d,0x14(%rax)
   1400051ca:	48 83 c4 20          	add    $0x20,%rsp
   1400051ce:	5b                   	pop    %rbx
   1400051cf:	5e                   	pop    %rsi
   1400051d0:	5f                   	pop    %rdi
   1400051d1:	5d                   	pop    %rbp
   1400051d2:	41 5c                	pop    %r12
   1400051d4:	c3                   	ret

00000001400051d5 <__b2d_D2A>:
   1400051d5:	57                   	push   %rdi
   1400051d6:	56                   	push   %rsi
   1400051d7:	53                   	push   %rbx
   1400051d8:	48 63 41 14          	movslq 0x14(%rcx),%rax
   1400051dc:	48 8d 59 18          	lea    0x18(%rcx),%rbx
   1400051e0:	49 89 d0             	mov    %rdx,%r8
   1400051e3:	48 8d 3c 83          	lea    (%rbx,%rax,4),%rdi
   1400051e7:	b8 20 00 00 00       	mov    $0x20,%eax
   1400051ec:	8b 77 fc             	mov    -0x4(%rdi),%esi
   1400051ef:	4c 8d 4f fc          	lea    -0x4(%rdi),%r9
   1400051f3:	0f bd d6             	bsr    %esi,%edx
   1400051f6:	83 f2 1f             	xor    $0x1f,%edx
   1400051f9:	29 d0                	sub    %edx,%eax
   1400051fb:	41 89 00             	mov    %eax,(%r8)
   1400051fe:	83 fa 0a             	cmp    $0xa,%edx
   140005201:	7f 2f                	jg     140005232 <__b2d_D2A+0x5d>
   140005203:	41 bb 0b 00 00 00    	mov    $0xb,%r11d
   140005209:	89 f0                	mov    %esi,%eax
   14000520b:	45 31 d2             	xor    %r10d,%r10d
   14000520e:	41 29 d3             	sub    %edx,%r11d
   140005211:	44 89 d9             	mov    %r11d,%ecx
   140005214:	d3 e8                	shr    %cl,%eax
   140005216:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
   14000521b:	48 c1 e0 20          	shl    $0x20,%rax
   14000521f:	4c 39 cb             	cmp    %r9,%rbx
   140005222:	73 04                	jae    140005228 <__b2d_D2A+0x53>
   140005224:	44 8b 57 f8          	mov    -0x8(%rdi),%r10d
   140005228:	8d 4a 15             	lea    0x15(%rdx),%ecx
   14000522b:	d3 e6                	shl    %cl,%esi
   14000522d:	41 89 f0             	mov    %esi,%r8d
   140005230:	eb 48                	jmp    14000527a <__b2d_D2A+0xa5>
   140005232:	45 31 c0             	xor    %r8d,%r8d
   140005235:	4c 39 cb             	cmp    %r9,%rbx
   140005238:	73 08                	jae    140005242 <__b2d_D2A+0x6d>
   14000523a:	44 8b 47 f8          	mov    -0x8(%rdi),%r8d
   14000523e:	4c 8d 4f f8          	lea    -0x8(%rdi),%r9
   140005242:	83 ea 0b             	sub    $0xb,%edx
   140005245:	74 3e                	je     140005285 <__b2d_D2A+0xb0>
   140005247:	41 bb 20 00 00 00    	mov    $0x20,%r11d
   14000524d:	89 d1                	mov    %edx,%ecx
   14000524f:	89 f0                	mov    %esi,%eax
   140005251:	44 89 c7             	mov    %r8d,%edi
   140005254:	41 29 d3             	sub    %edx,%r11d
   140005257:	d3 e0                	shl    %cl,%eax
   140005259:	45 31 d2             	xor    %r10d,%r10d
   14000525c:	44 89 d9             	mov    %r11d,%ecx
   14000525f:	d3 ef                	shr    %cl,%edi
   140005261:	09 f8                	or     %edi,%eax
   140005263:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
   140005268:	48 c1 e0 20          	shl    $0x20,%rax
   14000526c:	4c 39 cb             	cmp    %r9,%rbx
   14000526f:	73 04                	jae    140005275 <__b2d_D2A+0xa0>
   140005271:	45 8b 51 fc          	mov    -0x4(%r9),%r10d
   140005275:	89 d1                	mov    %edx,%ecx
   140005277:	41 d3 e0             	shl    %cl,%r8d
   14000527a:	44 89 d9             	mov    %r11d,%ecx
   14000527d:	41 d3 ea             	shr    %cl,%r10d
   140005280:	45 09 d0             	or     %r10d,%r8d
   140005283:	eb 0b                	jmp    140005290 <__b2d_D2A+0xbb>
   140005285:	89 f0                	mov    %esi,%eax
   140005287:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
   14000528c:	48 c1 e0 20          	shl    $0x20,%rax
   140005290:	4c 09 c0             	or     %r8,%rax
   140005293:	66 48 0f 6e c0       	movq   %rax,%xmm0
   140005298:	5b                   	pop    %rbx
   140005299:	5e                   	pop    %rsi
   14000529a:	5f                   	pop    %rdi
   14000529b:	c3                   	ret

000000014000529c <__d2b_D2A>:
   14000529c:	57                   	push   %rdi
   14000529d:	56                   	push   %rsi
   14000529e:	53                   	push   %rbx
   14000529f:	48 83 ec 20          	sub    $0x20,%rsp
   1400052a3:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400052a8:	66 48 0f 7e c7       	movq   %xmm0,%rdi
   1400052ad:	48 89 d6             	mov    %rdx,%rsi
   1400052b0:	4c 89 c3             	mov    %r8,%rbx
   1400052b3:	e8 bb f8 ff ff       	call   140004b73 <__Balloc_D2A>
   1400052b8:	49 89 c2             	mov    %rax,%r10
   1400052bb:	48 85 c0             	test   %rax,%rax
   1400052be:	0f 84 9e 00 00 00    	je     140005362 <__d2b_D2A+0xc6>
   1400052c4:	48 89 f8             	mov    %rdi,%rax
   1400052c7:	48 c1 e8 20          	shr    $0x20,%rax
   1400052cb:	89 c2                	mov    %eax,%edx
   1400052cd:	c1 e8 14             	shr    $0x14,%eax
   1400052d0:	81 e2 ff ff 0f 00    	and    $0xfffff,%edx
   1400052d6:	25 ff 07 00 00       	and    $0x7ff,%eax
   1400052db:	41 89 c0             	mov    %eax,%r8d
   1400052de:	74 06                	je     1400052e6 <__d2b_D2A+0x4a>
   1400052e0:	81 ca 00 00 10 00    	or     $0x100000,%edx
   1400052e6:	49 89 f9             	mov    %rdi,%r9
   1400052e9:	85 ff                	test   %edi,%edi
   1400052eb:	74 30                	je     14000531d <__d2b_D2A+0x81>
   1400052ed:	0f bc c7             	bsf    %edi,%eax
   1400052f0:	89 c1                	mov    %eax,%ecx
   1400052f2:	41 d3 e9             	shr    %cl,%r9d
   1400052f5:	85 c0                	test   %eax,%eax
   1400052f7:	74 12                	je     14000530b <__d2b_D2A+0x6f>
   1400052f9:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400052fe:	89 d7                	mov    %edx,%edi
   140005300:	29 c1                	sub    %eax,%ecx
   140005302:	d3 e7                	shl    %cl,%edi
   140005304:	89 c1                	mov    %eax,%ecx
   140005306:	41 09 f9             	or     %edi,%r9d
   140005309:	d3 ea                	shr    %cl,%edx
   14000530b:	83 fa 01             	cmp    $0x1,%edx
   14000530e:	41 89 52 1c          	mov    %edx,0x1c(%r10)
   140005312:	19 d2                	sbb    %edx,%edx
   140005314:	45 89 4a 18          	mov    %r9d,0x18(%r10)
   140005318:	83 c2 02             	add    $0x2,%edx
   14000531b:	eb 11                	jmp    14000532e <__d2b_D2A+0x92>
   14000531d:	0f bc ca             	bsf    %edx,%ecx
   140005320:	d3 ea                	shr    %cl,%edx
   140005322:	8d 41 20             	lea    0x20(%rcx),%eax
   140005325:	41 89 52 18          	mov    %edx,0x18(%r10)
   140005329:	ba 01 00 00 00       	mov    $0x1,%edx
   14000532e:	41 89 52 14          	mov    %edx,0x14(%r10)
   140005332:	45 85 c0             	test   %r8d,%r8d
   140005335:	74 11                	je     140005348 <__d2b_D2A+0xac>
   140005337:	41 8d 94 00 cd fb ff 	lea    -0x433(%r8,%rax,1),%edx
   14000533e:	ff 
   14000533f:	89 16                	mov    %edx,(%rsi)
   140005341:	ba 35 00 00 00       	mov    $0x35,%edx
   140005346:	eb 16                	jmp    14000535e <__d2b_D2A+0xc2>
   140005348:	2d 32 04 00 00       	sub    $0x432,%eax
   14000534d:	89 06                	mov    %eax,(%rsi)
   14000534f:	48 63 c2             	movslq %edx,%rax
   140005352:	41 0f bd 44 82 14    	bsr    0x14(%r10,%rax,4),%eax
   140005358:	c1 e2 05             	shl    $0x5,%edx
   14000535b:	83 f0 1f             	xor    $0x1f,%eax
   14000535e:	29 c2                	sub    %eax,%edx
   140005360:	89 13                	mov    %edx,(%rbx)
   140005362:	4c 89 d0             	mov    %r10,%rax
   140005365:	48 83 c4 20          	add    $0x20,%rsp
   140005369:	5b                   	pop    %rbx
   14000536a:	5e                   	pop    %rsi
   14000536b:	5f                   	pop    %rdi
   14000536c:	c3                   	ret

000000014000536d <__strcp_D2A>:
   14000536d:	31 c0                	xor    %eax,%eax
   14000536f:	44 8a 04 02          	mov    (%rdx,%rax,1),%r8b
   140005373:	49 89 c1             	mov    %rax,%r9
   140005376:	44 88 04 01          	mov    %r8b,(%rcx,%rax,1)
   14000537a:	48 ff c0             	inc    %rax
   14000537d:	45 84 c0             	test   %r8b,%r8b
   140005380:	75 ed                	jne    14000536f <__strcp_D2A+0x2>
   140005382:	4a 8d 04 09          	lea    (%rcx,%r9,1),%rax
   140005386:	c3                   	ret
   140005387:	90                   	nop
   140005388:	90                   	nop
   140005389:	90                   	nop
   14000538a:	90                   	nop
   14000538b:	90                   	nop
   14000538c:	90                   	nop
   14000538d:	90                   	nop
   14000538e:	90                   	nop
   14000538f:	90                   	nop

0000000140005390 <strnlen>:
   140005390:	48 89 c8             	mov    %rcx,%rax
   140005393:	49 89 c0             	mov    %rax,%r8
   140005396:	49 29 c8             	sub    %rcx,%r8
   140005399:	49 39 d0             	cmp    %rdx,%r8
   14000539c:	73 0a                	jae    1400053a8 <strnlen+0x18>
   14000539e:	80 38 00             	cmpb   $0x0,(%rax)
   1400053a1:	74 05                	je     1400053a8 <strnlen+0x18>
   1400053a3:	48 ff c0             	inc    %rax
   1400053a6:	eb eb                	jmp    140005393 <strnlen+0x3>
   1400053a8:	4c 89 c0             	mov    %r8,%rax
   1400053ab:	c3                   	ret
   1400053ac:	90                   	nop
   1400053ad:	90                   	nop
   1400053ae:	90                   	nop
   1400053af:	90                   	nop

00000001400053b0 <wcsnlen>:
   1400053b0:	31 c0                	xor    %eax,%eax
   1400053b2:	48 39 d0             	cmp    %rdx,%rax
   1400053b5:	74 0c                	je     1400053c3 <wcsnlen+0x13>
   1400053b7:	66 83 3c 41 00       	cmpw   $0x0,(%rcx,%rax,2)
   1400053bc:	74 05                	je     1400053c3 <wcsnlen+0x13>
   1400053be:	48 ff c0             	inc    %rax
   1400053c1:	eb ef                	jmp    1400053b2 <wcsnlen+0x2>
   1400053c3:	c3                   	ret
   1400053c4:	90                   	nop
   1400053c5:	90                   	nop
   1400053c6:	90                   	nop
   1400053c7:	90                   	nop
   1400053c8:	90                   	nop
   1400053c9:	90                   	nop
   1400053ca:	90                   	nop
   1400053cb:	90                   	nop
   1400053cc:	90                   	nop
   1400053cd:	90                   	nop
   1400053ce:	90                   	nop
   1400053cf:	90                   	nop

00000001400053d0 <__p__fmode>:
   1400053d0:	48 8b 05 79 23 00 00 	mov    0x2379(%rip),%rax        # 140007750 <.refptr.__imp__fmode>
   1400053d7:	48 8b 00             	mov    (%rax),%rax
   1400053da:	c3                   	ret
   1400053db:	90                   	nop
   1400053dc:	90                   	nop
   1400053dd:	90                   	nop
   1400053de:	90                   	nop
   1400053df:	90                   	nop

00000001400053e0 <__p__commode>:
   1400053e0:	48 8b 05 59 23 00 00 	mov    0x2359(%rip),%rax        # 140007740 <.refptr.__imp__commode>
   1400053e7:	48 8b 00             	mov    (%rax),%rax
   1400053ea:	c3                   	ret
   1400053eb:	90                   	nop
   1400053ec:	90                   	nop
   1400053ed:	90                   	nop
   1400053ee:	90                   	nop
   1400053ef:	90                   	nop

00000001400053f0 <_lock_file>:
   1400053f0:	53                   	push   %rbx
   1400053f1:	48 83 ec 20          	sub    $0x20,%rsp
   1400053f5:	48 89 cb             	mov    %rcx,%rbx
   1400053f8:	31 c9                	xor    %ecx,%ecx
   1400053fa:	e8 d1 00 00 00       	call   1400054d0 <__acrt_iob_func>
   1400053ff:	48 39 c3             	cmp    %rax,%rbx
   140005402:	72 3e                	jb     140005442 <_lock_file+0x52>
   140005404:	b9 13 00 00 00       	mov    $0x13,%ecx
   140005409:	e8 c2 00 00 00       	call   1400054d0 <__acrt_iob_func>
   14000540e:	48 39 c3             	cmp    %rax,%rbx
   140005411:	77 2f                	ja     140005442 <_lock_file+0x52>
   140005413:	31 c9                	xor    %ecx,%ecx
   140005415:	e8 b6 00 00 00       	call   1400054d0 <__acrt_iob_func>
   14000541a:	48 89 c2             	mov    %rax,%rdx
   14000541d:	48 89 d8             	mov    %rbx,%rax
   140005420:	48 29 d0             	sub    %rdx,%rax
   140005423:	48 c1 f8 04          	sar    $0x4,%rax
   140005427:	69 c0 ab aa aa aa    	imul   $0xaaaaaaab,%eax,%eax
   14000542d:	8d 48 10             	lea    0x10(%rax),%ecx
   140005430:	e8 53 05 00 00       	call   140005988 <_lock>
   140005435:	81 4b 18 00 80 00 00 	orl    $0x8000,0x18(%rbx)
   14000543c:	48 83 c4 20          	add    $0x20,%rsp
   140005440:	5b                   	pop    %rbx
   140005441:	c3                   	ret
   140005442:	48 8d 4b 30          	lea    0x30(%rbx),%rcx
   140005446:	48 83 c4 20          	add    $0x20,%rsp
   14000544a:	5b                   	pop    %rbx
   14000544b:	48 ff 25 6e 5d 00 00 	rex.W jmp *0x5d6e(%rip)        # 14000b1c0 <__imp_EnterCriticalSection>

0000000140005452 <_unlock_file>:
   140005452:	53                   	push   %rbx
   140005453:	48 83 ec 20          	sub    $0x20,%rsp
   140005457:	48 89 cb             	mov    %rcx,%rbx
   14000545a:	31 c9                	xor    %ecx,%ecx
   14000545c:	e8 6f 00 00 00       	call   1400054d0 <__acrt_iob_func>
   140005461:	48 39 c3             	cmp    %rax,%rbx
   140005464:	72 37                	jb     14000549d <_unlock_file+0x4b>
   140005466:	b9 13 00 00 00       	mov    $0x13,%ecx
   14000546b:	e8 60 00 00 00       	call   1400054d0 <__acrt_iob_func>
   140005470:	48 39 c3             	cmp    %rax,%rbx
   140005473:	77 28                	ja     14000549d <_unlock_file+0x4b>
   140005475:	81 63 18 ff 7f ff ff 	andl   $0xffff7fff,0x18(%rbx)
   14000547c:	31 c9                	xor    %ecx,%ecx
   14000547e:	e8 4d 00 00 00       	call   1400054d0 <__acrt_iob_func>
   140005483:	48 29 c3             	sub    %rax,%rbx
   140005486:	48 c1 fb 04          	sar    $0x4,%rbx
   14000548a:	69 db ab aa aa aa    	imul   $0xaaaaaaab,%ebx,%ebx
   140005490:	8d 4b 10             	lea    0x10(%rbx),%ecx
   140005493:	48 83 c4 20          	add    $0x20,%rsp
   140005497:	5b                   	pop    %rbx
   140005498:	e9 fb 04 00 00       	jmp    140005998 <_unlock>
   14000549d:	48 8d 4b 30          	lea    0x30(%rbx),%rcx
   1400054a1:	48 83 c4 20          	add    $0x20,%rsp
   1400054a5:	5b                   	pop    %rbx
   1400054a6:	48 ff 25 33 5d 00 00 	rex.W jmp *0x5d33(%rip)        # 14000b1e0 <__imp_LeaveCriticalSection>
   1400054ad:	90                   	nop
   1400054ae:	90                   	nop
   1400054af:	90                   	nop

00000001400054b0 <_get_invalid_parameter_handler>:
   1400054b0:	48 8b 05 a9 56 00 00 	mov    0x56a9(%rip),%rax        # 14000ab60 <handler>
   1400054b7:	c3                   	ret

00000001400054b8 <_set_invalid_parameter_handler>:
   1400054b8:	48 89 c8             	mov    %rcx,%rax
   1400054bb:	48 87 05 9e 56 00 00 	xchg   %rax,0x569e(%rip)        # 14000ab60 <handler>
   1400054c2:	c3                   	ret
   1400054c3:	90                   	nop
   1400054c4:	90                   	nop
   1400054c5:	90                   	nop
   1400054c6:	90                   	nop
   1400054c7:	90                   	nop
   1400054c8:	90                   	nop
   1400054c9:	90                   	nop
   1400054ca:	90                   	nop
   1400054cb:	90                   	nop
   1400054cc:	90                   	nop
   1400054cd:	90                   	nop
   1400054ce:	90                   	nop
   1400054cf:	90                   	nop

00000001400054d0 <__acrt_iob_func>:
   1400054d0:	53                   	push   %rbx
   1400054d1:	48 83 ec 20          	sub    $0x20,%rsp
   1400054d5:	89 cb                	mov    %ecx,%ebx
   1400054d7:	e8 74 04 00 00       	call   140005950 <__iob_func>
   1400054dc:	48 6b db 30          	imul   $0x30,%rbx,%rbx
   1400054e0:	48 01 d8             	add    %rbx,%rax
   1400054e3:	48 83 c4 20          	add    $0x20,%rsp
   1400054e7:	5b                   	pop    %rbx
   1400054e8:	c3                   	ret
   1400054e9:	90                   	nop
   1400054ea:	90                   	nop
   1400054eb:	90                   	nop
   1400054ec:	90                   	nop
   1400054ed:	90                   	nop
   1400054ee:	90                   	nop
   1400054ef:	90                   	nop

00000001400054f0 <__wcrtomb_cp>:
   1400054f0:	48 83 ec 58          	sub    $0x58,%rsp
   1400054f4:	48 89 c8             	mov    %rcx,%rax
   1400054f7:	66 89 54 24 68       	mov    %dx,0x68(%rsp)
   1400054fc:	44 89 c1             	mov    %r8d,%ecx
   1400054ff:	45 85 c0             	test   %r8d,%r8d
   140005502:	75 10                	jne    140005514 <__wcrtomb_cp+0x24>
   140005504:	66 81 fa ff 00       	cmp    $0xff,%dx
   140005509:	77 49                	ja     140005554 <__wcrtomb_cp+0x64>
   14000550b:	88 10                	mov    %dl,(%rax)
   14000550d:	b8 01 00 00 00       	mov    $0x1,%eax
   140005512:	eb 4e                	jmp    140005562 <__wcrtomb_cp+0x72>
   140005514:	31 d2                	xor    %edx,%edx
   140005516:	45 31 c0             	xor    %r8d,%r8d
   140005519:	44 89 4c 24 28       	mov    %r9d,0x28(%rsp)
   14000551e:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   140005524:	89 54 24 4c          	mov    %edx,0x4c(%rsp)
   140005528:	48 8d 54 24 4c       	lea    0x4c(%rsp),%rdx
   14000552d:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
   140005532:	31 d2                	xor    %edx,%edx
   140005534:	4c 89 44 24 30       	mov    %r8,0x30(%rsp)
   140005539:	4c 8d 44 24 68       	lea    0x68(%rsp),%r8
   14000553e:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140005543:	ff 15 cf 5c 00 00    	call   *0x5ccf(%rip)        # 14000b218 <__imp_WideCharToMultiByte>
   140005549:	85 c0                	test   %eax,%eax
   14000554b:	74 07                	je     140005554 <__wcrtomb_cp+0x64>
   14000554d:	83 7c 24 4c 00       	cmpl   $0x0,0x4c(%rsp)
   140005552:	74 0e                	je     140005562 <__wcrtomb_cp+0x72>
   140005554:	e8 1f 04 00 00       	call   140005978 <_errno>
   140005559:	c7 00 2a 00 00 00    	movl   $0x2a,(%rax)
   14000555f:	83 c8 ff             	or     $0xffffffff,%eax
   140005562:	48 83 c4 58          	add    $0x58,%rsp
   140005566:	c3                   	ret

0000000140005567 <wcrtomb>:
   140005567:	56                   	push   %rsi
   140005568:	48 83 ec 40          	sub    $0x40,%rsp
   14000556c:	89 d6                	mov    %edx,%esi
   14000556e:	48 85 c9             	test   %rcx,%rcx
   140005571:	75 05                	jne    140005578 <wcrtomb+0x11>
   140005573:	48 8d 4c 24 3b       	lea    0x3b(%rsp),%rcx
   140005578:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
   14000557d:	e8 be 03 00 00       	call   140005940 <___mb_cur_max_func>
   140005582:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
   140005586:	e8 ad 03 00 00       	call   140005938 <___lc_codepage_func>
   14000558b:	44 8b 4c 24 2c       	mov    0x2c(%rsp),%r9d
   140005590:	48 8b 4c 24 50       	mov    0x50(%rsp),%rcx
   140005595:	0f b7 d6             	movzwl %si,%edx
   140005598:	41 89 c0             	mov    %eax,%r8d
   14000559b:	e8 50 ff ff ff       	call   1400054f0 <__wcrtomb_cp>
   1400055a0:	48 98                	cltq
   1400055a2:	48 83 c4 40          	add    $0x40,%rsp
   1400055a6:	5e                   	pop    %rsi
   1400055a7:	c3                   	ret

00000001400055a8 <wcsrtombs>:
   1400055a8:	41 56                	push   %r14
   1400055aa:	41 55                	push   %r13
   1400055ac:	41 54                	push   %r12
   1400055ae:	55                   	push   %rbp
   1400055af:	57                   	push   %rdi
   1400055b0:	56                   	push   %rsi
   1400055b1:	53                   	push   %rbx
   1400055b2:	48 83 ec 30          	sub    $0x30,%rsp
   1400055b6:	31 db                	xor    %ebx,%ebx
   1400055b8:	49 89 d6             	mov    %rdx,%r14
   1400055bb:	48 89 cd             	mov    %rcx,%rbp
   1400055be:	4d 89 c5             	mov    %r8,%r13
   1400055c1:	e8 72 03 00 00       	call   140005938 <___lc_codepage_func>
   1400055c6:	89 c6                	mov    %eax,%esi
   1400055c8:	e8 73 03 00 00       	call   140005940 <___mb_cur_max_func>
   1400055cd:	4d 8b 26             	mov    (%r14),%r12
   1400055d0:	89 c7                	mov    %eax,%edi
   1400055d2:	4d 85 e4             	test   %r12,%r12
   1400055d5:	74 7d                	je     140005654 <wcsrtombs+0xac>
   1400055d7:	48 85 ed             	test   %rbp,%rbp
   1400055da:	75 0b                	jne    1400055e7 <wcsrtombs+0x3f>
   1400055dc:	48 8d 6c 24 2b       	lea    0x2b(%rsp),%rbp
   1400055e1:	eb 4f                	jmp    140005632 <wcsrtombs+0x8a>
   1400055e3:	49 83 c4 02          	add    $0x2,%r12
   1400055e7:	4c 39 eb             	cmp    %r13,%rbx
   1400055ea:	73 2c                	jae    140005618 <wcsrtombs+0x70>
   1400055ec:	41 0f b7 14 24       	movzwl (%r12),%edx
   1400055f1:	41 89 f9             	mov    %edi,%r9d
   1400055f4:	41 89 f0             	mov    %esi,%r8d
   1400055f7:	48 89 e9             	mov    %rbp,%rcx
   1400055fa:	e8 f1 fe ff ff       	call   1400054f0 <__wcrtomb_cp>
   1400055ff:	85 c0                	test   %eax,%eax
   140005601:	7e 4d                	jle    140005650 <wcsrtombs+0xa8>
   140005603:	48 98                	cltq
   140005605:	48 01 c5             	add    %rax,%rbp
   140005608:	48 01 c3             	add    %rax,%rbx
   14000560b:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
   14000560f:	75 d2                	jne    1400055e3 <wcsrtombs+0x3b>
   140005611:	31 c0                	xor    %eax,%eax
   140005613:	49 89 06             	mov    %rax,(%r14)
   140005616:	eb 33                	jmp    14000564b <wcsrtombs+0xa3>
   140005618:	4d 89 26             	mov    %r12,(%r14)
   14000561b:	eb 37                	jmp    140005654 <wcsrtombs+0xac>
   14000561d:	48 63 d0             	movslq %eax,%rdx
   140005620:	ff c8                	dec    %eax
   140005622:	48 98                	cltq
   140005624:	48 01 d3             	add    %rdx,%rbx
   140005627:	80 7c 04 2b 00       	cmpb   $0x0,0x2b(%rsp,%rax,1)
   14000562c:	74 1d                	je     14000564b <wcsrtombs+0xa3>
   14000562e:	49 83 c4 02          	add    $0x2,%r12
   140005632:	41 0f b7 14 24       	movzwl (%r12),%edx
   140005637:	41 89 f9             	mov    %edi,%r9d
   14000563a:	41 89 f0             	mov    %esi,%r8d
   14000563d:	48 89 e9             	mov    %rbp,%rcx
   140005640:	e8 ab fe ff ff       	call   1400054f0 <__wcrtomb_cp>
   140005645:	85 c0                	test   %eax,%eax
   140005647:	7f d4                	jg     14000561d <wcsrtombs+0x75>
   140005649:	eb 05                	jmp    140005650 <wcsrtombs+0xa8>
   14000564b:	48 ff cb             	dec    %rbx
   14000564e:	eb 04                	jmp    140005654 <wcsrtombs+0xac>
   140005650:	48 83 cb ff          	or     $0xffffffffffffffff,%rbx
   140005654:	48 89 d8             	mov    %rbx,%rax
   140005657:	48 83 c4 30          	add    $0x30,%rsp
   14000565b:	5b                   	pop    %rbx
   14000565c:	5e                   	pop    %rsi
   14000565d:	5f                   	pop    %rdi
   14000565e:	5d                   	pop    %rbp
   14000565f:	41 5c                	pop    %r12
   140005661:	41 5d                	pop    %r13
   140005663:	41 5e                	pop    %r14
   140005665:	c3                   	ret
   140005666:	90                   	nop
   140005667:	90                   	nop
   140005668:	90                   	nop
   140005669:	90                   	nop
   14000566a:	90                   	nop
   14000566b:	90                   	nop
   14000566c:	90                   	nop
   14000566d:	90                   	nop
   14000566e:	90                   	nop
   14000566f:	90                   	nop

0000000140005670 <__mbrtowc_cp>:
   140005670:	55                   	push   %rbp
   140005671:	57                   	push   %rdi
   140005672:	56                   	push   %rsi
   140005673:	53                   	push   %rbx
   140005674:	48 83 ec 48          	sub    $0x48,%rsp
   140005678:	48 89 ce             	mov    %rcx,%rsi
   14000567b:	48 89 d3             	mov    %rdx,%rbx
   14000567e:	8b 8c 24 90 00 00 00 	mov    0x90(%rsp),%ecx
   140005685:	4c 89 c5             	mov    %r8,%rbp
   140005688:	4c 89 cf             	mov    %r9,%rdi
   14000568b:	48 85 d2             	test   %rdx,%rdx
   14000568e:	74 21                	je     1400056b1 <__mbrtowc_cp+0x41>
   140005690:	4d 85 c0             	test   %r8,%r8
   140005693:	0f 84 87 00 00 00    	je     140005720 <__mbrtowc_cp+0xb0>
   140005699:	31 d2                	xor    %edx,%edx
   14000569b:	41 8b 01             	mov    (%r9),%eax
   14000569e:	41 89 11             	mov    %edx,(%r9)
   1400056a1:	0f b6 13             	movzbl (%rbx),%edx
   1400056a4:	89 44 24 3c          	mov    %eax,0x3c(%rsp)
   1400056a8:	84 d2                	test   %dl,%dl
   1400056aa:	75 0c                	jne    1400056b8 <__mbrtowc_cp+0x48>
   1400056ac:	66 c7 06 00 00       	movw   $0x0,(%rsi)
   1400056b1:	31 c0                	xor    %eax,%eax
   1400056b3:	e9 cb 00 00 00       	jmp    140005783 <__mbrtowc_cp+0x113>
   1400056b8:	83 bc 24 98 00 00 00 	cmpl   $0x1,0x98(%rsp)
   1400056bf:	01 
   1400056c0:	0f 86 ae 00 00 00    	jbe    140005774 <__mbrtowc_cp+0x104>
   1400056c6:	84 c0                	test   %al,%al
   1400056c8:	74 35                	je     1400056ff <__mbrtowc_cp+0x8f>
   1400056ca:	88 54 24 3d          	mov    %dl,0x3d(%rsp)
   1400056ce:	41 b9 02 00 00 00    	mov    $0x2,%r9d
   1400056d4:	4c 8d 44 24 3c       	lea    0x3c(%rsp),%r8
   1400056d9:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
   1400056e0:	00 
   1400056e1:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   1400056e6:	ba 08 00 00 00       	mov    $0x8,%edx
   1400056eb:	ff 15 f7 5a 00 00    	call   *0x5af7(%rip)        # 14000b1e8 <__imp_MultiByteToWideChar>
   1400056f1:	85 c0                	test   %eax,%eax
   1400056f3:	74 6f                	je     140005764 <__mbrtowc_cp+0xf4>
   1400056f5:	b8 02 00 00 00       	mov    $0x2,%eax
   1400056fa:	e9 84 00 00 00       	jmp    140005783 <__mbrtowc_cp+0x113>
   1400056ff:	89 8c 24 90 00 00 00 	mov    %ecx,0x90(%rsp)
   140005706:	ff 15 cc 5a 00 00    	call   *0x5acc(%rip)        # 14000b1d8 <__imp_IsDBCSLeadByteEx>
   14000570c:	8b 8c 24 90 00 00 00 	mov    0x90(%rsp),%ecx
   140005713:	85 c0                	test   %eax,%eax
   140005715:	74 5d                	je     140005774 <__mbrtowc_cp+0x104>
   140005717:	48 ff cd             	dec    %rbp
   14000571a:	75 0b                	jne    140005727 <__mbrtowc_cp+0xb7>
   14000571c:	8a 03                	mov    (%rbx),%al
   14000571e:	88 07                	mov    %al,(%rdi)
   140005720:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
   140005725:	eb 5c                	jmp    140005783 <__mbrtowc_cp+0x113>
   140005727:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   14000572c:	41 b9 02 00 00 00    	mov    $0x2,%r9d
   140005732:	49 89 d8             	mov    %rbx,%r8
   140005735:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
   14000573c:	00 
   14000573d:	eb a7                	jmp    1400056e6 <__mbrtowc_cp+0x76>
   14000573f:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
   140005746:	00 
   140005747:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   14000574d:	49 89 d8             	mov    %rbx,%r8
   140005750:	ba 08 00 00 00       	mov    $0x8,%edx
   140005755:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   14000575a:	ff 15 88 5a 00 00    	call   *0x5a88(%rip)        # 14000b1e8 <__imp_MultiByteToWideChar>
   140005760:	85 c0                	test   %eax,%eax
   140005762:	75 1a                	jne    14000577e <__mbrtowc_cp+0x10e>
   140005764:	e8 0f 02 00 00       	call   140005978 <_errno>
   140005769:	c7 00 2a 00 00 00    	movl   $0x2a,(%rax)
   14000576f:	83 c8 ff             	or     $0xffffffff,%eax
   140005772:	eb 0f                	jmp    140005783 <__mbrtowc_cp+0x113>
   140005774:	85 c9                	test   %ecx,%ecx
   140005776:	75 c7                	jne    14000573f <__mbrtowc_cp+0xcf>
   140005778:	0f b6 03             	movzbl (%rbx),%eax
   14000577b:	66 89 06             	mov    %ax,(%rsi)
   14000577e:	b8 01 00 00 00       	mov    $0x1,%eax
   140005783:	48 83 c4 48          	add    $0x48,%rsp
   140005787:	5b                   	pop    %rbx
   140005788:	5e                   	pop    %rsi
   140005789:	5f                   	pop    %rdi
   14000578a:	5d                   	pop    %rbp
   14000578b:	c3                   	ret

000000014000578c <mbrtowc>:
   14000578c:	57                   	push   %rdi
   14000578d:	48 83 ec 40          	sub    $0x40,%rsp
   140005791:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
   140005798:	48 85 c9             	test   %rcx,%rcx
   14000579b:	75 05                	jne    1400057a2 <mbrtowc+0x16>
   14000579d:	48 8d 4c 24 3e       	lea    0x3e(%rsp),%rcx
   1400057a2:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   1400057a7:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   1400057ac:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   1400057b1:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
   1400057b6:	e8 85 01 00 00       	call   140005940 <___mb_cur_max_func>
   1400057bb:	89 c7                	mov    %eax,%edi
   1400057bd:	e8 76 01 00 00       	call   140005938 <___lc_codepage_func>
   1400057c2:	4c 8b 4c 24 68       	mov    0x68(%rsp),%r9
   1400057c7:	48 8b 4c 24 50       	mov    0x50(%rsp),%rcx
   1400057cc:	48 8b 54 24 58       	mov    0x58(%rsp),%rdx
   1400057d1:	4c 8b 44 24 60       	mov    0x60(%rsp),%r8
   1400057d6:	4d 85 c9             	test   %r9,%r9
   1400057d9:	75 07                	jne    1400057e2 <mbrtowc+0x56>
   1400057db:	4c 8d 0d 96 53 00 00 	lea    0x5396(%rip),%r9        # 14000ab78 <internal_mbstate.2>
   1400057e2:	89 7c 24 28          	mov    %edi,0x28(%rsp)
   1400057e6:	89 44 24 20          	mov    %eax,0x20(%rsp)
   1400057ea:	e8 81 fe ff ff       	call   140005670 <__mbrtowc_cp>
   1400057ef:	48 98                	cltq
   1400057f1:	48 83 c4 40          	add    $0x40,%rsp
   1400057f5:	5f                   	pop    %rdi
   1400057f6:	c3                   	ret

00000001400057f7 <mbsrtowcs>:
   1400057f7:	41 56                	push   %r14
   1400057f9:	41 55                	push   %r13
   1400057fb:	41 54                	push   %r12
   1400057fd:	55                   	push   %rbp
   1400057fe:	57                   	push   %rdi
   1400057ff:	56                   	push   %rsi
   140005800:	53                   	push   %rbx
   140005801:	48 83 ec 40          	sub    $0x40,%rsp
   140005805:	48 89 cd             	mov    %rcx,%rbp
   140005808:	48 89 d6             	mov    %rdx,%rsi
   14000580b:	4d 89 c6             	mov    %r8,%r14
   14000580e:	4c 89 cf             	mov    %r9,%rdi
   140005811:	4d 85 c9             	test   %r9,%r9
   140005814:	75 07                	jne    14000581d <mbsrtowcs+0x26>
   140005816:	48 8d 3d 57 53 00 00 	lea    0x5357(%rip),%rdi        # 14000ab74 <internal_mbstate.1>
   14000581d:	e8 16 01 00 00       	call   140005938 <___lc_codepage_func>
   140005822:	31 db                	xor    %ebx,%ebx
   140005824:	41 89 c5             	mov    %eax,%r13d
   140005827:	e8 14 01 00 00       	call   140005940 <___mb_cur_max_func>
   14000582c:	41 89 c4             	mov    %eax,%r12d
   14000582f:	48 85 f6             	test   %rsi,%rsi
   140005832:	0f 84 81 00 00 00    	je     1400058b9 <mbsrtowcs+0xc2>
   140005838:	48 83 3e 00          	cmpq   $0x0,(%rsi)
   14000583c:	74 7b                	je     1400058b9 <mbsrtowcs+0xc2>
   14000583e:	48 85 ed             	test   %rbp,%rbp
   140005841:	74 3e                	je     140005881 <mbsrtowcs+0x8a>
   140005843:	4c 39 f3             	cmp    %r14,%rbx
   140005846:	73 71                	jae    1400058b9 <mbsrtowcs+0xc2>
   140005848:	44 89 64 24 28       	mov    %r12d,0x28(%rsp)
   14000584d:	4d 89 f0             	mov    %r14,%r8
   140005850:	49 89 f9             	mov    %rdi,%r9
   140005853:	48 89 e9             	mov    %rbp,%rcx
   140005856:	44 89 6c 24 20       	mov    %r13d,0x20(%rsp)
   14000585b:	48 8b 16             	mov    (%rsi),%rdx
   14000585e:	49 29 d8             	sub    %rbx,%r8
   140005861:	e8 0a fe ff ff       	call   140005670 <__mbrtowc_cp>
   140005866:	85 c0                	test   %eax,%eax
   140005868:	7e 0e                	jle    140005878 <mbsrtowcs+0x81>
   14000586a:	48 98                	cltq
   14000586c:	48 83 c5 02          	add    $0x2,%rbp
   140005870:	48 01 06             	add    %rax,(%rsi)
   140005873:	48 01 c3             	add    %rax,%rbx
   140005876:	eb cb                	jmp    140005843 <mbsrtowcs+0x4c>
   140005878:	75 3f                	jne    1400058b9 <mbsrtowcs+0xc2>
   14000587a:	31 c0                	xor    %eax,%eax
   14000587c:	48 89 06             	mov    %rax,(%rsi)
   14000587f:	eb 38                	jmp    1400058b9 <mbsrtowcs+0xc2>
   140005881:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
   140005888:	41 89 c6             	mov    %eax,%r14d
   14000588b:	48 8d 6c 24 3e       	lea    0x3e(%rsp),%rbp
   140005890:	48 8b 16             	mov    (%rsi),%rdx
   140005893:	44 89 64 24 28       	mov    %r12d,0x28(%rsp)
   140005898:	49 89 f9             	mov    %rdi,%r9
   14000589b:	4d 89 f0             	mov    %r14,%r8
   14000589e:	44 89 6c 24 20       	mov    %r13d,0x20(%rsp)
   1400058a3:	48 89 e9             	mov    %rbp,%rcx
   1400058a6:	48 01 da             	add    %rbx,%rdx
   1400058a9:	e8 c2 fd ff ff       	call   140005670 <__mbrtowc_cp>
   1400058ae:	85 c0                	test   %eax,%eax
   1400058b0:	7e 07                	jle    1400058b9 <mbsrtowcs+0xc2>
   1400058b2:	48 98                	cltq
   1400058b4:	48 01 c3             	add    %rax,%rbx
   1400058b7:	eb d7                	jmp    140005890 <mbsrtowcs+0x99>
   1400058b9:	48 89 d8             	mov    %rbx,%rax
   1400058bc:	48 83 c4 40          	add    $0x40,%rsp
   1400058c0:	5b                   	pop    %rbx
   1400058c1:	5e                   	pop    %rsi
   1400058c2:	5f                   	pop    %rdi
   1400058c3:	5d                   	pop    %rbp
   1400058c4:	41 5c                	pop    %r12
   1400058c6:	41 5d                	pop    %r13
   1400058c8:	41 5e                	pop    %r14
   1400058ca:	c3                   	ret

00000001400058cb <mbrlen>:
   1400058cb:	57                   	push   %rdi
   1400058cc:	56                   	push   %rsi
   1400058cd:	53                   	push   %rbx
   1400058ce:	48 83 ec 40          	sub    $0x40,%rsp
   1400058d2:	4c 89 44 24 70       	mov    %r8,0x70(%rsp)
   1400058d7:	48 89 cb             	mov    %rcx,%rbx
   1400058da:	48 89 d6             	mov    %rdx,%rsi
   1400058dd:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
   1400058e4:	e8 57 00 00 00       	call   140005940 <___mb_cur_max_func>
   1400058e9:	89 c7                	mov    %eax,%edi
   1400058eb:	e8 48 00 00 00       	call   140005938 <___lc_codepage_func>
   1400058f0:	4c 8b 4c 24 70       	mov    0x70(%rsp),%r9
   1400058f5:	4d 85 c9             	test   %r9,%r9
   1400058f8:	75 07                	jne    140005901 <mbrlen+0x36>
   1400058fa:	4c 8d 0d 6f 52 00 00 	lea    0x526f(%rip),%r9        # 14000ab70 <s_mbstate.0>
   140005901:	89 7c 24 28          	mov    %edi,0x28(%rsp)
   140005905:	48 8d 4c 24 3e       	lea    0x3e(%rsp),%rcx
   14000590a:	49 89 f0             	mov    %rsi,%r8
   14000590d:	48 89 da             	mov    %rbx,%rdx
   140005910:	89 44 24 20          	mov    %eax,0x20(%rsp)
   140005914:	e8 57 fd ff ff       	call   140005670 <__mbrtowc_cp>
   140005919:	48 98                	cltq
   14000591b:	48 83 c4 40          	add    $0x40,%rsp
   14000591f:	5b                   	pop    %rbx
   140005920:	5e                   	pop    %rsi
   140005921:	5f                   	pop    %rdi
   140005922:	c3                   	ret
   140005923:	90                   	nop
   140005924:	90                   	nop
   140005925:	90                   	nop
   140005926:	90                   	nop
   140005927:	90                   	nop
   140005928:	90                   	nop
   140005929:	90                   	nop
   14000592a:	90                   	nop
   14000592b:	90                   	nop
   14000592c:	90                   	nop
   14000592d:	90                   	nop
   14000592e:	90                   	nop
   14000592f:	90                   	nop

0000000140005930 <__C_specific_handler>:
   140005930:	ff 25 f2 58 00 00    	jmp    *0x58f2(%rip)        # 14000b228 <__imp___C_specific_handler>
   140005936:	90                   	nop
   140005937:	90                   	nop

0000000140005938 <___lc_codepage_func>:
   140005938:	ff 25 f2 58 00 00    	jmp    *0x58f2(%rip)        # 14000b230 <__imp____lc_codepage_func>
   14000593e:	90                   	nop
   14000593f:	90                   	nop

0000000140005940 <___mb_cur_max_func>:
   140005940:	ff 25 f2 58 00 00    	jmp    *0x58f2(%rip)        # 14000b238 <__imp____mb_cur_max_func>
   140005946:	90                   	nop
   140005947:	90                   	nop

0000000140005948 <__getmainargs>:
   140005948:	ff 25 f2 58 00 00    	jmp    *0x58f2(%rip)        # 14000b240 <__imp___getmainargs>
   14000594e:	90                   	nop
   14000594f:	90                   	nop

0000000140005950 <__iob_func>:
   140005950:	ff 25 fa 58 00 00    	jmp    *0x58fa(%rip)        # 14000b250 <__imp___iob_func>
   140005956:	90                   	nop
   140005957:	90                   	nop

0000000140005958 <__set_app_type>:
   140005958:	ff 25 fa 58 00 00    	jmp    *0x58fa(%rip)        # 14000b258 <__imp___set_app_type>
   14000595e:	90                   	nop
   14000595f:	90                   	nop

0000000140005960 <__setusermatherr>:
   140005960:	ff 25 fa 58 00 00    	jmp    *0x58fa(%rip)        # 14000b260 <__imp___setusermatherr>
   140005966:	90                   	nop
   140005967:	90                   	nop

0000000140005968 <_amsg_exit>:
   140005968:	ff 25 fa 58 00 00    	jmp    *0x58fa(%rip)        # 14000b268 <__imp__amsg_exit>
   14000596e:	90                   	nop
   14000596f:	90                   	nop

0000000140005970 <_cexit>:
   140005970:	ff 25 fa 58 00 00    	jmp    *0x58fa(%rip)        # 14000b270 <__imp__cexit>
   140005976:	90                   	nop
   140005977:	90                   	nop

0000000140005978 <_errno>:
   140005978:	ff 25 02 59 00 00    	jmp    *0x5902(%rip)        # 14000b280 <__imp__errno>
   14000597e:	90                   	nop
   14000597f:	90                   	nop

0000000140005980 <_initterm>:
   140005980:	ff 25 0a 59 00 00    	jmp    *0x590a(%rip)        # 14000b290 <__imp__initterm>
   140005986:	90                   	nop
   140005987:	90                   	nop

0000000140005988 <_lock>:
   140005988:	ff 25 0a 59 00 00    	jmp    *0x590a(%rip)        # 14000b298 <__imp__lock>
   14000598e:	90                   	nop
   14000598f:	90                   	nop

0000000140005990 <_onexit>:
   140005990:	ff 25 0a 59 00 00    	jmp    *0x590a(%rip)        # 14000b2a0 <__imp__onexit>
   140005996:	90                   	nop
   140005997:	90                   	nop

0000000140005998 <_unlock>:
   140005998:	ff 25 0a 59 00 00    	jmp    *0x590a(%rip)        # 14000b2a8 <__imp__unlock>
   14000599e:	90                   	nop
   14000599f:	90                   	nop

00000001400059a0 <abort>:
   1400059a0:	ff 25 0a 59 00 00    	jmp    *0x590a(%rip)        # 14000b2b0 <__imp_abort>
   1400059a6:	90                   	nop
   1400059a7:	90                   	nop

00000001400059a8 <calloc>:
   1400059a8:	ff 25 0a 59 00 00    	jmp    *0x590a(%rip)        # 14000b2b8 <__imp_calloc>
   1400059ae:	90                   	nop
   1400059af:	90                   	nop

00000001400059b0 <exit>:
   1400059b0:	ff 25 0a 59 00 00    	jmp    *0x590a(%rip)        # 14000b2c0 <__imp_exit>
   1400059b6:	90                   	nop
   1400059b7:	90                   	nop

00000001400059b8 <fprintf>:
   1400059b8:	ff 25 0a 59 00 00    	jmp    *0x590a(%rip)        # 14000b2c8 <__imp_fprintf>
   1400059be:	90                   	nop
   1400059bf:	90                   	nop

00000001400059c0 <fputc>:
   1400059c0:	ff 25 0a 59 00 00    	jmp    *0x590a(%rip)        # 14000b2d0 <__imp_fputc>
   1400059c6:	90                   	nop
   1400059c7:	90                   	nop

00000001400059c8 <fputs>:
   1400059c8:	ff 25 0a 59 00 00    	jmp    *0x590a(%rip)        # 14000b2d8 <__imp_fputs>
   1400059ce:	90                   	nop
   1400059cf:	90                   	nop

00000001400059d0 <free>:
   1400059d0:	ff 25 0a 59 00 00    	jmp    *0x590a(%rip)        # 14000b2e0 <__imp_free>
   1400059d6:	90                   	nop
   1400059d7:	90                   	nop

00000001400059d8 <localeconv>:
   1400059d8:	ff 25 0a 59 00 00    	jmp    *0x590a(%rip)        # 14000b2e8 <__imp_localeconv>
   1400059de:	90                   	nop
   1400059df:	90                   	nop

00000001400059e0 <malloc>:
   1400059e0:	ff 25 0a 59 00 00    	jmp    *0x590a(%rip)        # 14000b2f0 <__imp_malloc>
   1400059e6:	90                   	nop
   1400059e7:	90                   	nop

00000001400059e8 <signal>:
   1400059e8:	ff 25 0a 59 00 00    	jmp    *0x590a(%rip)        # 14000b2f8 <__imp_signal>
   1400059ee:	90                   	nop
   1400059ef:	90                   	nop

00000001400059f0 <strerror>:
   1400059f0:	ff 25 0a 59 00 00    	jmp    *0x590a(%rip)        # 14000b300 <__imp_strerror>
   1400059f6:	90                   	nop
   1400059f7:	90                   	nop

00000001400059f8 <strlen>:
   1400059f8:	ff 25 0a 59 00 00    	jmp    *0x590a(%rip)        # 14000b308 <__imp_strlen>
   1400059fe:	90                   	nop
   1400059ff:	90                   	nop

0000000140005a00 <strncmp>:
   140005a00:	ff 25 0a 59 00 00    	jmp    *0x590a(%rip)        # 14000b310 <__imp_strncmp>
   140005a06:	90                   	nop
   140005a07:	90                   	nop

0000000140005a08 <vfprintf>:
   140005a08:	ff 25 0a 59 00 00    	jmp    *0x590a(%rip)        # 14000b318 <__imp_vfprintf>
   140005a0e:	90                   	nop
   140005a0f:	90                   	nop

0000000140005a10 <wcslen>:
   140005a10:	ff 25 0a 59 00 00    	jmp    *0x590a(%rip)        # 14000b320 <__imp_wcslen>
   140005a16:	90                   	nop
   140005a17:	90                   	nop
   140005a18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140005a1f:	00 

0000000140005a20 <WideCharToMultiByte>:
   140005a20:	ff 25 f2 57 00 00    	jmp    *0x57f2(%rip)        # 14000b218 <__imp_WideCharToMultiByte>
   140005a26:	90                   	nop
   140005a27:	90                   	nop

0000000140005a28 <VirtualQuery>:
   140005a28:	ff 25 e2 57 00 00    	jmp    *0x57e2(%rip)        # 14000b210 <__imp_VirtualQuery>
   140005a2e:	90                   	nop
   140005a2f:	90                   	nop

0000000140005a30 <VirtualProtect>:
   140005a30:	ff 25 d2 57 00 00    	jmp    *0x57d2(%rip)        # 14000b208 <__imp_VirtualProtect>
   140005a36:	90                   	nop
   140005a37:	90                   	nop

0000000140005a38 <TlsGetValue>:
   140005a38:	ff 25 c2 57 00 00    	jmp    *0x57c2(%rip)        # 14000b200 <__imp_TlsGetValue>
   140005a3e:	90                   	nop
   140005a3f:	90                   	nop

0000000140005a40 <Sleep>:
   140005a40:	ff 25 b2 57 00 00    	jmp    *0x57b2(%rip)        # 14000b1f8 <__imp_Sleep>
   140005a46:	90                   	nop
   140005a47:	90                   	nop

0000000140005a48 <SetUnhandledExceptionFilter>:
   140005a48:	ff 25 a2 57 00 00    	jmp    *0x57a2(%rip)        # 14000b1f0 <__imp_SetUnhandledExceptionFilter>
   140005a4e:	90                   	nop
   140005a4f:	90                   	nop

0000000140005a50 <MultiByteToWideChar>:
   140005a50:	ff 25 92 57 00 00    	jmp    *0x5792(%rip)        # 14000b1e8 <__imp_MultiByteToWideChar>
   140005a56:	90                   	nop
   140005a57:	90                   	nop

0000000140005a58 <LeaveCriticalSection>:
   140005a58:	ff 25 82 57 00 00    	jmp    *0x5782(%rip)        # 14000b1e0 <__imp_LeaveCriticalSection>
   140005a5e:	90                   	nop
   140005a5f:	90                   	nop

0000000140005a60 <IsDBCSLeadByteEx>:
   140005a60:	ff 25 72 57 00 00    	jmp    *0x5772(%rip)        # 14000b1d8 <__imp_IsDBCSLeadByteEx>
   140005a66:	90                   	nop
   140005a67:	90                   	nop

0000000140005a68 <InitializeCriticalSection>:
   140005a68:	ff 25 62 57 00 00    	jmp    *0x5762(%rip)        # 14000b1d0 <__imp_InitializeCriticalSection>
   140005a6e:	90                   	nop
   140005a6f:	90                   	nop

0000000140005a70 <GetLastError>:
   140005a70:	ff 25 52 57 00 00    	jmp    *0x5752(%rip)        # 14000b1c8 <__imp_GetLastError>
   140005a76:	90                   	nop
   140005a77:	90                   	nop

0000000140005a78 <EnterCriticalSection>:
   140005a78:	ff 25 42 57 00 00    	jmp    *0x5742(%rip)        # 14000b1c0 <__imp_EnterCriticalSection>
   140005a7e:	90                   	nop
   140005a7f:	90                   	nop

0000000140005a80 <DeleteCriticalSection>:
   140005a80:	ff 25 32 57 00 00    	jmp    *0x5732(%rip)        # 14000b1b8 <__IAT_start__>
   140005a86:	90                   	nop
   140005a87:	90                   	nop
   140005a88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140005a8f:	00 

0000000140005a90 <register_frame_ctor>:
   140005a90:	e9 bb b8 ff ff       	jmp    140001350 <__gcc_register_frame>
   140005a95:	90                   	nop
   140005a96:	90                   	nop
   140005a97:	90                   	nop
   140005a98:	90                   	nop
   140005a99:	90                   	nop
   140005a9a:	90                   	nop
   140005a9b:	90                   	nop
   140005a9c:	90                   	nop
   140005a9d:	90                   	nop
   140005a9e:	90                   	nop
   140005a9f:	90                   	nop

0000000140005aa0 <__CTOR_LIST__>:
   140005aa0:	ff                   	(bad)
   140005aa1:	ff                   	(bad)
   140005aa2:	ff                   	(bad)
   140005aa3:	ff                   	(bad)
   140005aa4:	ff                   	(bad)
   140005aa5:	ff                   	(bad)
   140005aa6:	ff                   	(bad)
   140005aa7:	ff                   	.byte 0xff

0000000140005aa8 <.ctors.65535>:
   140005aa8:	90                   	nop
   140005aa9:	5a                   	pop    %rdx
   140005aaa:	00 40 01             	add    %al,0x1(%rax)
	...

0000000140005ab8 <__DTOR_LIST__>:
   140005ab8:	ff                   	(bad)
   140005ab9:	ff                   	(bad)
   140005aba:	ff                   	(bad)
   140005abb:	ff                   	(bad)
   140005abc:	ff                   	(bad)
   140005abd:	ff                   	(bad)
   140005abe:	ff                   	(bad)
   140005abf:	ff 00                	incl   (%rax)
   140005ac1:	00 00                	add    %al,(%rax)
   140005ac3:	00 00                	add    %al,(%rax)
   140005ac5:	00 00                	add    %al,(%rax)
	...
