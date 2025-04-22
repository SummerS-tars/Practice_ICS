
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400b88 <_init>:
  400b88:	48 83 ec 08          	sub    $0x8,%rsp
  400b8c:	48 8b 05 65 44 20 00 	mov    0x204465(%rip),%rax        # 604ff8 <__gmon_start__>
  400b93:	48 85 c0             	test   %rax,%rax
  400b96:	74 05                	je     400b9d <_init+0x15>
  400b98:	e8 13 02 00 00       	call   400db0 <__gmon_start__@plt>
  400b9d:	48 83 c4 08          	add    $0x8,%rsp
  400ba1:	c3                   	ret    

Disassembly of section .plt:

0000000000400bb0 <.plt>:
  400bb0:	ff 35 52 44 20 00    	push   0x204452(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400bb6:	ff 25 54 44 20 00    	jmp    *0x204454(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400bbc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400bc0 <__errno_location@plt>:
  400bc0:	ff 25 52 44 20 00    	jmp    *0x204452(%rip)        # 605018 <__errno_location@GLIBC_2.2.5>
  400bc6:	68 00 00 00 00       	push   $0x0
  400bcb:	e9 e0 ff ff ff       	jmp    400bb0 <.plt>

0000000000400bd0 <srandom@plt>:
  400bd0:	ff 25 4a 44 20 00    	jmp    *0x20444a(%rip)        # 605020 <srandom@GLIBC_2.2.5>
  400bd6:	68 01 00 00 00       	push   $0x1
  400bdb:	e9 d0 ff ff ff       	jmp    400bb0 <.plt>

0000000000400be0 <strncmp@plt>:
  400be0:	ff 25 42 44 20 00    	jmp    *0x204442(%rip)        # 605028 <strncmp@GLIBC_2.2.5>
  400be6:	68 02 00 00 00       	push   $0x2
  400beb:	e9 c0 ff ff ff       	jmp    400bb0 <.plt>

0000000000400bf0 <strcpy@plt>:
  400bf0:	ff 25 3a 44 20 00    	jmp    *0x20443a(%rip)        # 605030 <strcpy@GLIBC_2.2.5>
  400bf6:	68 03 00 00 00       	push   $0x3
  400bfb:	e9 b0 ff ff ff       	jmp    400bb0 <.plt>

0000000000400c00 <puts@plt>:
  400c00:	ff 25 32 44 20 00    	jmp    *0x204432(%rip)        # 605038 <puts@GLIBC_2.2.5>
  400c06:	68 04 00 00 00       	push   $0x4
  400c0b:	e9 a0 ff ff ff       	jmp    400bb0 <.plt>

0000000000400c10 <write@plt>:
  400c10:	ff 25 2a 44 20 00    	jmp    *0x20442a(%rip)        # 605040 <write@GLIBC_2.2.5>
  400c16:	68 05 00 00 00       	push   $0x5
  400c1b:	e9 90 ff ff ff       	jmp    400bb0 <.plt>

0000000000400c20 <__stack_chk_fail@plt>:
  400c20:	ff 25 22 44 20 00    	jmp    *0x204422(%rip)        # 605048 <__stack_chk_fail@GLIBC_2.4>
  400c26:	68 06 00 00 00       	push   $0x6
  400c2b:	e9 80 ff ff ff       	jmp    400bb0 <.plt>

0000000000400c30 <mmap@plt>:
  400c30:	ff 25 1a 44 20 00    	jmp    *0x20441a(%rip)        # 605050 <mmap@GLIBC_2.2.5>
  400c36:	68 07 00 00 00       	push   $0x7
  400c3b:	e9 70 ff ff ff       	jmp    400bb0 <.plt>

0000000000400c40 <memset@plt>:
  400c40:	ff 25 12 44 20 00    	jmp    *0x204412(%rip)        # 605058 <memset@GLIBC_2.2.5>
  400c46:	68 08 00 00 00       	push   $0x8
  400c4b:	e9 60 ff ff ff       	jmp    400bb0 <.plt>

0000000000400c50 <alarm@plt>:
  400c50:	ff 25 0a 44 20 00    	jmp    *0x20440a(%rip)        # 605060 <alarm@GLIBC_2.2.5>
  400c56:	68 09 00 00 00       	push   $0x9
  400c5b:	e9 50 ff ff ff       	jmp    400bb0 <.plt>

0000000000400c60 <close@plt>:
  400c60:	ff 25 02 44 20 00    	jmp    *0x204402(%rip)        # 605068 <close@GLIBC_2.2.5>
  400c66:	68 0a 00 00 00       	push   $0xa
  400c6b:	e9 40 ff ff ff       	jmp    400bb0 <.plt>

0000000000400c70 <read@plt>:
  400c70:	ff 25 fa 43 20 00    	jmp    *0x2043fa(%rip)        # 605070 <read@GLIBC_2.2.5>
  400c76:	68 0b 00 00 00       	push   $0xb
  400c7b:	e9 30 ff ff ff       	jmp    400bb0 <.plt>

0000000000400c80 <__libc_start_main@plt>:
  400c80:	ff 25 f2 43 20 00    	jmp    *0x2043f2(%rip)        # 605078 <__libc_start_main@GLIBC_2.2.5>
  400c86:	68 0c 00 00 00       	push   $0xc
  400c8b:	e9 20 ff ff ff       	jmp    400bb0 <.plt>

0000000000400c90 <inet_addr@plt>:
  400c90:	ff 25 ea 43 20 00    	jmp    *0x2043ea(%rip)        # 605080 <inet_addr@GLIBC_2.2.5>
  400c96:	68 0d 00 00 00       	push   $0xd
  400c9b:	e9 10 ff ff ff       	jmp    400bb0 <.plt>

0000000000400ca0 <signal@plt>:
  400ca0:	ff 25 e2 43 20 00    	jmp    *0x2043e2(%rip)        # 605088 <signal@GLIBC_2.2.5>
  400ca6:	68 0e 00 00 00       	push   $0xe
  400cab:	e9 00 ff ff ff       	jmp    400bb0 <.plt>

0000000000400cb0 <strtol@plt>:
  400cb0:	ff 25 da 43 20 00    	jmp    *0x2043da(%rip)        # 605090 <strtol@GLIBC_2.2.5>
  400cb6:	68 0f 00 00 00       	push   $0xf
  400cbb:	e9 f0 fe ff ff       	jmp    400bb0 <.plt>

0000000000400cc0 <memcpy@plt>:
  400cc0:	ff 25 d2 43 20 00    	jmp    *0x2043d2(%rip)        # 605098 <memcpy@GLIBC_2.14>
  400cc6:	68 10 00 00 00       	push   $0x10
  400ccb:	e9 e0 fe ff ff       	jmp    400bb0 <.plt>

0000000000400cd0 <time@plt>:
  400cd0:	ff 25 ca 43 20 00    	jmp    *0x2043ca(%rip)        # 6050a0 <time@GLIBC_2.2.5>
  400cd6:	68 11 00 00 00       	push   $0x11
  400cdb:	e9 d0 fe ff ff       	jmp    400bb0 <.plt>

0000000000400ce0 <random@plt>:
  400ce0:	ff 25 c2 43 20 00    	jmp    *0x2043c2(%rip)        # 6050a8 <random@GLIBC_2.2.5>
  400ce6:	68 12 00 00 00       	push   $0x12
  400ceb:	e9 c0 fe ff ff       	jmp    400bb0 <.plt>

0000000000400cf0 <_IO_getc@plt>:
  400cf0:	ff 25 ba 43 20 00    	jmp    *0x2043ba(%rip)        # 6050b0 <_IO_getc@GLIBC_2.2.5>
  400cf6:	68 13 00 00 00       	push   $0x13
  400cfb:	e9 b0 fe ff ff       	jmp    400bb0 <.plt>

0000000000400d00 <__isoc99_sscanf@plt>:
  400d00:	ff 25 b2 43 20 00    	jmp    *0x2043b2(%rip)        # 6050b8 <__isoc99_sscanf@GLIBC_2.7>
  400d06:	68 14 00 00 00       	push   $0x14
  400d0b:	e9 a0 fe ff ff       	jmp    400bb0 <.plt>

0000000000400d10 <munmap@plt>:
  400d10:	ff 25 aa 43 20 00    	jmp    *0x2043aa(%rip)        # 6050c0 <munmap@GLIBC_2.2.5>
  400d16:	68 15 00 00 00       	push   $0x15
  400d1b:	e9 90 fe ff ff       	jmp    400bb0 <.plt>

0000000000400d20 <__printf_chk@plt>:
  400d20:	ff 25 a2 43 20 00    	jmp    *0x2043a2(%rip)        # 6050c8 <__printf_chk@GLIBC_2.3.4>
  400d26:	68 16 00 00 00       	push   $0x16
  400d2b:	e9 80 fe ff ff       	jmp    400bb0 <.plt>

0000000000400d30 <fopen@plt>:
  400d30:	ff 25 9a 43 20 00    	jmp    *0x20439a(%rip)        # 6050d0 <fopen@GLIBC_2.2.5>
  400d36:	68 17 00 00 00       	push   $0x17
  400d3b:	e9 70 fe ff ff       	jmp    400bb0 <.plt>

0000000000400d40 <getopt@plt>:
  400d40:	ff 25 92 43 20 00    	jmp    *0x204392(%rip)        # 6050d8 <getopt@GLIBC_2.2.5>
  400d46:	68 18 00 00 00       	push   $0x18
  400d4b:	e9 60 fe ff ff       	jmp    400bb0 <.plt>

0000000000400d50 <strtoul@plt>:
  400d50:	ff 25 8a 43 20 00    	jmp    *0x20438a(%rip)        # 6050e0 <strtoul@GLIBC_2.2.5>
  400d56:	68 19 00 00 00       	push   $0x19
  400d5b:	e9 50 fe ff ff       	jmp    400bb0 <.plt>

0000000000400d60 <exit@plt>:
  400d60:	ff 25 82 43 20 00    	jmp    *0x204382(%rip)        # 6050e8 <exit@GLIBC_2.2.5>
  400d66:	68 1a 00 00 00       	push   $0x1a
  400d6b:	e9 40 fe ff ff       	jmp    400bb0 <.plt>

0000000000400d70 <connect@plt>:
  400d70:	ff 25 7a 43 20 00    	jmp    *0x20437a(%rip)        # 6050f0 <connect@GLIBC_2.2.5>
  400d76:	68 1b 00 00 00       	push   $0x1b
  400d7b:	e9 30 fe ff ff       	jmp    400bb0 <.plt>

0000000000400d80 <__fprintf_chk@plt>:
  400d80:	ff 25 72 43 20 00    	jmp    *0x204372(%rip)        # 6050f8 <__fprintf_chk@GLIBC_2.3.4>
  400d86:	68 1c 00 00 00       	push   $0x1c
  400d8b:	e9 20 fe ff ff       	jmp    400bb0 <.plt>

0000000000400d90 <__sprintf_chk@plt>:
  400d90:	ff 25 6a 43 20 00    	jmp    *0x20436a(%rip)        # 605100 <__sprintf_chk@GLIBC_2.3.4>
  400d96:	68 1d 00 00 00       	push   $0x1d
  400d9b:	e9 10 fe ff ff       	jmp    400bb0 <.plt>

0000000000400da0 <socket@plt>:
  400da0:	ff 25 62 43 20 00    	jmp    *0x204362(%rip)        # 605108 <socket@GLIBC_2.2.5>
  400da6:	68 1e 00 00 00       	push   $0x1e
  400dab:	e9 00 fe ff ff       	jmp    400bb0 <.plt>

Disassembly of section .plt.got:

0000000000400db0 <__gmon_start__@plt>:
  400db0:	ff 25 42 42 20 00    	jmp    *0x204242(%rip)        # 604ff8 <__gmon_start__>
  400db6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400dc0 <_start>:
  400dc0:	31 ed                	xor    %ebp,%ebp
  400dc2:	49 89 d1             	mov    %rdx,%r9
  400dc5:	5e                   	pop    %rsi
  400dc6:	48 89 e2             	mov    %rsp,%rdx
  400dc9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400dcd:	50                   	push   %rax
  400dce:	54                   	push   %rsp
  400dcf:	49 c7 c0 30 2d 40 00 	mov    $0x402d30,%r8
  400dd6:	48 c7 c1 c0 2c 40 00 	mov    $0x402cc0,%rcx
  400ddd:	48 c7 c7 3c 10 40 00 	mov    $0x40103c,%rdi
  400de4:	e8 97 fe ff ff       	call   400c80 <__libc_start_main@plt>
  400de9:	f4                   	hlt    
  400dea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400df0 <deregister_tm_clones>:
  400df0:	b8 97 54 60 00       	mov    $0x605497,%eax
  400df5:	55                   	push   %rbp
  400df6:	48 2d 90 54 60 00    	sub    $0x605490,%rax
  400dfc:	48 83 f8 0e          	cmp    $0xe,%rax
  400e00:	48 89 e5             	mov    %rsp,%rbp
  400e03:	76 1b                	jbe    400e20 <deregister_tm_clones+0x30>
  400e05:	b8 00 00 00 00       	mov    $0x0,%eax
  400e0a:	48 85 c0             	test   %rax,%rax
  400e0d:	74 11                	je     400e20 <deregister_tm_clones+0x30>
  400e0f:	5d                   	pop    %rbp
  400e10:	bf 90 54 60 00       	mov    $0x605490,%edi
  400e15:	ff e0                	jmp    *%rax
  400e17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400e1e:	00 00 
  400e20:	5d                   	pop    %rbp
  400e21:	c3                   	ret    
  400e22:	0f 1f 40 00          	nopl   0x0(%rax)
  400e26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  400e2d:	00 00 00 

0000000000400e30 <register_tm_clones>:
  400e30:	be 90 54 60 00       	mov    $0x605490,%esi
  400e35:	55                   	push   %rbp
  400e36:	48 81 ee 90 54 60 00 	sub    $0x605490,%rsi
  400e3d:	48 c1 fe 03          	sar    $0x3,%rsi
  400e41:	48 89 e5             	mov    %rsp,%rbp
  400e44:	48 89 f0             	mov    %rsi,%rax
  400e47:	48 c1 e8 3f          	shr    $0x3f,%rax
  400e4b:	48 01 c6             	add    %rax,%rsi
  400e4e:	48 d1 fe             	sar    %rsi
  400e51:	74 15                	je     400e68 <register_tm_clones+0x38>
  400e53:	b8 00 00 00 00       	mov    $0x0,%eax
  400e58:	48 85 c0             	test   %rax,%rax
  400e5b:	74 0b                	je     400e68 <register_tm_clones+0x38>
  400e5d:	5d                   	pop    %rbp
  400e5e:	bf 90 54 60 00       	mov    $0x605490,%edi
  400e63:	ff e0                	jmp    *%rax
  400e65:	0f 1f 00             	nopl   (%rax)
  400e68:	5d                   	pop    %rbp
  400e69:	c3                   	ret    
  400e6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400e70 <__do_global_dtors_aux>:
  400e70:	80 3d 51 46 20 00 00 	cmpb   $0x0,0x204651(%rip)        # 6054c8 <completed.7594>
  400e77:	75 11                	jne    400e8a <__do_global_dtors_aux+0x1a>
  400e79:	55                   	push   %rbp
  400e7a:	48 89 e5             	mov    %rsp,%rbp
  400e7d:	e8 6e ff ff ff       	call   400df0 <deregister_tm_clones>
  400e82:	5d                   	pop    %rbp
  400e83:	c6 05 3e 46 20 00 01 	movb   $0x1,0x20463e(%rip)        # 6054c8 <completed.7594>
  400e8a:	f3 c3                	repz ret 
  400e8c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400e90 <frame_dummy>:
  400e90:	bf 20 4e 60 00       	mov    $0x604e20,%edi
  400e95:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400e99:	75 05                	jne    400ea0 <frame_dummy+0x10>
  400e9b:	eb 93                	jmp    400e30 <register_tm_clones>
  400e9d:	0f 1f 00             	nopl   (%rax)
  400ea0:	b8 00 00 00 00       	mov    $0x0,%eax
  400ea5:	48 85 c0             	test   %rax,%rax
  400ea8:	74 f1                	je     400e9b <frame_dummy+0xb>
  400eaa:	55                   	push   %rbp
  400eab:	48 89 e5             	mov    %rsp,%rbp
  400eae:	ff d0                	call   *%rax
  400eb0:	5d                   	pop    %rbp
  400eb1:	e9 7a ff ff ff       	jmp    400e30 <register_tm_clones>

0000000000400eb6 <usage>:
  400eb6:	48 83 ec 08          	sub    $0x8,%rsp
  400eba:	48 89 fa             	mov    %rdi,%rdx
  400ebd:	83 3d 44 46 20 00 00 	cmpl   $0x0,0x204644(%rip)        # 605508 <is_checker>
  400ec4:	74 3e                	je     400f04 <usage+0x4e>
  400ec6:	be 48 2d 40 00       	mov    $0x402d48,%esi
  400ecb:	bf 01 00 00 00       	mov    $0x1,%edi
  400ed0:	b8 00 00 00 00       	mov    $0x0,%eax
  400ed5:	e8 46 fe ff ff       	call   400d20 <__printf_chk@plt>
  400eda:	bf 80 2d 40 00       	mov    $0x402d80,%edi
  400edf:	e8 1c fd ff ff       	call   400c00 <puts@plt>
  400ee4:	bf 80 2e 40 00       	mov    $0x402e80,%edi
  400ee9:	e8 12 fd ff ff       	call   400c00 <puts@plt>
  400eee:	bf a8 2d 40 00       	mov    $0x402da8,%edi
  400ef3:	e8 08 fd ff ff       	call   400c00 <puts@plt>
  400ef8:	bf 9a 2e 40 00       	mov    $0x402e9a,%edi
  400efd:	e8 fe fc ff ff       	call   400c00 <puts@plt>
  400f02:	eb 32                	jmp    400f36 <usage+0x80>
  400f04:	be b6 2e 40 00       	mov    $0x402eb6,%esi
  400f09:	bf 01 00 00 00       	mov    $0x1,%edi
  400f0e:	b8 00 00 00 00       	mov    $0x0,%eax
  400f13:	e8 08 fe ff ff       	call   400d20 <__printf_chk@plt>
  400f18:	bf d0 2d 40 00       	mov    $0x402dd0,%edi
  400f1d:	e8 de fc ff ff       	call   400c00 <puts@plt>
  400f22:	bf f8 2d 40 00       	mov    $0x402df8,%edi
  400f27:	e8 d4 fc ff ff       	call   400c00 <puts@plt>
  400f2c:	bf d4 2e 40 00       	mov    $0x402ed4,%edi
  400f31:	e8 ca fc ff ff       	call   400c00 <puts@plt>
  400f36:	bf 00 00 00 00       	mov    $0x0,%edi
  400f3b:	e8 20 fe ff ff       	call   400d60 <exit@plt>

0000000000400f40 <initialize_target>:
  400f40:	55                   	push   %rbp
  400f41:	53                   	push   %rbx
  400f42:	48 81 ec 18 20 00 00 	sub    $0x2018,%rsp
  400f49:	89 f5                	mov    %esi,%ebp
  400f4b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400f52:	00 00 
  400f54:	48 89 84 24 08 20 00 	mov    %rax,0x2008(%rsp)
  400f5b:	00 
  400f5c:	31 c0                	xor    %eax,%eax
  400f5e:	89 3d 94 45 20 00    	mov    %edi,0x204594(%rip)        # 6054f8 <check_level>
  400f64:	8b 3d de 41 20 00    	mov    0x2041de(%rip),%edi        # 605148 <target_id>
  400f6a:	e8 32 1d 00 00       	call   402ca1 <gencookie>
  400f6f:	89 05 8f 45 20 00    	mov    %eax,0x20458f(%rip)        # 605504 <cookie>
  400f75:	89 c7                	mov    %eax,%edi
  400f77:	e8 25 1d 00 00       	call   402ca1 <gencookie>
  400f7c:	89 05 7e 45 20 00    	mov    %eax,0x20457e(%rip)        # 605500 <authkey>
  400f82:	8b 05 c0 41 20 00    	mov    0x2041c0(%rip),%eax        # 605148 <target_id>
  400f88:	8d 78 01             	lea    0x1(%rax),%edi
  400f8b:	e8 40 fc ff ff       	call   400bd0 <srandom@plt>
  400f90:	e8 4b fd ff ff       	call   400ce0 <random@plt>
  400f95:	89 c7                	mov    %eax,%edi
  400f97:	e8 7a 02 00 00       	call   401216 <scramble>
  400f9c:	89 c3                	mov    %eax,%ebx
  400f9e:	85 ed                	test   %ebp,%ebp
  400fa0:	74 18                	je     400fba <initialize_target+0x7a>
  400fa2:	bf 00 00 00 00       	mov    $0x0,%edi
  400fa7:	e8 24 fd ff ff       	call   400cd0 <time@plt>
  400fac:	89 c7                	mov    %eax,%edi
  400fae:	e8 1d fc ff ff       	call   400bd0 <srandom@plt>
  400fb3:	e8 28 fd ff ff       	call   400ce0 <random@plt>
  400fb8:	eb 05                	jmp    400fbf <initialize_target+0x7f>
  400fba:	b8 00 00 00 00       	mov    $0x0,%eax
  400fbf:	01 c3                	add    %eax,%ebx
  400fc1:	0f b7 db             	movzwl %bx,%ebx
  400fc4:	8d 04 dd 00 01 00 00 	lea    0x100(,%rbx,8),%eax
  400fcb:	89 c0                	mov    %eax,%eax
  400fcd:	48 89 05 ac 44 20 00 	mov    %rax,0x2044ac(%rip)        # 605480 <buf_offset>
  400fd4:	c6 05 4d 51 20 00 72 	movb   $0x72,0x20514d(%rip)        # 606128 <target_prefix>
  400fdb:	83 3d a6 44 20 00 00 	cmpl   $0x0,0x2044a6(%rip)        # 605488 <notify>
  400fe2:	74 36                	je     40101a <initialize_target+0xda>
  400fe4:	83 3d 1d 45 20 00 00 	cmpl   $0x0,0x20451d(%rip)        # 605508 <is_checker>
  400feb:	75 2d                	jne    40101a <initialize_target+0xda>
  400fed:	48 89 e7             	mov    %rsp,%rdi
  400ff0:	e8 a5 1a 00 00       	call   402a9a <init_driver>
  400ff5:	85 c0                	test   %eax,%eax
  400ff7:	79 21                	jns    40101a <initialize_target+0xda>
  400ff9:	48 89 e2             	mov    %rsp,%rdx
  400ffc:	be 28 2e 40 00       	mov    $0x402e28,%esi
  401001:	bf 01 00 00 00       	mov    $0x1,%edi
  401006:	b8 00 00 00 00       	mov    $0x0,%eax
  40100b:	e8 10 fd ff ff       	call   400d20 <__printf_chk@plt>
  401010:	bf 08 00 00 00       	mov    $0x8,%edi
  401015:	e8 46 fd ff ff       	call   400d60 <exit@plt>
  40101a:	48 8b 84 24 08 20 00 	mov    0x2008(%rsp),%rax
  401021:	00 
  401022:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401029:	00 00 
  40102b:	74 05                	je     401032 <initialize_target+0xf2>
  40102d:	e8 ee fb ff ff       	call   400c20 <__stack_chk_fail@plt>
  401032:	48 81 c4 18 20 00 00 	add    $0x2018,%rsp
  401039:	5b                   	pop    %rbx
  40103a:	5d                   	pop    %rbp
  40103b:	c3                   	ret    

000000000040103c <main>:
  40103c:	41 56                	push   %r14
  40103e:	41 55                	push   %r13
  401040:	41 54                	push   %r12
  401042:	55                   	push   %rbp
  401043:	53                   	push   %rbx
  401044:	41 89 fc             	mov    %edi,%r12d
  401047:	48 89 f3             	mov    %rsi,%rbx
  40104a:	be 62 1e 40 00       	mov    $0x401e62,%esi
  40104f:	bf 0b 00 00 00       	mov    $0xb,%edi
  401054:	e8 47 fc ff ff       	call   400ca0 <signal@plt>
  401059:	be 14 1e 40 00       	mov    $0x401e14,%esi
  40105e:	bf 07 00 00 00       	mov    $0x7,%edi
  401063:	e8 38 fc ff ff       	call   400ca0 <signal@plt>
  401068:	be b0 1e 40 00       	mov    $0x401eb0,%esi
  40106d:	bf 04 00 00 00       	mov    $0x4,%edi
  401072:	e8 29 fc ff ff       	call   400ca0 <signal@plt>
  401077:	83 3d 8a 44 20 00 00 	cmpl   $0x0,0x20448a(%rip)        # 605508 <is_checker>
  40107e:	74 20                	je     4010a0 <main+0x64>
  401080:	be fe 1e 40 00       	mov    $0x401efe,%esi
  401085:	bf 0e 00 00 00       	mov    $0xe,%edi
  40108a:	e8 11 fc ff ff       	call   400ca0 <signal@plt>
  40108f:	bf 05 00 00 00       	mov    $0x5,%edi
  401094:	e8 b7 fb ff ff       	call   400c50 <alarm@plt>
  401099:	bd f2 2e 40 00       	mov    $0x402ef2,%ebp
  40109e:	eb 05                	jmp    4010a5 <main+0x69>
  4010a0:	bd ed 2e 40 00       	mov    $0x402eed,%ebp
  4010a5:	48 8b 05 f4 43 20 00 	mov    0x2043f4(%rip),%rax        # 6054a0 <stdin@GLIBC_2.2.5>
  4010ac:	48 89 05 3d 44 20 00 	mov    %rax,0x20443d(%rip)        # 6054f0 <infile>
  4010b3:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4010b9:	41 be 00 00 00 00    	mov    $0x0,%r14d
  4010bf:	e9 c6 00 00 00       	jmp    40118a <main+0x14e>
  4010c4:	83 e8 61             	sub    $0x61,%eax
  4010c7:	3c 10                	cmp    $0x10,%al
  4010c9:	0f 87 9c 00 00 00    	ja     40116b <main+0x12f>
  4010cf:	0f b6 c0             	movzbl %al,%eax
  4010d2:	ff 24 c5 38 2f 40 00 	jmp    *0x402f38(,%rax,8)
  4010d9:	48 8b 3b             	mov    (%rbx),%rdi
  4010dc:	e8 d5 fd ff ff       	call   400eb6 <usage>
  4010e1:	be cd 31 40 00       	mov    $0x4031cd,%esi
  4010e6:	48 8b 3d bb 43 20 00 	mov    0x2043bb(%rip),%rdi        # 6054a8 <optarg@GLIBC_2.2.5>
  4010ed:	e8 3e fc ff ff       	call   400d30 <fopen@plt>
  4010f2:	48 89 05 f7 43 20 00 	mov    %rax,0x2043f7(%rip)        # 6054f0 <infile>
  4010f9:	48 85 c0             	test   %rax,%rax
  4010fc:	0f 85 88 00 00 00    	jne    40118a <main+0x14e>
  401102:	48 8b 0d 9f 43 20 00 	mov    0x20439f(%rip),%rcx        # 6054a8 <optarg@GLIBC_2.2.5>
  401109:	ba fa 2e 40 00       	mov    $0x402efa,%edx
  40110e:	be 01 00 00 00       	mov    $0x1,%esi
  401113:	48 8b 3d a6 43 20 00 	mov    0x2043a6(%rip),%rdi        # 6054c0 <stderr@GLIBC_2.2.5>
  40111a:	e8 61 fc ff ff       	call   400d80 <__fprintf_chk@plt>
  40111f:	b8 01 00 00 00       	mov    $0x1,%eax
  401124:	e9 e4 00 00 00       	jmp    40120d <main+0x1d1>
  401129:	ba 10 00 00 00       	mov    $0x10,%edx
  40112e:	be 00 00 00 00       	mov    $0x0,%esi
  401133:	48 8b 3d 6e 43 20 00 	mov    0x20436e(%rip),%rdi        # 6054a8 <optarg@GLIBC_2.2.5>
  40113a:	e8 11 fc ff ff       	call   400d50 <strtoul@plt>
  40113f:	41 89 c6             	mov    %eax,%r14d
  401142:	eb 46                	jmp    40118a <main+0x14e>
  401144:	ba 0a 00 00 00       	mov    $0xa,%edx
  401149:	be 00 00 00 00       	mov    $0x0,%esi
  40114e:	48 8b 3d 53 43 20 00 	mov    0x204353(%rip),%rdi        # 6054a8 <optarg@GLIBC_2.2.5>
  401155:	e8 56 fb ff ff       	call   400cb0 <strtol@plt>
  40115a:	41 89 c5             	mov    %eax,%r13d
  40115d:	eb 2b                	jmp    40118a <main+0x14e>
  40115f:	c7 05 1f 43 20 00 00 	movl   $0x0,0x20431f(%rip)        # 605488 <notify>
  401166:	00 00 00 
  401169:	eb 1f                	jmp    40118a <main+0x14e>
  40116b:	0f be d2             	movsbl %dl,%edx
  40116e:	be 17 2f 40 00       	mov    $0x402f17,%esi
  401173:	bf 01 00 00 00       	mov    $0x1,%edi
  401178:	b8 00 00 00 00       	mov    $0x0,%eax
  40117d:	e8 9e fb ff ff       	call   400d20 <__printf_chk@plt>
  401182:	48 8b 3b             	mov    (%rbx),%rdi
  401185:	e8 2c fd ff ff       	call   400eb6 <usage>
  40118a:	48 89 ea             	mov    %rbp,%rdx
  40118d:	48 89 de             	mov    %rbx,%rsi
  401190:	44 89 e7             	mov    %r12d,%edi
  401193:	e8 a8 fb ff ff       	call   400d40 <getopt@plt>
  401198:	89 c2                	mov    %eax,%edx
  40119a:	3c ff                	cmp    $0xff,%al
  40119c:	0f 85 22 ff ff ff    	jne    4010c4 <main+0x88>
  4011a2:	be 01 00 00 00       	mov    $0x1,%esi
  4011a7:	44 89 ef             	mov    %r13d,%edi
  4011aa:	e8 91 fd ff ff       	call   400f40 <initialize_target>
  4011af:	83 3d 52 43 20 00 00 	cmpl   $0x0,0x204352(%rip)        # 605508 <is_checker>
  4011b6:	74 2a                	je     4011e2 <main+0x1a6>
  4011b8:	44 3b 35 41 43 20 00 	cmp    0x204341(%rip),%r14d        # 605500 <authkey>
  4011bf:	74 21                	je     4011e2 <main+0x1a6>
  4011c1:	44 89 f2             	mov    %r14d,%edx
  4011c4:	be 50 2e 40 00       	mov    $0x402e50,%esi
  4011c9:	bf 01 00 00 00       	mov    $0x1,%edi
  4011ce:	b8 00 00 00 00       	mov    $0x0,%eax
  4011d3:	e8 48 fb ff ff       	call   400d20 <__printf_chk@plt>
  4011d8:	b8 00 00 00 00       	mov    $0x0,%eax
  4011dd:	e8 ce 08 00 00       	call   401ab0 <check_fail>
  4011e2:	8b 15 1c 43 20 00    	mov    0x20431c(%rip),%edx        # 605504 <cookie>
  4011e8:	be 2a 2f 40 00       	mov    $0x402f2a,%esi
  4011ed:	bf 01 00 00 00       	mov    $0x1,%edi
  4011f2:	b8 00 00 00 00       	mov    $0x0,%eax
  4011f7:	e8 24 fb ff ff       	call   400d20 <__printf_chk@plt>
  4011fc:	48 8b 3d 7d 42 20 00 	mov    0x20427d(%rip),%rdi        # 605480 <buf_offset>
  401203:	e8 49 0d 00 00       	call   401f51 <launch>
  401208:	b8 00 00 00 00       	mov    $0x0,%eax
  40120d:	5b                   	pop    %rbx
  40120e:	5d                   	pop    %rbp
  40120f:	41 5c                	pop    %r12
  401211:	41 5d                	pop    %r13
  401213:	41 5e                	pop    %r14
  401215:	c3                   	ret    

0000000000401216 <scramble>:
  401216:	48 83 ec 38          	sub    $0x38,%rsp
  40121a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401221:	00 00 
  401223:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401228:	31 c0                	xor    %eax,%eax
  40122a:	eb 10                	jmp    40123c <scramble+0x26>
  40122c:	69 d0 ad e7 00 00    	imul   $0xe7ad,%eax,%edx
  401232:	01 fa                	add    %edi,%edx
  401234:	89 c1                	mov    %eax,%ecx
  401236:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  401239:	83 c0 01             	add    $0x1,%eax
  40123c:	83 f8 09             	cmp    $0x9,%eax
  40123f:	76 eb                	jbe    40122c <scramble+0x16>
  401241:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401245:	69 c0 e5 ac 00 00    	imul   $0xace5,%eax,%eax
  40124b:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40124f:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401253:	69 c0 36 ae 00 00    	imul   $0xae36,%eax,%eax
  401259:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40125d:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401261:	69 c0 7a b0 00 00    	imul   $0xb07a,%eax,%eax
  401267:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40126b:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40126f:	69 c0 3b f3 00 00    	imul   $0xf33b,%eax,%eax
  401275:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401279:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40127d:	69 c0 6b 22 00 00    	imul   $0x226b,%eax,%eax
  401283:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401287:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40128b:	69 c0 44 cc 00 00    	imul   $0xcc44,%eax,%eax
  401291:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401295:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401299:	69 c0 60 5e 00 00    	imul   $0x5e60,%eax,%eax
  40129f:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4012a3:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4012a7:	69 c0 48 97 00 00    	imul   $0x9748,%eax,%eax
  4012ad:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4012b1:	8b 04 24             	mov    (%rsp),%eax
  4012b4:	69 c0 82 ee 00 00    	imul   $0xee82,%eax,%eax
  4012ba:	89 04 24             	mov    %eax,(%rsp)
  4012bd:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4012c1:	69 c0 3d 1d 00 00    	imul   $0x1d3d,%eax,%eax
  4012c7:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4012cb:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4012cf:	69 c0 46 75 00 00    	imul   $0x7546,%eax,%eax
  4012d5:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4012d9:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4012dd:	69 c0 93 4b 00 00    	imul   $0x4b93,%eax,%eax
  4012e3:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4012e7:	8b 04 24             	mov    (%rsp),%eax
  4012ea:	69 c0 ff 4f 00 00    	imul   $0x4fff,%eax,%eax
  4012f0:	89 04 24             	mov    %eax,(%rsp)
  4012f3:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4012f7:	69 c0 de b1 00 00    	imul   $0xb1de,%eax,%eax
  4012fd:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401301:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401305:	69 c0 24 4f 00 00    	imul   $0x4f24,%eax,%eax
  40130b:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40130f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401313:	69 c0 f0 f4 00 00    	imul   $0xf4f0,%eax,%eax
  401319:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40131d:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401321:	69 c0 a0 27 00 00    	imul   $0x27a0,%eax,%eax
  401327:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40132b:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40132f:	69 c0 5b ee 00 00    	imul   $0xee5b,%eax,%eax
  401335:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401339:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40133d:	69 c0 86 18 00 00    	imul   $0x1886,%eax,%eax
  401343:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401347:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40134b:	69 c0 5d 5d 00 00    	imul   $0x5d5d,%eax,%eax
  401351:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401355:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401359:	69 c0 a9 2f 00 00    	imul   $0x2fa9,%eax,%eax
  40135f:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401363:	8b 04 24             	mov    (%rsp),%eax
  401366:	69 c0 49 b7 00 00    	imul   $0xb749,%eax,%eax
  40136c:	89 04 24             	mov    %eax,(%rsp)
  40136f:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401373:	69 c0 1c f5 00 00    	imul   $0xf51c,%eax,%eax
  401379:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40137d:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401381:	69 c0 3b 94 00 00    	imul   $0x943b,%eax,%eax
  401387:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40138b:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40138f:	69 c0 5d d9 00 00    	imul   $0xd95d,%eax,%eax
  401395:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401399:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40139d:	69 c0 08 51 00 00    	imul   $0x5108,%eax,%eax
  4013a3:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4013a7:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4013ab:	69 c0 08 67 00 00    	imul   $0x6708,%eax,%eax
  4013b1:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4013b5:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4013b9:	69 c0 26 a9 00 00    	imul   $0xa926,%eax,%eax
  4013bf:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4013c3:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4013c7:	69 c0 a1 aa 00 00    	imul   $0xaaa1,%eax,%eax
  4013cd:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4013d1:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4013d5:	69 c0 4a c4 00 00    	imul   $0xc44a,%eax,%eax
  4013db:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4013df:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4013e3:	69 c0 cc ec 00 00    	imul   $0xeccc,%eax,%eax
  4013e9:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4013ed:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4013f1:	69 c0 cf f5 00 00    	imul   $0xf5cf,%eax,%eax
  4013f7:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4013fb:	8b 04 24             	mov    (%rsp),%eax
  4013fe:	69 c0 60 5c 00 00    	imul   $0x5c60,%eax,%eax
  401404:	89 04 24             	mov    %eax,(%rsp)
  401407:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40140b:	69 c0 88 ec 00 00    	imul   $0xec88,%eax,%eax
  401411:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401415:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401419:	69 c0 c0 c5 00 00    	imul   $0xc5c0,%eax,%eax
  40141f:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401423:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401427:	69 c0 d8 af 00 00    	imul   $0xafd8,%eax,%eax
  40142d:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401431:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401435:	69 c0 87 73 00 00    	imul   $0x7387,%eax,%eax
  40143b:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40143f:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401443:	69 c0 74 83 00 00    	imul   $0x8374,%eax,%eax
  401449:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40144d:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401451:	69 c0 b2 b5 00 00    	imul   $0xb5b2,%eax,%eax
  401457:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40145b:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40145f:	69 c0 43 4c 00 00    	imul   $0x4c43,%eax,%eax
  401465:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401469:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40146d:	69 c0 27 c9 00 00    	imul   $0xc927,%eax,%eax
  401473:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401477:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40147b:	69 c0 b3 dd 00 00    	imul   $0xddb3,%eax,%eax
  401481:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401485:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401489:	69 c0 e7 39 00 00    	imul   $0x39e7,%eax,%eax
  40148f:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401493:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401497:	69 c0 36 e7 00 00    	imul   $0xe736,%eax,%eax
  40149d:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4014a1:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4014a5:	69 c0 dd e1 00 00    	imul   $0xe1dd,%eax,%eax
  4014ab:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4014af:	8b 04 24             	mov    (%rsp),%eax
  4014b2:	69 c0 4e de 00 00    	imul   $0xde4e,%eax,%eax
  4014b8:	89 04 24             	mov    %eax,(%rsp)
  4014bb:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4014bf:	69 c0 ba 64 00 00    	imul   $0x64ba,%eax,%eax
  4014c5:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4014c9:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4014cd:	69 c0 17 e3 00 00    	imul   $0xe317,%eax,%eax
  4014d3:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4014d7:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4014db:	69 c0 48 b8 00 00    	imul   $0xb848,%eax,%eax
  4014e1:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4014e5:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4014e9:	69 c0 01 36 00 00    	imul   $0x3601,%eax,%eax
  4014ef:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4014f3:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4014f7:	69 c0 84 19 00 00    	imul   $0x1984,%eax,%eax
  4014fd:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401501:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401505:	69 c0 73 73 00 00    	imul   $0x7373,%eax,%eax
  40150b:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40150f:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401513:	69 c0 fa 4c 00 00    	imul   $0x4cfa,%eax,%eax
  401519:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40151d:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401521:	69 c0 b0 f5 00 00    	imul   $0xf5b0,%eax,%eax
  401527:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40152b:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40152f:	69 c0 96 0e 00 00    	imul   $0xe96,%eax,%eax
  401535:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401539:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40153d:	69 c0 bb 91 00 00    	imul   $0x91bb,%eax,%eax
  401543:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401547:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40154b:	69 c0 3e df 00 00    	imul   $0xdf3e,%eax,%eax
  401551:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401555:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401559:	69 c0 ed 07 00 00    	imul   $0x7ed,%eax,%eax
  40155f:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401563:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401567:	69 c0 47 f6 00 00    	imul   $0xf647,%eax,%eax
  40156d:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401571:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401575:	69 c0 ae fd 00 00    	imul   $0xfdae,%eax,%eax
  40157b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40157f:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401583:	69 c0 a4 9a 00 00    	imul   $0x9aa4,%eax,%eax
  401589:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40158d:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401591:	69 c0 cf a6 00 00    	imul   $0xa6cf,%eax,%eax
  401597:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40159b:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40159f:	69 c0 1a b0 00 00    	imul   $0xb01a,%eax,%eax
  4015a5:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4015a9:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4015ad:	69 c0 79 c0 00 00    	imul   $0xc079,%eax,%eax
  4015b3:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4015b7:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4015bb:	69 c0 85 59 00 00    	imul   $0x5985,%eax,%eax
  4015c1:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4015c5:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4015c9:	69 c0 6c e6 00 00    	imul   $0xe66c,%eax,%eax
  4015cf:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4015d3:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4015d7:	69 c0 53 dc 00 00    	imul   $0xdc53,%eax,%eax
  4015dd:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4015e1:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4015e5:	8d 14 80             	lea    (%rax,%rax,4),%edx
  4015e8:	8d 04 90             	lea    (%rax,%rdx,4),%eax
  4015eb:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4015ef:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4015f3:	69 c0 c6 50 00 00    	imul   $0x50c6,%eax,%eax
  4015f9:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4015fd:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401601:	69 c0 f9 2b 00 00    	imul   $0x2bf9,%eax,%eax
  401607:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40160b:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40160f:	69 c0 b8 37 00 00    	imul   $0x37b8,%eax,%eax
  401615:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401619:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40161d:	69 c0 19 37 00 00    	imul   $0x3719,%eax,%eax
  401623:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401627:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40162b:	69 c0 23 2d 00 00    	imul   $0x2d23,%eax,%eax
  401631:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401635:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401639:	69 c0 1c 30 00 00    	imul   $0x301c,%eax,%eax
  40163f:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401643:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401647:	69 c0 2a 2e 00 00    	imul   $0x2e2a,%eax,%eax
  40164d:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401651:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401655:	69 c0 8f fb 00 00    	imul   $0xfb8f,%eax,%eax
  40165b:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40165f:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401663:	69 c0 c7 09 00 00    	imul   $0x9c7,%eax,%eax
  401669:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40166d:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401671:	69 c0 2c c8 00 00    	imul   $0xc82c,%eax,%eax
  401677:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40167b:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40167f:	69 c0 44 2c 00 00    	imul   $0x2c44,%eax,%eax
  401685:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401689:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40168d:	69 c0 44 22 00 00    	imul   $0x2244,%eax,%eax
  401693:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401697:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40169b:	69 c0 1f 7f 00 00    	imul   $0x7f1f,%eax,%eax
  4016a1:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4016a5:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4016a9:	69 c0 d3 f8 00 00    	imul   $0xf8d3,%eax,%eax
  4016af:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4016b3:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4016b7:	69 c0 8f 62 00 00    	imul   $0x628f,%eax,%eax
  4016bd:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4016c1:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4016c5:	69 c0 bf 84 00 00    	imul   $0x84bf,%eax,%eax
  4016cb:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4016cf:	8b 04 24             	mov    (%rsp),%eax
  4016d2:	69 c0 ae ee 00 00    	imul   $0xeeae,%eax,%eax
  4016d8:	89 04 24             	mov    %eax,(%rsp)
  4016db:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4016df:	69 c0 b1 12 00 00    	imul   $0x12b1,%eax,%eax
  4016e5:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4016e9:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4016ed:	69 c0 6d 6e 00 00    	imul   $0x6e6d,%eax,%eax
  4016f3:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4016f7:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4016fb:	69 c0 5d 3d 00 00    	imul   $0x3d5d,%eax,%eax
  401701:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401705:	ba 00 00 00 00       	mov    $0x0,%edx
  40170a:	b8 00 00 00 00       	mov    $0x0,%eax
  40170f:	eb 0a                	jmp    40171b <scramble+0x505>
  401711:	89 d1                	mov    %edx,%ecx
  401713:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  401716:	01 c8                	add    %ecx,%eax
  401718:	83 c2 01             	add    $0x1,%edx
  40171b:	83 fa 09             	cmp    $0x9,%edx
  40171e:	76 f1                	jbe    401711 <scramble+0x4fb>
  401720:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  401725:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  40172c:	00 00 
  40172e:	74 05                	je     401735 <scramble+0x51f>
  401730:	e8 eb f4 ff ff       	call   400c20 <__stack_chk_fail@plt>
  401735:	48 83 c4 38          	add    $0x38,%rsp
  401739:	c3                   	ret    

000000000040173a <getbuf>:
  40173a:	48 83 ec 28          	sub    $0x28,%rsp
  40173e:	48 89 e7             	mov    %rsp,%rdi
  401741:	e8 9f 03 00 00       	call   401ae5 <Gets>
  401746:	b8 01 00 00 00       	mov    $0x1,%eax
  40174b:	48 83 c4 28          	add    $0x28,%rsp
  40174f:	c3                   	ret    

0000000000401750 <touch1>:
  401750:	48 83 ec 08          	sub    $0x8,%rsp
  401754:	c7 05 9e 3d 20 00 01 	movl   $0x1,0x203d9e(%rip)        # 6054fc <vlevel>
  40175b:	00 00 00 
  40175e:	bf 26 30 40 00       	mov    $0x403026,%edi
  401763:	e8 98 f4 ff ff       	call   400c00 <puts@plt>
  401768:	bf 01 00 00 00       	mov    $0x1,%edi
  40176d:	e8 b8 05 00 00       	call   401d2a <validate>
  401772:	bf 00 00 00 00       	mov    $0x0,%edi
  401777:	e8 e4 f5 ff ff       	call   400d60 <exit@plt>

000000000040177c <touch2>:
  40177c:	48 83 ec 08          	sub    $0x8,%rsp
  401780:	89 fa                	mov    %edi,%edx
  401782:	c7 05 70 3d 20 00 02 	movl   $0x2,0x203d70(%rip)        # 6054fc <vlevel>
  401789:	00 00 00 
  40178c:	39 3d 72 3d 20 00    	cmp    %edi,0x203d72(%rip)        # 605504 <cookie>
  401792:	75 20                	jne    4017b4 <touch2+0x38>
  401794:	be 48 30 40 00       	mov    $0x403048,%esi
  401799:	bf 01 00 00 00       	mov    $0x1,%edi
  40179e:	b8 00 00 00 00       	mov    $0x0,%eax
  4017a3:	e8 78 f5 ff ff       	call   400d20 <__printf_chk@plt>
  4017a8:	bf 02 00 00 00       	mov    $0x2,%edi
  4017ad:	e8 78 05 00 00       	call   401d2a <validate>
  4017b2:	eb 1e                	jmp    4017d2 <touch2+0x56>
  4017b4:	be 70 30 40 00       	mov    $0x403070,%esi
  4017b9:	bf 01 00 00 00       	mov    $0x1,%edi
  4017be:	b8 00 00 00 00       	mov    $0x0,%eax
  4017c3:	e8 58 f5 ff ff       	call   400d20 <__printf_chk@plt>
  4017c8:	bf 02 00 00 00       	mov    $0x2,%edi
  4017cd:	e8 1a 06 00 00       	call   401dec <fail>
  4017d2:	bf 00 00 00 00       	mov    $0x0,%edi
  4017d7:	e8 84 f5 ff ff       	call   400d60 <exit@plt>

00000000004017dc <hexmatch>:
  4017dc:	41 54                	push   %r12
  4017de:	55                   	push   %rbp
  4017df:	53                   	push   %rbx
  4017e0:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  4017e4:	89 fd                	mov    %edi,%ebp
  4017e6:	48 89 f3             	mov    %rsi,%rbx
  4017e9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4017f0:	00 00 
  4017f2:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  4017f7:	31 c0                	xor    %eax,%eax
  4017f9:	e8 e2 f4 ff ff       	call   400ce0 <random@plt>
  4017fe:	48 89 c1             	mov    %rax,%rcx
  401801:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401808:	0a d7 a3 
  40180b:	48 f7 ea             	imul   %rdx
  40180e:	48 01 ca             	add    %rcx,%rdx
  401811:	48 c1 fa 06          	sar    $0x6,%rdx
  401815:	48 89 c8             	mov    %rcx,%rax
  401818:	48 c1 f8 3f          	sar    $0x3f,%rax
  40181c:	48 29 c2             	sub    %rax,%rdx
  40181f:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  401823:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401827:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  40182e:	00 
  40182f:	48 29 c1             	sub    %rax,%rcx
  401832:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  401836:	41 89 e8             	mov    %ebp,%r8d
  401839:	b9 43 30 40 00       	mov    $0x403043,%ecx
  40183e:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401845:	be 01 00 00 00       	mov    $0x1,%esi
  40184a:	4c 89 e7             	mov    %r12,%rdi
  40184d:	b8 00 00 00 00       	mov    $0x0,%eax
  401852:	e8 39 f5 ff ff       	call   400d90 <__sprintf_chk@plt>
  401857:	ba 09 00 00 00       	mov    $0x9,%edx
  40185c:	4c 89 e6             	mov    %r12,%rsi
  40185f:	48 89 df             	mov    %rbx,%rdi
  401862:	e8 79 f3 ff ff       	call   400be0 <strncmp@plt>
  401867:	85 c0                	test   %eax,%eax
  401869:	0f 94 c0             	sete   %al
  40186c:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  401871:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  401878:	00 00 
  40187a:	74 05                	je     401881 <hexmatch+0xa5>
  40187c:	e8 9f f3 ff ff       	call   400c20 <__stack_chk_fail@plt>
  401881:	0f b6 c0             	movzbl %al,%eax
  401884:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401888:	5b                   	pop    %rbx
  401889:	5d                   	pop    %rbp
  40188a:	41 5c                	pop    %r12
  40188c:	c3                   	ret    

000000000040188d <touch3>:
  40188d:	53                   	push   %rbx
  40188e:	48 89 fb             	mov    %rdi,%rbx
  401891:	c7 05 61 3c 20 00 03 	movl   $0x3,0x203c61(%rip)        # 6054fc <vlevel>
  401898:	00 00 00 
  40189b:	48 89 fe             	mov    %rdi,%rsi
  40189e:	8b 3d 60 3c 20 00    	mov    0x203c60(%rip),%edi        # 605504 <cookie>
  4018a4:	e8 33 ff ff ff       	call   4017dc <hexmatch>
  4018a9:	85 c0                	test   %eax,%eax
  4018ab:	74 23                	je     4018d0 <touch3+0x43>
  4018ad:	48 89 da             	mov    %rbx,%rdx
  4018b0:	be 98 30 40 00       	mov    $0x403098,%esi
  4018b5:	bf 01 00 00 00       	mov    $0x1,%edi
  4018ba:	b8 00 00 00 00       	mov    $0x0,%eax
  4018bf:	e8 5c f4 ff ff       	call   400d20 <__printf_chk@plt>
  4018c4:	bf 03 00 00 00       	mov    $0x3,%edi
  4018c9:	e8 5c 04 00 00       	call   401d2a <validate>
  4018ce:	eb 21                	jmp    4018f1 <touch3+0x64>
  4018d0:	48 89 da             	mov    %rbx,%rdx
  4018d3:	be c0 30 40 00       	mov    $0x4030c0,%esi
  4018d8:	bf 01 00 00 00       	mov    $0x1,%edi
  4018dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4018e2:	e8 39 f4 ff ff       	call   400d20 <__printf_chk@plt>
  4018e7:	bf 03 00 00 00       	mov    $0x3,%edi
  4018ec:	e8 fb 04 00 00       	call   401dec <fail>
  4018f1:	bf 00 00 00 00       	mov    $0x0,%edi
  4018f6:	e8 65 f4 ff ff       	call   400d60 <exit@plt>

00000000004018fb <test>:
  4018fb:	48 83 ec 08          	sub    $0x8,%rsp
  4018ff:	b8 00 00 00 00       	mov    $0x0,%eax
  401904:	e8 31 fe ff ff       	call   40173a <getbuf>
  401909:	89 c2                	mov    %eax,%edx
  40190b:	be e8 30 40 00       	mov    $0x4030e8,%esi
  401910:	bf 01 00 00 00       	mov    $0x1,%edi
  401915:	b8 00 00 00 00       	mov    $0x0,%eax
  40191a:	e8 01 f4 ff ff       	call   400d20 <__printf_chk@plt>
  40191f:	48 83 c4 08          	add    $0x8,%rsp
  401923:	c3                   	ret    

0000000000401924 <start_farm>:
  401924:	b8 01 00 00 00       	mov    $0x1,%eax
  401929:	c3                   	ret    

000000000040192a <addval_229>:
  40192a:	8d 87 50 78 90 90    	lea    -0x6f6f87b0(%rdi),%eax
  401930:	c3                   	ret    

0000000000401931 <getval_496>:
  401931:	b8 48 8d c7 90       	mov    $0x90c78d48,%eax
  401936:	c3                   	ret    

0000000000401937 <setval_399>:
  401937:	c7 07 22 48 89 c7    	movl   $0xc7894822,(%rdi)
  40193d:	c3                   	ret    

000000000040193e <getval_220>:
  40193e:	b8 48 89 c7 c3       	mov    $0xc3c78948,%eax
  401943:	c3                   	ret    

0000000000401944 <getval_395>:
  401944:	b8 cf 02 58 c3       	mov    $0xc35802cf,%eax
  401949:	c3                   	ret    

000000000040194a <addval_179>:
  40194a:	8d 87 48 8b c7 c3    	lea    -0x3c3874b8(%rdi),%eax
  401950:	c3                   	ret    

0000000000401951 <getval_405>:
  401951:	b8 97 58 90 90       	mov    $0x90905897,%eax
  401956:	c3                   	ret    

0000000000401957 <addval_125>:
  401957:	8d 87 4f 02 58 94    	lea    -0x6ba7fdb1(%rdi),%eax
  40195d:	c3                   	ret    

000000000040195e <mid_farm>:
  40195e:	b8 01 00 00 00       	mov    $0x1,%eax
  401963:	c3                   	ret    

0000000000401964 <add_xy>:
  401964:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401968:	c3                   	ret    

0000000000401969 <getval_158>:
  401969:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
  40196e:	c3                   	ret    

000000000040196f <addval_493>:
  40196f:	8d 87 09 d1 84 c0    	lea    -0x3f7b2ef7(%rdi),%eax
  401975:	c3                   	ret    

0000000000401976 <addval_246>:
  401976:	8d 87 bf 32 89 ce    	lea    -0x3176cd41(%rdi),%eax
  40197c:	c3                   	ret    

000000000040197d <setval_196>:
  40197d:	c7 07 89 d1 94 c0    	movl   $0xc094d189,(%rdi)
  401983:	c3                   	ret    

0000000000401984 <addval_339>:
  401984:	8d 87 89 c2 a4 c0    	lea    -0x3f5b3d77(%rdi),%eax
  40198a:	c3                   	ret    

000000000040198b <getval_113>:
  40198b:	b8 89 ce 60 c0       	mov    $0xc060ce89,%eax
  401990:	c3                   	ret    

0000000000401991 <addval_283>:
  401991:	8d 87 89 c2 94 c3    	lea    -0x3c6b3d77(%rdi),%eax
  401997:	c3                   	ret    

0000000000401998 <addval_319>:
  401998:	8d 87 a9 c2 90 c3    	lea    -0x3c6f3d57(%rdi),%eax
  40199e:	c3                   	ret    

000000000040199f <setval_398>:
  40199f:	c7 07 89 c2 08 c0    	movl   $0xc008c289,(%rdi)
  4019a5:	c3                   	ret    

00000000004019a6 <setval_215>:
  4019a6:	c7 07 48 89 e0 94    	movl   $0x94e08948,(%rdi)
  4019ac:	c3                   	ret    

00000000004019ad <setval_477>:
  4019ad:	c7 07 85 fb 8b ce    	movl   $0xce8bfb85,(%rdi)
  4019b3:	c3                   	ret    

00000000004019b4 <setval_324>:
  4019b4:	c7 07 48 89 e0 c7    	movl   $0xc7e08948,(%rdi)
  4019ba:	c3                   	ret    

00000000004019bb <getval_326>:
  4019bb:	b8 48 89 e0 90       	mov    $0x90e08948,%eax
  4019c0:	c3                   	ret    

00000000004019c1 <setval_434>:
  4019c1:	c7 07 8b d1 84 c9    	movl   $0xc984d18b,(%rdi)
  4019c7:	c3                   	ret    

00000000004019c8 <addval_247>:
  4019c8:	8d 87 89 ce 18 db    	lea    -0x24e73177(%rdi),%eax
  4019ce:	c3                   	ret    

00000000004019cf <addval_450>:
  4019cf:	8d 87 48 88 e0 c3    	lea    -0x3c1f77b8(%rdi),%eax
  4019d5:	c3                   	ret    

00000000004019d6 <getval_376>:
  4019d6:	b8 89 ce 18 db       	mov    $0xdb18ce89,%eax
  4019db:	c3                   	ret    

00000000004019dc <addval_429>:
  4019dc:	8d 87 89 d1 84 c0    	lea    -0x3f7b2e77(%rdi),%eax
  4019e2:	c3                   	ret    

00000000004019e3 <getval_163>:
  4019e3:	b8 89 ce 30 d2       	mov    $0xd230ce89,%eax
  4019e8:	c3                   	ret    

00000000004019e9 <getval_120>:
  4019e9:	b8 89 c2 48 db       	mov    $0xdb48c289,%eax
  4019ee:	c3                   	ret    

00000000004019ef <getval_334>:
  4019ef:	b8 48 89 e0 92       	mov    $0x92e08948,%eax
  4019f4:	c3                   	ret    

00000000004019f5 <addval_481>:
  4019f5:	8d 87 99 48 09 e0    	lea    -0x1ff6b767(%rdi),%eax
  4019fb:	c3                   	ret    

00000000004019fc <setval_483>:
  4019fc:	c7 07 89 c2 30 db    	movl   $0xdb30c289,(%rdi)
  401a02:	c3                   	ret    

0000000000401a03 <addval_497>:
  401a03:	8d 87 89 c2 90 c3    	lea    -0x3c6f3d77(%rdi),%eax
  401a09:	c3                   	ret    

0000000000401a0a <getval_425>:
  401a0a:	b8 89 d1 28 c9       	mov    $0xc928d189,%eax
  401a0f:	c3                   	ret    

0000000000401a10 <setval_486>:
  401a10:	c7 07 a9 ce 84 c0    	movl   $0xc084cea9,(%rdi)
  401a16:	c3                   	ret    

0000000000401a17 <setval_435>:
  401a17:	c7 07 89 d1 30 c9    	movl   $0xc930d189,(%rdi)
  401a1d:	c3                   	ret    

0000000000401a1e <setval_147>:
  401a1e:	c7 07 48 99 e0 c3    	movl   $0xc3e09948,(%rdi)
  401a24:	c3                   	ret    

0000000000401a25 <getval_199>:
  401a25:	b8 89 c2 78 db       	mov    $0xdb78c289,%eax
  401a2a:	c3                   	ret    

0000000000401a2b <setval_440>:
  401a2b:	c7 07 89 d1 08 db    	movl   $0xdb08d189,(%rdi)
  401a31:	c3                   	ret    

0000000000401a32 <setval_342>:
  401a32:	c7 07 74 c9 d1 90    	movl   $0x90d1c974,(%rdi)
  401a38:	c3                   	ret    

0000000000401a39 <getval_310>:
  401a39:	b8 89 ce 84 c0       	mov    $0xc084ce89,%eax
  401a3e:	c3                   	ret    

0000000000401a3f <end_farm>:
  401a3f:	b8 01 00 00 00       	mov    $0x1,%eax
  401a44:	c3                   	ret    

0000000000401a45 <save_char>:
  401a45:	8b 05 d9 46 20 00    	mov    0x2046d9(%rip),%eax        # 606124 <gets_cnt>
  401a4b:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401a50:	7f 49                	jg     401a9b <save_char+0x56>
  401a52:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401a55:	89 f9                	mov    %edi,%ecx
  401a57:	c0 e9 04             	shr    $0x4,%cl
  401a5a:	83 e1 0f             	and    $0xf,%ecx
  401a5d:	0f b6 b1 10 34 40 00 	movzbl 0x403410(%rcx),%esi
  401a64:	48 63 ca             	movslq %edx,%rcx
  401a67:	40 88 b1 20 55 60 00 	mov    %sil,0x605520(%rcx)
  401a6e:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401a71:	83 e7 0f             	and    $0xf,%edi
  401a74:	0f b6 b7 10 34 40 00 	movzbl 0x403410(%rdi),%esi
  401a7b:	48 63 c9             	movslq %ecx,%rcx
  401a7e:	40 88 b1 20 55 60 00 	mov    %sil,0x605520(%rcx)
  401a85:	83 c2 02             	add    $0x2,%edx
  401a88:	48 63 d2             	movslq %edx,%rdx
  401a8b:	c6 82 20 55 60 00 20 	movb   $0x20,0x605520(%rdx)
  401a92:	83 c0 01             	add    $0x1,%eax
  401a95:	89 05 89 46 20 00    	mov    %eax,0x204689(%rip)        # 606124 <gets_cnt>
  401a9b:	f3 c3                	repz ret 

0000000000401a9d <save_term>:
  401a9d:	8b 05 81 46 20 00    	mov    0x204681(%rip),%eax        # 606124 <gets_cnt>
  401aa3:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401aa6:	48 98                	cltq   
  401aa8:	c6 80 20 55 60 00 00 	movb   $0x0,0x605520(%rax)
  401aaf:	c3                   	ret    

0000000000401ab0 <check_fail>:
  401ab0:	48 83 ec 08          	sub    $0x8,%rsp
  401ab4:	0f be 15 6d 46 20 00 	movsbl 0x20466d(%rip),%edx        # 606128 <target_prefix>
  401abb:	41 b8 20 55 60 00    	mov    $0x605520,%r8d
  401ac1:	8b 0d 31 3a 20 00    	mov    0x203a31(%rip),%ecx        # 6054f8 <check_level>
  401ac7:	be 0b 31 40 00       	mov    $0x40310b,%esi
  401acc:	bf 01 00 00 00       	mov    $0x1,%edi
  401ad1:	b8 00 00 00 00       	mov    $0x0,%eax
  401ad6:	e8 45 f2 ff ff       	call   400d20 <__printf_chk@plt>
  401adb:	bf 01 00 00 00       	mov    $0x1,%edi
  401ae0:	e8 7b f2 ff ff       	call   400d60 <exit@plt>

0000000000401ae5 <Gets>:
  401ae5:	41 54                	push   %r12
  401ae7:	55                   	push   %rbp
  401ae8:	53                   	push   %rbx
  401ae9:	49 89 fc             	mov    %rdi,%r12
  401aec:	c7 05 2e 46 20 00 00 	movl   $0x0,0x20462e(%rip)        # 606124 <gets_cnt>
  401af3:	00 00 00 
  401af6:	48 89 fb             	mov    %rdi,%rbx
  401af9:	eb 11                	jmp    401b0c <Gets+0x27>
  401afb:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401aff:	88 03                	mov    %al,(%rbx)
  401b01:	0f b6 f8             	movzbl %al,%edi
  401b04:	e8 3c ff ff ff       	call   401a45 <save_char>
  401b09:	48 89 eb             	mov    %rbp,%rbx
  401b0c:	48 8b 3d dd 39 20 00 	mov    0x2039dd(%rip),%rdi        # 6054f0 <infile>
  401b13:	e8 d8 f1 ff ff       	call   400cf0 <_IO_getc@plt>
  401b18:	83 f8 ff             	cmp    $0xffffffff,%eax
  401b1b:	74 05                	je     401b22 <Gets+0x3d>
  401b1d:	83 f8 0a             	cmp    $0xa,%eax
  401b20:	75 d9                	jne    401afb <Gets+0x16>
  401b22:	c6 03 00             	movb   $0x0,(%rbx)
  401b25:	b8 00 00 00 00       	mov    $0x0,%eax
  401b2a:	e8 6e ff ff ff       	call   401a9d <save_term>
  401b2f:	4c 89 e0             	mov    %r12,%rax
  401b32:	5b                   	pop    %rbx
  401b33:	5d                   	pop    %rbp
  401b34:	41 5c                	pop    %r12
  401b36:	c3                   	ret    

0000000000401b37 <notify_server>:
  401b37:	53                   	push   %rbx
  401b38:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
  401b3f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401b46:	00 00 
  401b48:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401b4f:	00 
  401b50:	31 c0                	xor    %eax,%eax
  401b52:	83 3d af 39 20 00 00 	cmpl   $0x0,0x2039af(%rip)        # 605508 <is_checker>
  401b59:	0f 85 aa 01 00 00    	jne    401d09 <notify_server+0x1d2>
  401b5f:	89 fb                	mov    %edi,%ebx
  401b61:	8b 05 bd 45 20 00    	mov    0x2045bd(%rip),%eax        # 606124 <gets_cnt>
  401b67:	83 c0 64             	add    $0x64,%eax
  401b6a:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401b6f:	7e 1e                	jle    401b8f <notify_server+0x58>
  401b71:	be 40 32 40 00       	mov    $0x403240,%esi
  401b76:	bf 01 00 00 00       	mov    $0x1,%edi
  401b7b:	b8 00 00 00 00       	mov    $0x0,%eax
  401b80:	e8 9b f1 ff ff       	call   400d20 <__printf_chk@plt>
  401b85:	bf 01 00 00 00       	mov    $0x1,%edi
  401b8a:	e8 d1 f1 ff ff       	call   400d60 <exit@plt>
  401b8f:	0f be 05 92 45 20 00 	movsbl 0x204592(%rip),%eax        # 606128 <target_prefix>
  401b96:	83 3d eb 38 20 00 00 	cmpl   $0x0,0x2038eb(%rip)        # 605488 <notify>
  401b9d:	74 08                	je     401ba7 <notify_server+0x70>
  401b9f:	8b 15 5b 39 20 00    	mov    0x20395b(%rip),%edx        # 605500 <authkey>
  401ba5:	eb 05                	jmp    401bac <notify_server+0x75>
  401ba7:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401bac:	85 db                	test   %ebx,%ebx
  401bae:	74 08                	je     401bb8 <notify_server+0x81>
  401bb0:	41 b9 21 31 40 00    	mov    $0x403121,%r9d
  401bb6:	eb 06                	jmp    401bbe <notify_server+0x87>
  401bb8:	41 b9 26 31 40 00    	mov    $0x403126,%r9d
  401bbe:	68 20 55 60 00       	push   $0x605520
  401bc3:	56                   	push   %rsi
  401bc4:	50                   	push   %rax
  401bc5:	52                   	push   %rdx
  401bc6:	44 8b 05 7b 35 20 00 	mov    0x20357b(%rip),%r8d        # 605148 <target_id>
  401bcd:	b9 2b 31 40 00       	mov    $0x40312b,%ecx
  401bd2:	ba 00 20 00 00       	mov    $0x2000,%edx
  401bd7:	be 01 00 00 00       	mov    $0x1,%esi
  401bdc:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  401be1:	b8 00 00 00 00       	mov    $0x0,%eax
  401be6:	e8 a5 f1 ff ff       	call   400d90 <__sprintf_chk@plt>
  401beb:	48 83 c4 20          	add    $0x20,%rsp
  401bef:	83 3d 92 38 20 00 00 	cmpl   $0x0,0x203892(%rip)        # 605488 <notify>
  401bf6:	0f 84 81 00 00 00    	je     401c7d <notify_server+0x146>
  401bfc:	85 db                	test   %ebx,%ebx
  401bfe:	74 6e                	je     401c6e <notify_server+0x137>
  401c00:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  401c07:	00 
  401c08:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401c0e:	48 89 e1             	mov    %rsp,%rcx
  401c11:	48 8b 15 38 35 20 00 	mov    0x203538(%rip),%rdx        # 605150 <lab>
  401c18:	48 8b 35 39 35 20 00 	mov    0x203539(%rip),%rsi        # 605158 <course>
  401c1f:	48 8b 3d 1a 35 20 00 	mov    0x20351a(%rip),%rdi        # 605140 <user_id>
  401c26:	e8 d3 0f 00 00       	call   402bfe <driver_post>
  401c2b:	85 c0                	test   %eax,%eax
  401c2d:	79 26                	jns    401c55 <notify_server+0x11e>
  401c2f:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  401c36:	00 
  401c37:	be 47 31 40 00       	mov    $0x403147,%esi
  401c3c:	bf 01 00 00 00       	mov    $0x1,%edi
  401c41:	b8 00 00 00 00       	mov    $0x0,%eax
  401c46:	e8 d5 f0 ff ff       	call   400d20 <__printf_chk@plt>
  401c4b:	bf 01 00 00 00       	mov    $0x1,%edi
  401c50:	e8 0b f1 ff ff       	call   400d60 <exit@plt>
  401c55:	bf 70 32 40 00       	mov    $0x403270,%edi
  401c5a:	e8 a1 ef ff ff       	call   400c00 <puts@plt>
  401c5f:	bf 53 31 40 00       	mov    $0x403153,%edi
  401c64:	e8 97 ef ff ff       	call   400c00 <puts@plt>
  401c69:	e9 9b 00 00 00       	jmp    401d09 <notify_server+0x1d2>
  401c6e:	bf 5d 31 40 00       	mov    $0x40315d,%edi
  401c73:	e8 88 ef ff ff       	call   400c00 <puts@plt>
  401c78:	e9 8c 00 00 00       	jmp    401d09 <notify_server+0x1d2>
  401c7d:	85 db                	test   %ebx,%ebx
  401c7f:	74 07                	je     401c88 <notify_server+0x151>
  401c81:	ba 21 31 40 00       	mov    $0x403121,%edx
  401c86:	eb 05                	jmp    401c8d <notify_server+0x156>
  401c88:	ba 26 31 40 00       	mov    $0x403126,%edx
  401c8d:	be a8 32 40 00       	mov    $0x4032a8,%esi
  401c92:	bf 01 00 00 00       	mov    $0x1,%edi
  401c97:	b8 00 00 00 00       	mov    $0x0,%eax
  401c9c:	e8 7f f0 ff ff       	call   400d20 <__printf_chk@plt>
  401ca1:	48 8b 15 98 34 20 00 	mov    0x203498(%rip),%rdx        # 605140 <user_id>
  401ca8:	be 64 31 40 00       	mov    $0x403164,%esi
  401cad:	bf 01 00 00 00       	mov    $0x1,%edi
  401cb2:	b8 00 00 00 00       	mov    $0x0,%eax
  401cb7:	e8 64 f0 ff ff       	call   400d20 <__printf_chk@plt>
  401cbc:	48 8b 15 95 34 20 00 	mov    0x203495(%rip),%rdx        # 605158 <course>
  401cc3:	be 71 31 40 00       	mov    $0x403171,%esi
  401cc8:	bf 01 00 00 00       	mov    $0x1,%edi
  401ccd:	b8 00 00 00 00       	mov    $0x0,%eax
  401cd2:	e8 49 f0 ff ff       	call   400d20 <__printf_chk@plt>
  401cd7:	48 8b 15 72 34 20 00 	mov    0x203472(%rip),%rdx        # 605150 <lab>
  401cde:	be 7d 31 40 00       	mov    $0x40317d,%esi
  401ce3:	bf 01 00 00 00       	mov    $0x1,%edi
  401ce8:	b8 00 00 00 00       	mov    $0x0,%eax
  401ced:	e8 2e f0 ff ff       	call   400d20 <__printf_chk@plt>
  401cf2:	48 89 e2             	mov    %rsp,%rdx
  401cf5:	be 86 31 40 00       	mov    $0x403186,%esi
  401cfa:	bf 01 00 00 00       	mov    $0x1,%edi
  401cff:	b8 00 00 00 00       	mov    $0x0,%eax
  401d04:	e8 17 f0 ff ff       	call   400d20 <__printf_chk@plt>
  401d09:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  401d10:	00 
  401d11:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401d18:	00 00 
  401d1a:	74 05                	je     401d21 <notify_server+0x1ea>
  401d1c:	e8 ff ee ff ff       	call   400c20 <__stack_chk_fail@plt>
  401d21:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
  401d28:	5b                   	pop    %rbx
  401d29:	c3                   	ret    

0000000000401d2a <validate>:
  401d2a:	53                   	push   %rbx
  401d2b:	89 fb                	mov    %edi,%ebx
  401d2d:	83 3d d4 37 20 00 00 	cmpl   $0x0,0x2037d4(%rip)        # 605508 <is_checker>
  401d34:	74 6b                	je     401da1 <validate+0x77>
  401d36:	39 3d c0 37 20 00    	cmp    %edi,0x2037c0(%rip)        # 6054fc <vlevel>
  401d3c:	74 14                	je     401d52 <validate+0x28>
  401d3e:	bf 92 31 40 00       	mov    $0x403192,%edi
  401d43:	e8 b8 ee ff ff       	call   400c00 <puts@plt>
  401d48:	b8 00 00 00 00       	mov    $0x0,%eax
  401d4d:	e8 5e fd ff ff       	call   401ab0 <check_fail>
  401d52:	8b 15 a0 37 20 00    	mov    0x2037a0(%rip),%edx        # 6054f8 <check_level>
  401d58:	39 d7                	cmp    %edx,%edi
  401d5a:	74 20                	je     401d7c <validate+0x52>
  401d5c:	89 f9                	mov    %edi,%ecx
  401d5e:	be d0 32 40 00       	mov    $0x4032d0,%esi
  401d63:	bf 01 00 00 00       	mov    $0x1,%edi
  401d68:	b8 00 00 00 00       	mov    $0x0,%eax
  401d6d:	e8 ae ef ff ff       	call   400d20 <__printf_chk@plt>
  401d72:	b8 00 00 00 00       	mov    $0x0,%eax
  401d77:	e8 34 fd ff ff       	call   401ab0 <check_fail>
  401d7c:	0f be 15 a5 43 20 00 	movsbl 0x2043a5(%rip),%edx        # 606128 <target_prefix>
  401d83:	41 b8 20 55 60 00    	mov    $0x605520,%r8d
  401d89:	89 f9                	mov    %edi,%ecx
  401d8b:	be b0 31 40 00       	mov    $0x4031b0,%esi
  401d90:	bf 01 00 00 00       	mov    $0x1,%edi
  401d95:	b8 00 00 00 00       	mov    $0x0,%eax
  401d9a:	e8 81 ef ff ff       	call   400d20 <__printf_chk@plt>
  401d9f:	eb 49                	jmp    401dea <validate+0xc0>
  401da1:	3b 3d 55 37 20 00    	cmp    0x203755(%rip),%edi        # 6054fc <vlevel>
  401da7:	74 18                	je     401dc1 <validate+0x97>
  401da9:	bf 92 31 40 00       	mov    $0x403192,%edi
  401dae:	e8 4d ee ff ff       	call   400c00 <puts@plt>
  401db3:	89 de                	mov    %ebx,%esi
  401db5:	bf 00 00 00 00       	mov    $0x0,%edi
  401dba:	e8 78 fd ff ff       	call   401b37 <notify_server>
  401dbf:	eb 29                	jmp    401dea <validate+0xc0>
  401dc1:	0f be 0d 60 43 20 00 	movsbl 0x204360(%rip),%ecx        # 606128 <target_prefix>
  401dc8:	89 fa                	mov    %edi,%edx
  401dca:	be f8 32 40 00       	mov    $0x4032f8,%esi
  401dcf:	bf 01 00 00 00       	mov    $0x1,%edi
  401dd4:	b8 00 00 00 00       	mov    $0x0,%eax
  401dd9:	e8 42 ef ff ff       	call   400d20 <__printf_chk@plt>
  401dde:	89 de                	mov    %ebx,%esi
  401de0:	bf 01 00 00 00       	mov    $0x1,%edi
  401de5:	e8 4d fd ff ff       	call   401b37 <notify_server>
  401dea:	5b                   	pop    %rbx
  401deb:	c3                   	ret    

0000000000401dec <fail>:
  401dec:	48 83 ec 08          	sub    $0x8,%rsp
  401df0:	83 3d 11 37 20 00 00 	cmpl   $0x0,0x203711(%rip)        # 605508 <is_checker>
  401df7:	74 0a                	je     401e03 <fail+0x17>
  401df9:	b8 00 00 00 00       	mov    $0x0,%eax
  401dfe:	e8 ad fc ff ff       	call   401ab0 <check_fail>
  401e03:	89 fe                	mov    %edi,%esi
  401e05:	bf 00 00 00 00       	mov    $0x0,%edi
  401e0a:	e8 28 fd ff ff       	call   401b37 <notify_server>
  401e0f:	48 83 c4 08          	add    $0x8,%rsp
  401e13:	c3                   	ret    

0000000000401e14 <bushandler>:
  401e14:	48 83 ec 08          	sub    $0x8,%rsp
  401e18:	83 3d e9 36 20 00 00 	cmpl   $0x0,0x2036e9(%rip)        # 605508 <is_checker>
  401e1f:	74 14                	je     401e35 <bushandler+0x21>
  401e21:	bf c5 31 40 00       	mov    $0x4031c5,%edi
  401e26:	e8 d5 ed ff ff       	call   400c00 <puts@plt>
  401e2b:	b8 00 00 00 00       	mov    $0x0,%eax
  401e30:	e8 7b fc ff ff       	call   401ab0 <check_fail>
  401e35:	bf 30 33 40 00       	mov    $0x403330,%edi
  401e3a:	e8 c1 ed ff ff       	call   400c00 <puts@plt>
  401e3f:	bf cf 31 40 00       	mov    $0x4031cf,%edi
  401e44:	e8 b7 ed ff ff       	call   400c00 <puts@plt>
  401e49:	be 00 00 00 00       	mov    $0x0,%esi
  401e4e:	bf 00 00 00 00       	mov    $0x0,%edi
  401e53:	e8 df fc ff ff       	call   401b37 <notify_server>
  401e58:	bf 01 00 00 00       	mov    $0x1,%edi
  401e5d:	e8 fe ee ff ff       	call   400d60 <exit@plt>

0000000000401e62 <seghandler>:
  401e62:	48 83 ec 08          	sub    $0x8,%rsp
  401e66:	83 3d 9b 36 20 00 00 	cmpl   $0x0,0x20369b(%rip)        # 605508 <is_checker>
  401e6d:	74 14                	je     401e83 <seghandler+0x21>
  401e6f:	bf e5 31 40 00       	mov    $0x4031e5,%edi
  401e74:	e8 87 ed ff ff       	call   400c00 <puts@plt>
  401e79:	b8 00 00 00 00       	mov    $0x0,%eax
  401e7e:	e8 2d fc ff ff       	call   401ab0 <check_fail>
  401e83:	bf 50 33 40 00       	mov    $0x403350,%edi
  401e88:	e8 73 ed ff ff       	call   400c00 <puts@plt>
  401e8d:	bf cf 31 40 00       	mov    $0x4031cf,%edi
  401e92:	e8 69 ed ff ff       	call   400c00 <puts@plt>
  401e97:	be 00 00 00 00       	mov    $0x0,%esi
  401e9c:	bf 00 00 00 00       	mov    $0x0,%edi
  401ea1:	e8 91 fc ff ff       	call   401b37 <notify_server>
  401ea6:	bf 01 00 00 00       	mov    $0x1,%edi
  401eab:	e8 b0 ee ff ff       	call   400d60 <exit@plt>

0000000000401eb0 <illegalhandler>:
  401eb0:	48 83 ec 08          	sub    $0x8,%rsp
  401eb4:	83 3d 4d 36 20 00 00 	cmpl   $0x0,0x20364d(%rip)        # 605508 <is_checker>
  401ebb:	74 14                	je     401ed1 <illegalhandler+0x21>
  401ebd:	bf f8 31 40 00       	mov    $0x4031f8,%edi
  401ec2:	e8 39 ed ff ff       	call   400c00 <puts@plt>
  401ec7:	b8 00 00 00 00       	mov    $0x0,%eax
  401ecc:	e8 df fb ff ff       	call   401ab0 <check_fail>
  401ed1:	bf 78 33 40 00       	mov    $0x403378,%edi
  401ed6:	e8 25 ed ff ff       	call   400c00 <puts@plt>
  401edb:	bf cf 31 40 00       	mov    $0x4031cf,%edi
  401ee0:	e8 1b ed ff ff       	call   400c00 <puts@plt>
  401ee5:	be 00 00 00 00       	mov    $0x0,%esi
  401eea:	bf 00 00 00 00       	mov    $0x0,%edi
  401eef:	e8 43 fc ff ff       	call   401b37 <notify_server>
  401ef4:	bf 01 00 00 00       	mov    $0x1,%edi
  401ef9:	e8 62 ee ff ff       	call   400d60 <exit@plt>

0000000000401efe <sigalrmhandler>:
  401efe:	48 83 ec 08          	sub    $0x8,%rsp
  401f02:	83 3d ff 35 20 00 00 	cmpl   $0x0,0x2035ff(%rip)        # 605508 <is_checker>
  401f09:	74 14                	je     401f1f <sigalrmhandler+0x21>
  401f0b:	bf 0c 32 40 00       	mov    $0x40320c,%edi
  401f10:	e8 eb ec ff ff       	call   400c00 <puts@plt>
  401f15:	b8 00 00 00 00       	mov    $0x0,%eax
  401f1a:	e8 91 fb ff ff       	call   401ab0 <check_fail>
  401f1f:	ba 05 00 00 00       	mov    $0x5,%edx
  401f24:	be a8 33 40 00       	mov    $0x4033a8,%esi
  401f29:	bf 01 00 00 00       	mov    $0x1,%edi
  401f2e:	b8 00 00 00 00       	mov    $0x0,%eax
  401f33:	e8 e8 ed ff ff       	call   400d20 <__printf_chk@plt>
  401f38:	be 00 00 00 00       	mov    $0x0,%esi
  401f3d:	bf 00 00 00 00       	mov    $0x0,%edi
  401f42:	e8 f0 fb ff ff       	call   401b37 <notify_server>
  401f47:	bf 01 00 00 00       	mov    $0x1,%edi
  401f4c:	e8 0f ee ff ff       	call   400d60 <exit@plt>

0000000000401f51 <launch>:
  401f51:	55                   	push   %rbp
  401f52:	48 89 e5             	mov    %rsp,%rbp
  401f55:	48 83 ec 10          	sub    $0x10,%rsp
  401f59:	48 89 fa             	mov    %rdi,%rdx
  401f5c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401f63:	00 00 
  401f65:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401f69:	31 c0                	xor    %eax,%eax
  401f6b:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  401f6f:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401f73:	48 29 c4             	sub    %rax,%rsp
  401f76:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  401f7b:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  401f7f:	be f4 00 00 00       	mov    $0xf4,%esi
  401f84:	e8 b7 ec ff ff       	call   400c40 <memset@plt>
  401f89:	48 8b 05 10 35 20 00 	mov    0x203510(%rip),%rax        # 6054a0 <stdin@GLIBC_2.2.5>
  401f90:	48 39 05 59 35 20 00 	cmp    %rax,0x203559(%rip)        # 6054f0 <infile>
  401f97:	75 14                	jne    401fad <launch+0x5c>
  401f99:	be 14 32 40 00       	mov    $0x403214,%esi
  401f9e:	bf 01 00 00 00       	mov    $0x1,%edi
  401fa3:	b8 00 00 00 00       	mov    $0x0,%eax
  401fa8:	e8 73 ed ff ff       	call   400d20 <__printf_chk@plt>
  401fad:	c7 05 45 35 20 00 00 	movl   $0x0,0x203545(%rip)        # 6054fc <vlevel>
  401fb4:	00 00 00 
  401fb7:	b8 00 00 00 00       	mov    $0x0,%eax
  401fbc:	e8 3a f9 ff ff       	call   4018fb <test>
  401fc1:	83 3d 40 35 20 00 00 	cmpl   $0x0,0x203540(%rip)        # 605508 <is_checker>
  401fc8:	74 14                	je     401fde <launch+0x8d>
  401fca:	bf 21 32 40 00       	mov    $0x403221,%edi
  401fcf:	e8 2c ec ff ff       	call   400c00 <puts@plt>
  401fd4:	b8 00 00 00 00       	mov    $0x0,%eax
  401fd9:	e8 d2 fa ff ff       	call   401ab0 <check_fail>
  401fde:	bf 2c 32 40 00       	mov    $0x40322c,%edi
  401fe3:	e8 18 ec ff ff       	call   400c00 <puts@plt>
  401fe8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401fec:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401ff3:	00 00 
  401ff5:	74 05                	je     401ffc <launch+0xab>
  401ff7:	e8 24 ec ff ff       	call   400c20 <__stack_chk_fail@plt>
  401ffc:	c9                   	leave  
  401ffd:	c3                   	ret    

0000000000401ffe <stable_launch>:
  401ffe:	53                   	push   %rbx
  401fff:	48 89 3d e2 34 20 00 	mov    %rdi,0x2034e2(%rip)        # 6054e8 <global_offset>
  402006:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  40200c:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402012:	b9 32 01 00 00       	mov    $0x132,%ecx
  402017:	ba 07 00 00 00       	mov    $0x7,%edx
  40201c:	be 00 00 10 00       	mov    $0x100000,%esi
  402021:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402026:	e8 05 ec ff ff       	call   400c30 <mmap@plt>
  40202b:	48 89 c3             	mov    %rax,%rbx
  40202e:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402034:	74 37                	je     40206d <stable_launch+0x6f>
  402036:	be 00 00 10 00       	mov    $0x100000,%esi
  40203b:	48 89 c7             	mov    %rax,%rdi
  40203e:	e8 cd ec ff ff       	call   400d10 <munmap@plt>
  402043:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402048:	ba e0 33 40 00       	mov    $0x4033e0,%edx
  40204d:	be 01 00 00 00       	mov    $0x1,%esi
  402052:	48 8b 3d 67 34 20 00 	mov    0x203467(%rip),%rdi        # 6054c0 <stderr@GLIBC_2.2.5>
  402059:	b8 00 00 00 00       	mov    $0x0,%eax
  40205e:	e8 1d ed ff ff       	call   400d80 <__fprintf_chk@plt>
  402063:	bf 01 00 00 00       	mov    $0x1,%edi
  402068:	e8 f3 ec ff ff       	call   400d60 <exit@plt>
  40206d:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  402074:	48 89 15 b5 40 20 00 	mov    %rdx,0x2040b5(%rip)        # 606130 <stack_top>
  40207b:	48 89 e0             	mov    %rsp,%rax
  40207e:	48 89 d4             	mov    %rdx,%rsp
  402081:	48 89 c2             	mov    %rax,%rdx
  402084:	48 89 15 55 34 20 00 	mov    %rdx,0x203455(%rip)        # 6054e0 <global_save_stack>
  40208b:	48 8b 3d 56 34 20 00 	mov    0x203456(%rip),%rdi        # 6054e8 <global_offset>
  402092:	e8 ba fe ff ff       	call   401f51 <launch>
  402097:	48 8b 05 42 34 20 00 	mov    0x203442(%rip),%rax        # 6054e0 <global_save_stack>
  40209e:	48 89 c4             	mov    %rax,%rsp
  4020a1:	be 00 00 10 00       	mov    $0x100000,%esi
  4020a6:	48 89 df             	mov    %rbx,%rdi
  4020a9:	e8 62 ec ff ff       	call   400d10 <munmap@plt>
  4020ae:	5b                   	pop    %rbx
  4020af:	c3                   	ret    

00000000004020b0 <rio_readinitb>:
  4020b0:	89 37                	mov    %esi,(%rdi)
  4020b2:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  4020b9:	48 8d 47 10          	lea    0x10(%rdi),%rax
  4020bd:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4020c1:	c3                   	ret    

00000000004020c2 <sigalrm_handler>:
  4020c2:	48 83 ec 08          	sub    $0x8,%rsp
  4020c6:	b9 00 00 00 00       	mov    $0x0,%ecx
  4020cb:	ba 20 34 40 00       	mov    $0x403420,%edx
  4020d0:	be 01 00 00 00       	mov    $0x1,%esi
  4020d5:	48 8b 3d e4 33 20 00 	mov    0x2033e4(%rip),%rdi        # 6054c0 <stderr@GLIBC_2.2.5>
  4020dc:	b8 00 00 00 00       	mov    $0x0,%eax
  4020e1:	e8 9a ec ff ff       	call   400d80 <__fprintf_chk@plt>
  4020e6:	bf 01 00 00 00       	mov    $0x1,%edi
  4020eb:	e8 70 ec ff ff       	call   400d60 <exit@plt>

00000000004020f0 <rio_writen>:
  4020f0:	41 55                	push   %r13
  4020f2:	41 54                	push   %r12
  4020f4:	55                   	push   %rbp
  4020f5:	53                   	push   %rbx
  4020f6:	48 83 ec 08          	sub    $0x8,%rsp
  4020fa:	41 89 fc             	mov    %edi,%r12d
  4020fd:	48 89 f5             	mov    %rsi,%rbp
  402100:	49 89 d5             	mov    %rdx,%r13
  402103:	48 89 d3             	mov    %rdx,%rbx
  402106:	eb 28                	jmp    402130 <rio_writen+0x40>
  402108:	48 89 da             	mov    %rbx,%rdx
  40210b:	48 89 ee             	mov    %rbp,%rsi
  40210e:	44 89 e7             	mov    %r12d,%edi
  402111:	e8 fa ea ff ff       	call   400c10 <write@plt>
  402116:	48 85 c0             	test   %rax,%rax
  402119:	7f 0f                	jg     40212a <rio_writen+0x3a>
  40211b:	e8 a0 ea ff ff       	call   400bc0 <__errno_location@plt>
  402120:	83 38 04             	cmpl   $0x4,(%rax)
  402123:	75 15                	jne    40213a <rio_writen+0x4a>
  402125:	b8 00 00 00 00       	mov    $0x0,%eax
  40212a:	48 29 c3             	sub    %rax,%rbx
  40212d:	48 01 c5             	add    %rax,%rbp
  402130:	48 85 db             	test   %rbx,%rbx
  402133:	75 d3                	jne    402108 <rio_writen+0x18>
  402135:	4c 89 e8             	mov    %r13,%rax
  402138:	eb 07                	jmp    402141 <rio_writen+0x51>
  40213a:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402141:	48 83 c4 08          	add    $0x8,%rsp
  402145:	5b                   	pop    %rbx
  402146:	5d                   	pop    %rbp
  402147:	41 5c                	pop    %r12
  402149:	41 5d                	pop    %r13
  40214b:	c3                   	ret    

000000000040214c <rio_read>:
  40214c:	41 55                	push   %r13
  40214e:	41 54                	push   %r12
  402150:	55                   	push   %rbp
  402151:	53                   	push   %rbx
  402152:	48 83 ec 08          	sub    $0x8,%rsp
  402156:	48 89 fb             	mov    %rdi,%rbx
  402159:	49 89 f5             	mov    %rsi,%r13
  40215c:	49 89 d4             	mov    %rdx,%r12
  40215f:	eb 2e                	jmp    40218f <rio_read+0x43>
  402161:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402165:	8b 3b                	mov    (%rbx),%edi
  402167:	ba 00 20 00 00       	mov    $0x2000,%edx
  40216c:	48 89 ee             	mov    %rbp,%rsi
  40216f:	e8 fc ea ff ff       	call   400c70 <read@plt>
  402174:	89 43 04             	mov    %eax,0x4(%rbx)
  402177:	85 c0                	test   %eax,%eax
  402179:	79 0c                	jns    402187 <rio_read+0x3b>
  40217b:	e8 40 ea ff ff       	call   400bc0 <__errno_location@plt>
  402180:	83 38 04             	cmpl   $0x4,(%rax)
  402183:	74 0a                	je     40218f <rio_read+0x43>
  402185:	eb 37                	jmp    4021be <rio_read+0x72>
  402187:	85 c0                	test   %eax,%eax
  402189:	74 3c                	je     4021c7 <rio_read+0x7b>
  40218b:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  40218f:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402192:	85 ed                	test   %ebp,%ebp
  402194:	7e cb                	jle    402161 <rio_read+0x15>
  402196:	89 e8                	mov    %ebp,%eax
  402198:	49 39 c4             	cmp    %rax,%r12
  40219b:	77 03                	ja     4021a0 <rio_read+0x54>
  40219d:	44 89 e5             	mov    %r12d,%ebp
  4021a0:	4c 63 e5             	movslq %ebp,%r12
  4021a3:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4021a7:	4c 89 e2             	mov    %r12,%rdx
  4021aa:	4c 89 ef             	mov    %r13,%rdi
  4021ad:	e8 0e eb ff ff       	call   400cc0 <memcpy@plt>
  4021b2:	4c 01 63 08          	add    %r12,0x8(%rbx)
  4021b6:	29 6b 04             	sub    %ebp,0x4(%rbx)
  4021b9:	4c 89 e0             	mov    %r12,%rax
  4021bc:	eb 0e                	jmp    4021cc <rio_read+0x80>
  4021be:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4021c5:	eb 05                	jmp    4021cc <rio_read+0x80>
  4021c7:	b8 00 00 00 00       	mov    $0x0,%eax
  4021cc:	48 83 c4 08          	add    $0x8,%rsp
  4021d0:	5b                   	pop    %rbx
  4021d1:	5d                   	pop    %rbp
  4021d2:	41 5c                	pop    %r12
  4021d4:	41 5d                	pop    %r13
  4021d6:	c3                   	ret    

00000000004021d7 <rio_readlineb>:
  4021d7:	41 55                	push   %r13
  4021d9:	41 54                	push   %r12
  4021db:	55                   	push   %rbp
  4021dc:	53                   	push   %rbx
  4021dd:	48 83 ec 18          	sub    $0x18,%rsp
  4021e1:	49 89 fd             	mov    %rdi,%r13
  4021e4:	48 89 f5             	mov    %rsi,%rbp
  4021e7:	49 89 d4             	mov    %rdx,%r12
  4021ea:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4021f1:	00 00 
  4021f3:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4021f8:	31 c0                	xor    %eax,%eax
  4021fa:	bb 01 00 00 00       	mov    $0x1,%ebx
  4021ff:	eb 3f                	jmp    402240 <rio_readlineb+0x69>
  402201:	ba 01 00 00 00       	mov    $0x1,%edx
  402206:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  40220b:	4c 89 ef             	mov    %r13,%rdi
  40220e:	e8 39 ff ff ff       	call   40214c <rio_read>
  402213:	83 f8 01             	cmp    $0x1,%eax
  402216:	75 15                	jne    40222d <rio_readlineb+0x56>
  402218:	48 8d 45 01          	lea    0x1(%rbp),%rax
  40221c:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  402221:	88 55 00             	mov    %dl,0x0(%rbp)
  402224:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  402229:	75 0e                	jne    402239 <rio_readlineb+0x62>
  40222b:	eb 1a                	jmp    402247 <rio_readlineb+0x70>
  40222d:	85 c0                	test   %eax,%eax
  40222f:	75 22                	jne    402253 <rio_readlineb+0x7c>
  402231:	48 83 fb 01          	cmp    $0x1,%rbx
  402235:	75 13                	jne    40224a <rio_readlineb+0x73>
  402237:	eb 23                	jmp    40225c <rio_readlineb+0x85>
  402239:	48 83 c3 01          	add    $0x1,%rbx
  40223d:	48 89 c5             	mov    %rax,%rbp
  402240:	4c 39 e3             	cmp    %r12,%rbx
  402243:	72 bc                	jb     402201 <rio_readlineb+0x2a>
  402245:	eb 03                	jmp    40224a <rio_readlineb+0x73>
  402247:	48 89 c5             	mov    %rax,%rbp
  40224a:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  40224e:	48 89 d8             	mov    %rbx,%rax
  402251:	eb 0e                	jmp    402261 <rio_readlineb+0x8a>
  402253:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40225a:	eb 05                	jmp    402261 <rio_readlineb+0x8a>
  40225c:	b8 00 00 00 00       	mov    $0x0,%eax
  402261:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  402266:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  40226d:	00 00 
  40226f:	74 05                	je     402276 <rio_readlineb+0x9f>
  402271:	e8 aa e9 ff ff       	call   400c20 <__stack_chk_fail@plt>
  402276:	48 83 c4 18          	add    $0x18,%rsp
  40227a:	5b                   	pop    %rbx
  40227b:	5d                   	pop    %rbp
  40227c:	41 5c                	pop    %r12
  40227e:	41 5d                	pop    %r13
  402280:	c3                   	ret    

0000000000402281 <urlencode>:
  402281:	41 54                	push   %r12
  402283:	55                   	push   %rbp
  402284:	53                   	push   %rbx
  402285:	48 83 ec 10          	sub    $0x10,%rsp
  402289:	48 89 fb             	mov    %rdi,%rbx
  40228c:	48 89 f5             	mov    %rsi,%rbp
  40228f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402296:	00 00 
  402298:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40229d:	31 c0                	xor    %eax,%eax
  40229f:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4022a6:	f2 ae                	repnz scas %es:(%rdi),%al
  4022a8:	48 f7 d1             	not    %rcx
  4022ab:	8d 41 ff             	lea    -0x1(%rcx),%eax
  4022ae:	e9 aa 00 00 00       	jmp    40235d <urlencode+0xdc>
  4022b3:	44 0f b6 03          	movzbl (%rbx),%r8d
  4022b7:	41 80 f8 2a          	cmp    $0x2a,%r8b
  4022bb:	0f 94 c2             	sete   %dl
  4022be:	41 80 f8 2d          	cmp    $0x2d,%r8b
  4022c2:	0f 94 c0             	sete   %al
  4022c5:	08 c2                	or     %al,%dl
  4022c7:	75 24                	jne    4022ed <urlencode+0x6c>
  4022c9:	41 80 f8 2e          	cmp    $0x2e,%r8b
  4022cd:	74 1e                	je     4022ed <urlencode+0x6c>
  4022cf:	41 80 f8 5f          	cmp    $0x5f,%r8b
  4022d3:	74 18                	je     4022ed <urlencode+0x6c>
  4022d5:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  4022d9:	3c 09                	cmp    $0x9,%al
  4022db:	76 10                	jbe    4022ed <urlencode+0x6c>
  4022dd:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  4022e1:	3c 19                	cmp    $0x19,%al
  4022e3:	76 08                	jbe    4022ed <urlencode+0x6c>
  4022e5:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  4022e9:	3c 19                	cmp    $0x19,%al
  4022eb:	77 0a                	ja     4022f7 <urlencode+0x76>
  4022ed:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  4022f1:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4022f5:	eb 5f                	jmp    402356 <urlencode+0xd5>
  4022f7:	41 80 f8 20          	cmp    $0x20,%r8b
  4022fb:	75 0a                	jne    402307 <urlencode+0x86>
  4022fd:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402301:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402305:	eb 4f                	jmp    402356 <urlencode+0xd5>
  402307:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  40230b:	3c 5f                	cmp    $0x5f,%al
  40230d:	0f 96 c2             	setbe  %dl
  402310:	41 80 f8 09          	cmp    $0x9,%r8b
  402314:	0f 94 c0             	sete   %al
  402317:	08 c2                	or     %al,%dl
  402319:	74 50                	je     40236b <urlencode+0xea>
  40231b:	45 0f b6 c0          	movzbl %r8b,%r8d
  40231f:	b9 b8 34 40 00       	mov    $0x4034b8,%ecx
  402324:	ba 08 00 00 00       	mov    $0x8,%edx
  402329:	be 01 00 00 00       	mov    $0x1,%esi
  40232e:	48 89 e7             	mov    %rsp,%rdi
  402331:	b8 00 00 00 00       	mov    $0x0,%eax
  402336:	e8 55 ea ff ff       	call   400d90 <__sprintf_chk@plt>
  40233b:	0f b6 04 24          	movzbl (%rsp),%eax
  40233f:	88 45 00             	mov    %al,0x0(%rbp)
  402342:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402347:	88 45 01             	mov    %al,0x1(%rbp)
  40234a:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  40234f:	88 45 02             	mov    %al,0x2(%rbp)
  402352:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402356:	48 83 c3 01          	add    $0x1,%rbx
  40235a:	44 89 e0             	mov    %r12d,%eax
  40235d:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402361:	85 c0                	test   %eax,%eax
  402363:	0f 85 4a ff ff ff    	jne    4022b3 <urlencode+0x32>
  402369:	eb 05                	jmp    402370 <urlencode+0xef>
  40236b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402370:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402375:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  40237c:	00 00 
  40237e:	74 05                	je     402385 <urlencode+0x104>
  402380:	e8 9b e8 ff ff       	call   400c20 <__stack_chk_fail@plt>
  402385:	48 83 c4 10          	add    $0x10,%rsp
  402389:	5b                   	pop    %rbx
  40238a:	5d                   	pop    %rbp
  40238b:	41 5c                	pop    %r12
  40238d:	c3                   	ret    

000000000040238e <submitr>:
  40238e:	41 57                	push   %r15
  402390:	41 56                	push   %r14
  402392:	41 55                	push   %r13
  402394:	41 54                	push   %r12
  402396:	55                   	push   %rbp
  402397:	53                   	push   %rbx
  402398:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  40239f:	49 89 ff             	mov    %rdi,%r15
  4023a2:	89 74 24 04          	mov    %esi,0x4(%rsp)
  4023a6:	49 89 d6             	mov    %rdx,%r14
  4023a9:	49 89 cd             	mov    %rcx,%r13
  4023ac:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
  4023b1:	4d 89 cc             	mov    %r9,%r12
  4023b4:	48 8b 9c 24 90 a0 00 	mov    0xa090(%rsp),%rbx
  4023bb:	00 
  4023bc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4023c3:	00 00 
  4023c5:	48 89 84 24 48 a0 00 	mov    %rax,0xa048(%rsp)
  4023cc:	00 
  4023cd:	31 c0                	xor    %eax,%eax
  4023cf:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%rsp)
  4023d6:	00 
  4023d7:	ba 00 00 00 00       	mov    $0x0,%edx
  4023dc:	be 01 00 00 00       	mov    $0x1,%esi
  4023e1:	bf 02 00 00 00       	mov    $0x2,%edi
  4023e6:	e8 b5 e9 ff ff       	call   400da0 <socket@plt>
  4023eb:	85 c0                	test   %eax,%eax
  4023ed:	79 4e                	jns    40243d <submitr+0xaf>
  4023ef:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4023f6:	3a 20 43 
  4023f9:	48 89 03             	mov    %rax,(%rbx)
  4023fc:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402403:	20 75 6e 
  402406:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40240a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402411:	74 6f 20 
  402414:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402418:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  40241f:	65 20 73 
  402422:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402426:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  40242d:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  402433:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402438:	e9 0a 06 00 00       	jmp    402a47 <submitr+0x6b9>
  40243d:	89 c5                	mov    %eax,%ebp
  40243f:	66 c7 44 24 20 02 00 	movw   $0x2,0x20(%rsp)
  402446:	bf 17 30 40 00       	mov    $0x403017,%edi
  40244b:	b8 00 00 00 00       	mov    $0x0,%eax
  402450:	e8 3b e8 ff ff       	call   400c90 <inet_addr@plt>
  402455:	89 44 24 24          	mov    %eax,0x24(%rsp)
  402459:	0f b7 44 24 04       	movzwl 0x4(%rsp),%eax
  40245e:	66 c1 c8 08          	ror    $0x8,%ax
  402462:	66 89 44 24 22       	mov    %ax,0x22(%rsp)
  402467:	ba 10 00 00 00       	mov    $0x10,%edx
  40246c:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  402471:	89 ef                	mov    %ebp,%edi
  402473:	e8 f8 e8 ff ff       	call   400d70 <connect@plt>
  402478:	85 c0                	test   %eax,%eax
  40247a:	79 59                	jns    4024d5 <submitr+0x147>
  40247c:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402483:	3a 20 55 
  402486:	48 89 03             	mov    %rax,(%rbx)
  402489:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402490:	20 74 6f 
  402493:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402497:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40249e:	65 63 74 
  4024a1:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4024a5:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  4024ac:	68 65 20 
  4024af:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4024b3:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  4024ba:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  4024c0:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  4024c4:	89 ef                	mov    %ebp,%edi
  4024c6:	e8 95 e7 ff ff       	call   400c60 <close@plt>
  4024cb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024d0:	e9 72 05 00 00       	jmp    402a47 <submitr+0x6b9>
  4024d5:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  4024dc:	b8 00 00 00 00       	mov    $0x0,%eax
  4024e1:	48 89 f1             	mov    %rsi,%rcx
  4024e4:	4c 89 e7             	mov    %r12,%rdi
  4024e7:	f2 ae                	repnz scas %es:(%rdi),%al
  4024e9:	48 f7 d1             	not    %rcx
  4024ec:	48 89 ca             	mov    %rcx,%rdx
  4024ef:	48 89 f1             	mov    %rsi,%rcx
  4024f2:	4c 89 f7             	mov    %r14,%rdi
  4024f5:	f2 ae                	repnz scas %es:(%rdi),%al
  4024f7:	48 f7 d1             	not    %rcx
  4024fa:	49 89 c8             	mov    %rcx,%r8
  4024fd:	48 89 f1             	mov    %rsi,%rcx
  402500:	4c 89 ef             	mov    %r13,%rdi
  402503:	f2 ae                	repnz scas %es:(%rdi),%al
  402505:	48 f7 d1             	not    %rcx
  402508:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  40250d:	48 89 f1             	mov    %rsi,%rcx
  402510:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402515:	f2 ae                	repnz scas %es:(%rdi),%al
  402517:	48 89 c8             	mov    %rcx,%rax
  40251a:	48 f7 d0             	not    %rax
  40251d:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402522:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402527:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  40252e:	00 
  40252f:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402535:	76 72                	jbe    4025a9 <submitr+0x21b>
  402537:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40253e:	3a 20 52 
  402541:	48 89 03             	mov    %rax,(%rbx)
  402544:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  40254b:	20 73 74 
  40254e:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402552:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402559:	74 6f 6f 
  40255c:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402560:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  402567:	65 2e 20 
  40256a:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40256e:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402575:	61 73 65 
  402578:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40257c:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  402583:	49 54 52 
  402586:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40258a:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402591:	55 46 00 
  402594:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402598:	89 ef                	mov    %ebp,%edi
  40259a:	e8 c1 e6 ff ff       	call   400c60 <close@plt>
  40259f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4025a4:	e9 9e 04 00 00       	jmp    402a47 <submitr+0x6b9>
  4025a9:	48 8d b4 24 40 40 00 	lea    0x4040(%rsp),%rsi
  4025b0:	00 
  4025b1:	b9 00 04 00 00       	mov    $0x400,%ecx
  4025b6:	b8 00 00 00 00       	mov    $0x0,%eax
  4025bb:	48 89 f7             	mov    %rsi,%rdi
  4025be:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4025c1:	4c 89 e7             	mov    %r12,%rdi
  4025c4:	e8 b8 fc ff ff       	call   402281 <urlencode>
  4025c9:	85 c0                	test   %eax,%eax
  4025cb:	0f 89 8a 00 00 00    	jns    40265b <submitr+0x2cd>
  4025d1:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4025d8:	3a 20 52 
  4025db:	48 89 03             	mov    %rax,(%rbx)
  4025de:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4025e5:	20 73 74 
  4025e8:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4025ec:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  4025f3:	63 6f 6e 
  4025f6:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4025fa:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  402601:	20 61 6e 
  402604:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402608:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  40260f:	67 61 6c 
  402612:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402616:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  40261d:	6e 70 72 
  402620:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402624:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  40262b:	6c 65 20 
  40262e:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402632:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  402639:	63 74 65 
  40263c:	48 89 43 38          	mov    %rax,0x38(%rbx)
  402640:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  402646:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  40264a:	89 ef                	mov    %ebp,%edi
  40264c:	e8 0f e6 ff ff       	call   400c60 <close@plt>
  402651:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402656:	e9 ec 03 00 00       	jmp    402a47 <submitr+0x6b9>
  40265b:	4c 8d a4 24 40 20 00 	lea    0x2040(%rsp),%r12
  402662:	00 
  402663:	41 57                	push   %r15
  402665:	48 8d 84 24 48 40 00 	lea    0x4048(%rsp),%rax
  40266c:	00 
  40266d:	50                   	push   %rax
  40266e:	4d 89 f1             	mov    %r14,%r9
  402671:	4d 89 e8             	mov    %r13,%r8
  402674:	b9 48 34 40 00       	mov    $0x403448,%ecx
  402679:	ba 00 20 00 00       	mov    $0x2000,%edx
  40267e:	be 01 00 00 00       	mov    $0x1,%esi
  402683:	4c 89 e7             	mov    %r12,%rdi
  402686:	b8 00 00 00 00       	mov    $0x0,%eax
  40268b:	e8 00 e7 ff ff       	call   400d90 <__sprintf_chk@plt>
  402690:	b8 00 00 00 00       	mov    $0x0,%eax
  402695:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40269c:	4c 89 e7             	mov    %r12,%rdi
  40269f:	f2 ae                	repnz scas %es:(%rdi),%al
  4026a1:	48 f7 d1             	not    %rcx
  4026a4:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  4026a8:	4c 89 e6             	mov    %r12,%rsi
  4026ab:	89 ef                	mov    %ebp,%edi
  4026ad:	e8 3e fa ff ff       	call   4020f0 <rio_writen>
  4026b2:	48 83 c4 10          	add    $0x10,%rsp
  4026b6:	48 85 c0             	test   %rax,%rax
  4026b9:	79 6e                	jns    402729 <submitr+0x39b>
  4026bb:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4026c2:	3a 20 43 
  4026c5:	48 89 03             	mov    %rax,(%rbx)
  4026c8:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4026cf:	20 75 6e 
  4026d2:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4026d6:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4026dd:	74 6f 20 
  4026e0:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4026e4:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  4026eb:	20 74 6f 
  4026ee:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4026f2:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  4026f9:	72 65 73 
  4026fc:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402700:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  402707:	65 72 76 
  40270a:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40270e:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  402714:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  402718:	89 ef                	mov    %ebp,%edi
  40271a:	e8 41 e5 ff ff       	call   400c60 <close@plt>
  40271f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402724:	e9 1e 03 00 00       	jmp    402a47 <submitr+0x6b9>
  402729:	89 ee                	mov    %ebp,%esi
  40272b:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402730:	e8 7b f9 ff ff       	call   4020b0 <rio_readinitb>
  402735:	ba 00 20 00 00       	mov    $0x2000,%edx
  40273a:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402741:	00 
  402742:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402747:	e8 8b fa ff ff       	call   4021d7 <rio_readlineb>
  40274c:	48 85 c0             	test   %rax,%rax
  40274f:	7f 7d                	jg     4027ce <submitr+0x440>
  402751:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402758:	3a 20 43 
  40275b:	48 89 03             	mov    %rax,(%rbx)
  40275e:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402765:	20 75 6e 
  402768:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40276c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402773:	74 6f 20 
  402776:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40277a:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  402781:	66 69 72 
  402784:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402788:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  40278f:	61 64 65 
  402792:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402796:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  40279d:	6d 20 72 
  4027a0:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4027a4:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  4027ab:	20 73 65 
  4027ae:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4027b2:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  4027b9:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  4027bd:	89 ef                	mov    %ebp,%edi
  4027bf:	e8 9c e4 ff ff       	call   400c60 <close@plt>
  4027c4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027c9:	e9 79 02 00 00       	jmp    402a47 <submitr+0x6b9>
  4027ce:	4c 8d 84 24 40 80 00 	lea    0x8040(%rsp),%r8
  4027d5:	00 
  4027d6:	48 8d 4c 24 1c       	lea    0x1c(%rsp),%rcx
  4027db:	48 8d 94 24 40 60 00 	lea    0x6040(%rsp),%rdx
  4027e2:	00 
  4027e3:	be bf 34 40 00       	mov    $0x4034bf,%esi
  4027e8:	48 8d bc 24 40 20 00 	lea    0x2040(%rsp),%rdi
  4027ef:	00 
  4027f0:	b8 00 00 00 00       	mov    $0x0,%eax
  4027f5:	e8 06 e5 ff ff       	call   400d00 <__isoc99_sscanf@plt>
  4027fa:	e9 95 00 00 00       	jmp    402894 <submitr+0x506>
  4027ff:	ba 00 20 00 00       	mov    $0x2000,%edx
  402804:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  40280b:	00 
  40280c:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402811:	e8 c1 f9 ff ff       	call   4021d7 <rio_readlineb>
  402816:	48 85 c0             	test   %rax,%rax
  402819:	7f 79                	jg     402894 <submitr+0x506>
  40281b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402822:	3a 20 43 
  402825:	48 89 03             	mov    %rax,(%rbx)
  402828:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40282f:	20 75 6e 
  402832:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402836:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40283d:	74 6f 20 
  402840:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402844:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  40284b:	68 65 61 
  40284e:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402852:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402859:	66 72 6f 
  40285c:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402860:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  402867:	20 72 65 
  40286a:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40286e:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  402875:	73 65 72 
  402878:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40287c:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  402883:	89 ef                	mov    %ebp,%edi
  402885:	e8 d6 e3 ff ff       	call   400c60 <close@plt>
  40288a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40288f:	e9 b3 01 00 00       	jmp    402a47 <submitr+0x6b9>
  402894:	0f b6 94 24 40 20 00 	movzbl 0x2040(%rsp),%edx
  40289b:	00 
  40289c:	b8 0d 00 00 00       	mov    $0xd,%eax
  4028a1:	29 d0                	sub    %edx,%eax
  4028a3:	75 1b                	jne    4028c0 <submitr+0x532>
  4028a5:	0f b6 94 24 41 20 00 	movzbl 0x2041(%rsp),%edx
  4028ac:	00 
  4028ad:	b8 0a 00 00 00       	mov    $0xa,%eax
  4028b2:	29 d0                	sub    %edx,%eax
  4028b4:	75 0a                	jne    4028c0 <submitr+0x532>
  4028b6:	0f b6 84 24 42 20 00 	movzbl 0x2042(%rsp),%eax
  4028bd:	00 
  4028be:	f7 d8                	neg    %eax
  4028c0:	85 c0                	test   %eax,%eax
  4028c2:	0f 85 37 ff ff ff    	jne    4027ff <submitr+0x471>
  4028c8:	ba 00 20 00 00       	mov    $0x2000,%edx
  4028cd:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  4028d4:	00 
  4028d5:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4028da:	e8 f8 f8 ff ff       	call   4021d7 <rio_readlineb>
  4028df:	48 85 c0             	test   %rax,%rax
  4028e2:	0f 8f 83 00 00 00    	jg     40296b <submitr+0x5dd>
  4028e8:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4028ef:	3a 20 43 
  4028f2:	48 89 03             	mov    %rax,(%rbx)
  4028f5:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4028fc:	20 75 6e 
  4028ff:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402903:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40290a:	74 6f 20 
  40290d:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402911:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  402918:	73 74 61 
  40291b:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40291f:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402926:	65 73 73 
  402929:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40292d:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402934:	72 6f 6d 
  402937:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40293b:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402942:	6c 74 20 
  402945:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402949:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  402950:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  402956:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  40295a:	89 ef                	mov    %ebp,%edi
  40295c:	e8 ff e2 ff ff       	call   400c60 <close@plt>
  402961:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402966:	e9 dc 00 00 00       	jmp    402a47 <submitr+0x6b9>
  40296b:	44 8b 44 24 1c       	mov    0x1c(%rsp),%r8d
  402970:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402977:	74 37                	je     4029b0 <submitr+0x622>
  402979:	4c 8d 8c 24 40 80 00 	lea    0x8040(%rsp),%r9
  402980:	00 
  402981:	b9 88 34 40 00       	mov    $0x403488,%ecx
  402986:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  40298d:	be 01 00 00 00       	mov    $0x1,%esi
  402992:	48 89 df             	mov    %rbx,%rdi
  402995:	b8 00 00 00 00       	mov    $0x0,%eax
  40299a:	e8 f1 e3 ff ff       	call   400d90 <__sprintf_chk@plt>
  40299f:	89 ef                	mov    %ebp,%edi
  4029a1:	e8 ba e2 ff ff       	call   400c60 <close@plt>
  4029a6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029ab:	e9 97 00 00 00       	jmp    402a47 <submitr+0x6b9>
  4029b0:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  4029b7:	00 
  4029b8:	48 89 df             	mov    %rbx,%rdi
  4029bb:	e8 30 e2 ff ff       	call   400bf0 <strcpy@plt>
  4029c0:	89 ef                	mov    %ebp,%edi
  4029c2:	e8 99 e2 ff ff       	call   400c60 <close@plt>
  4029c7:	0f b6 03             	movzbl (%rbx),%eax
  4029ca:	ba 4f 00 00 00       	mov    $0x4f,%edx
  4029cf:	29 c2                	sub    %eax,%edx
  4029d1:	75 22                	jne    4029f5 <submitr+0x667>
  4029d3:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  4029d7:	b8 4b 00 00 00       	mov    $0x4b,%eax
  4029dc:	29 c8                	sub    %ecx,%eax
  4029de:	75 17                	jne    4029f7 <submitr+0x669>
  4029e0:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  4029e4:	b8 0a 00 00 00       	mov    $0xa,%eax
  4029e9:	29 c8                	sub    %ecx,%eax
  4029eb:	75 0a                	jne    4029f7 <submitr+0x669>
  4029ed:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  4029f1:	f7 d8                	neg    %eax
  4029f3:	eb 02                	jmp    4029f7 <submitr+0x669>
  4029f5:	89 d0                	mov    %edx,%eax
  4029f7:	85 c0                	test   %eax,%eax
  4029f9:	74 40                	je     402a3b <submitr+0x6ad>
  4029fb:	bf d0 34 40 00       	mov    $0x4034d0,%edi
  402a00:	b9 05 00 00 00       	mov    $0x5,%ecx
  402a05:	48 89 de             	mov    %rbx,%rsi
  402a08:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402a0a:	0f 97 c0             	seta   %al
  402a0d:	0f 92 c1             	setb   %cl
  402a10:	29 c8                	sub    %ecx,%eax
  402a12:	0f be c0             	movsbl %al,%eax
  402a15:	85 c0                	test   %eax,%eax
  402a17:	74 2e                	je     402a47 <submitr+0x6b9>
  402a19:	85 d2                	test   %edx,%edx
  402a1b:	75 13                	jne    402a30 <submitr+0x6a2>
  402a1d:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  402a21:	ba 4b 00 00 00       	mov    $0x4b,%edx
  402a26:	29 c2                	sub    %eax,%edx
  402a28:	75 06                	jne    402a30 <submitr+0x6a2>
  402a2a:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  402a2e:	f7 da                	neg    %edx
  402a30:	85 d2                	test   %edx,%edx
  402a32:	75 0e                	jne    402a42 <submitr+0x6b4>
  402a34:	b8 00 00 00 00       	mov    $0x0,%eax
  402a39:	eb 0c                	jmp    402a47 <submitr+0x6b9>
  402a3b:	b8 00 00 00 00       	mov    $0x0,%eax
  402a40:	eb 05                	jmp    402a47 <submitr+0x6b9>
  402a42:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a47:	48 8b 9c 24 48 a0 00 	mov    0xa048(%rsp),%rbx
  402a4e:	00 
  402a4f:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402a56:	00 00 
  402a58:	74 05                	je     402a5f <submitr+0x6d1>
  402a5a:	e8 c1 e1 ff ff       	call   400c20 <__stack_chk_fail@plt>
  402a5f:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  402a66:	5b                   	pop    %rbx
  402a67:	5d                   	pop    %rbp
  402a68:	41 5c                	pop    %r12
  402a6a:	41 5d                	pop    %r13
  402a6c:	41 5e                	pop    %r14
  402a6e:	41 5f                	pop    %r15
  402a70:	c3                   	ret    

0000000000402a71 <init_timeout>:
  402a71:	85 ff                	test   %edi,%edi
  402a73:	74 23                	je     402a98 <init_timeout+0x27>
  402a75:	53                   	push   %rbx
  402a76:	89 fb                	mov    %edi,%ebx
  402a78:	85 ff                	test   %edi,%edi
  402a7a:	79 05                	jns    402a81 <init_timeout+0x10>
  402a7c:	bb 00 00 00 00       	mov    $0x0,%ebx
  402a81:	be c2 20 40 00       	mov    $0x4020c2,%esi
  402a86:	bf 0e 00 00 00       	mov    $0xe,%edi
  402a8b:	e8 10 e2 ff ff       	call   400ca0 <signal@plt>
  402a90:	89 df                	mov    %ebx,%edi
  402a92:	e8 b9 e1 ff ff       	call   400c50 <alarm@plt>
  402a97:	5b                   	pop    %rbx
  402a98:	f3 c3                	repz ret 

0000000000402a9a <init_driver>:
  402a9a:	55                   	push   %rbp
  402a9b:	53                   	push   %rbx
  402a9c:	48 83 ec 28          	sub    $0x28,%rsp
  402aa0:	48 89 fd             	mov    %rdi,%rbp
  402aa3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402aaa:	00 00 
  402aac:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402ab1:	31 c0                	xor    %eax,%eax
  402ab3:	be 01 00 00 00       	mov    $0x1,%esi
  402ab8:	bf 0d 00 00 00       	mov    $0xd,%edi
  402abd:	e8 de e1 ff ff       	call   400ca0 <signal@plt>
  402ac2:	be 01 00 00 00       	mov    $0x1,%esi
  402ac7:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402acc:	e8 cf e1 ff ff       	call   400ca0 <signal@plt>
  402ad1:	be 01 00 00 00       	mov    $0x1,%esi
  402ad6:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402adb:	e8 c0 e1 ff ff       	call   400ca0 <signal@plt>
  402ae0:	ba 00 00 00 00       	mov    $0x0,%edx
  402ae5:	be 01 00 00 00       	mov    $0x1,%esi
  402aea:	bf 02 00 00 00       	mov    $0x2,%edi
  402aef:	e8 ac e2 ff ff       	call   400da0 <socket@plt>
  402af4:	85 c0                	test   %eax,%eax
  402af6:	79 4f                	jns    402b47 <init_driver+0xad>
  402af8:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402aff:	3a 20 43 
  402b02:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b06:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402b0d:	20 75 6e 
  402b10:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402b14:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402b1b:	74 6f 20 
  402b1e:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b22:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402b29:	65 20 73 
  402b2c:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402b30:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402b37:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402b3d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b42:	e9 9b 00 00 00       	jmp    402be2 <init_driver+0x148>
  402b47:	89 c3                	mov    %eax,%ebx
  402b49:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402b4f:	bf 17 30 40 00       	mov    $0x403017,%edi
  402b54:	b8 00 00 00 00       	mov    $0x0,%eax
  402b59:	e8 32 e1 ff ff       	call   400c90 <inet_addr@plt>
  402b5e:	89 44 24 04          	mov    %eax,0x4(%rsp)
  402b62:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  402b69:	ba 10 00 00 00       	mov    $0x10,%edx
  402b6e:	48 89 e6             	mov    %rsp,%rsi
  402b71:	89 df                	mov    %ebx,%edi
  402b73:	e8 f8 e1 ff ff       	call   400d70 <connect@plt>
  402b78:	85 c0                	test   %eax,%eax
  402b7a:	79 50                	jns    402bcc <init_driver+0x132>
  402b7c:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402b83:	3a 20 55 
  402b86:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b8a:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402b91:	20 74 6f 
  402b94:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402b98:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402b9f:	65 63 74 
  402ba2:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402ba6:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402bad:	65 72 76 
  402bb0:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402bb4:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402bba:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402bbe:	89 df                	mov    %ebx,%edi
  402bc0:	e8 9b e0 ff ff       	call   400c60 <close@plt>
  402bc5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bca:	eb 16                	jmp    402be2 <init_driver+0x148>
  402bcc:	89 df                	mov    %ebx,%edi
  402bce:	e8 8d e0 ff ff       	call   400c60 <close@plt>
  402bd3:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402bd9:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402bdd:	b8 00 00 00 00       	mov    $0x0,%eax
  402be2:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402be7:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402bee:	00 00 
  402bf0:	74 05                	je     402bf7 <init_driver+0x15d>
  402bf2:	e8 29 e0 ff ff       	call   400c20 <__stack_chk_fail@plt>
  402bf7:	48 83 c4 28          	add    $0x28,%rsp
  402bfb:	5b                   	pop    %rbx
  402bfc:	5d                   	pop    %rbp
  402bfd:	c3                   	ret    

0000000000402bfe <driver_post>:
  402bfe:	53                   	push   %rbx
  402bff:	4c 89 cb             	mov    %r9,%rbx
  402c02:	45 85 c0             	test   %r8d,%r8d
  402c05:	74 27                	je     402c2e <driver_post+0x30>
  402c07:	48 89 ca             	mov    %rcx,%rdx
  402c0a:	be d5 34 40 00       	mov    $0x4034d5,%esi
  402c0f:	bf 01 00 00 00       	mov    $0x1,%edi
  402c14:	b8 00 00 00 00       	mov    $0x0,%eax
  402c19:	e8 02 e1 ff ff       	call   400d20 <__printf_chk@plt>
  402c1e:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402c23:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402c27:	b8 00 00 00 00       	mov    $0x0,%eax
  402c2c:	eb 3f                	jmp    402c6d <driver_post+0x6f>
  402c2e:	48 85 ff             	test   %rdi,%rdi
  402c31:	74 2c                	je     402c5f <driver_post+0x61>
  402c33:	80 3f 00             	cmpb   $0x0,(%rdi)
  402c36:	74 27                	je     402c5f <driver_post+0x61>
  402c38:	48 83 ec 08          	sub    $0x8,%rsp
  402c3c:	41 51                	push   %r9
  402c3e:	49 89 c9             	mov    %rcx,%r9
  402c41:	49 89 d0             	mov    %rdx,%r8
  402c44:	48 89 f9             	mov    %rdi,%rcx
  402c47:	48 89 f2             	mov    %rsi,%rdx
  402c4a:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  402c4f:	bf 17 30 40 00       	mov    $0x403017,%edi
  402c54:	e8 35 f7 ff ff       	call   40238e <submitr>
  402c59:	48 83 c4 10          	add    $0x10,%rsp
  402c5d:	eb 0e                	jmp    402c6d <driver_post+0x6f>
  402c5f:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402c64:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402c68:	b8 00 00 00 00       	mov    $0x0,%eax
  402c6d:	5b                   	pop    %rbx
  402c6e:	c3                   	ret    

0000000000402c6f <check>:
  402c6f:	89 f8                	mov    %edi,%eax
  402c71:	c1 e8 1c             	shr    $0x1c,%eax
  402c74:	85 c0                	test   %eax,%eax
  402c76:	74 1d                	je     402c95 <check+0x26>
  402c78:	b9 00 00 00 00       	mov    $0x0,%ecx
  402c7d:	eb 0b                	jmp    402c8a <check+0x1b>
  402c7f:	89 f8                	mov    %edi,%eax
  402c81:	d3 e8                	shr    %cl,%eax
  402c83:	3c 0a                	cmp    $0xa,%al
  402c85:	74 14                	je     402c9b <check+0x2c>
  402c87:	83 c1 08             	add    $0x8,%ecx
  402c8a:	83 f9 1f             	cmp    $0x1f,%ecx
  402c8d:	7e f0                	jle    402c7f <check+0x10>
  402c8f:	b8 01 00 00 00       	mov    $0x1,%eax
  402c94:	c3                   	ret    
  402c95:	b8 00 00 00 00       	mov    $0x0,%eax
  402c9a:	c3                   	ret    
  402c9b:	b8 00 00 00 00       	mov    $0x0,%eax
  402ca0:	c3                   	ret    

0000000000402ca1 <gencookie>:
  402ca1:	53                   	push   %rbx
  402ca2:	83 c7 01             	add    $0x1,%edi
  402ca5:	e8 26 df ff ff       	call   400bd0 <srandom@plt>
  402caa:	e8 31 e0 ff ff       	call   400ce0 <random@plt>
  402caf:	89 c3                	mov    %eax,%ebx
  402cb1:	89 c7                	mov    %eax,%edi
  402cb3:	e8 b7 ff ff ff       	call   402c6f <check>
  402cb8:	85 c0                	test   %eax,%eax
  402cba:	74 ee                	je     402caa <gencookie+0x9>
  402cbc:	89 d8                	mov    %ebx,%eax
  402cbe:	5b                   	pop    %rbx
  402cbf:	c3                   	ret    

0000000000402cc0 <__libc_csu_init>:
  402cc0:	41 57                	push   %r15
  402cc2:	41 56                	push   %r14
  402cc4:	41 89 ff             	mov    %edi,%r15d
  402cc7:	41 55                	push   %r13
  402cc9:	41 54                	push   %r12
  402ccb:	4c 8d 25 3e 21 20 00 	lea    0x20213e(%rip),%r12        # 604e10 <__frame_dummy_init_array_entry>
  402cd2:	55                   	push   %rbp
  402cd3:	48 8d 2d 3e 21 20 00 	lea    0x20213e(%rip),%rbp        # 604e18 <__do_global_dtors_aux_fini_array_entry>
  402cda:	53                   	push   %rbx
  402cdb:	49 89 f6             	mov    %rsi,%r14
  402cde:	49 89 d5             	mov    %rdx,%r13
  402ce1:	4c 29 e5             	sub    %r12,%rbp
  402ce4:	48 83 ec 08          	sub    $0x8,%rsp
  402ce8:	48 c1 fd 03          	sar    $0x3,%rbp
  402cec:	e8 97 de ff ff       	call   400b88 <_init>
  402cf1:	48 85 ed             	test   %rbp,%rbp
  402cf4:	74 20                	je     402d16 <__libc_csu_init+0x56>
  402cf6:	31 db                	xor    %ebx,%ebx
  402cf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402cff:	00 
  402d00:	4c 89 ea             	mov    %r13,%rdx
  402d03:	4c 89 f6             	mov    %r14,%rsi
  402d06:	44 89 ff             	mov    %r15d,%edi
  402d09:	41 ff 14 dc          	call   *(%r12,%rbx,8)
  402d0d:	48 83 c3 01          	add    $0x1,%rbx
  402d11:	48 39 eb             	cmp    %rbp,%rbx
  402d14:	75 ea                	jne    402d00 <__libc_csu_init+0x40>
  402d16:	48 83 c4 08          	add    $0x8,%rsp
  402d1a:	5b                   	pop    %rbx
  402d1b:	5d                   	pop    %rbp
  402d1c:	41 5c                	pop    %r12
  402d1e:	41 5d                	pop    %r13
  402d20:	41 5e                	pop    %r14
  402d22:	41 5f                	pop    %r15
  402d24:	c3                   	ret    
  402d25:	90                   	nop
  402d26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402d2d:	00 00 00 

0000000000402d30 <__libc_csu_fini>:
  402d30:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000402d34 <_fini>:
  402d34:	48 83 ec 08          	sub    $0x8,%rsp
  402d38:	48 83 c4 08          	add    $0x8,%rsp
  402d3c:	c3                   	ret    
