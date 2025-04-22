
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400b88 <_init>:
  400b88:	48 83 ec 08          	sub    $0x8,%rsp
  400b8c:	48 8b 05 65 34 20 00 	mov    0x203465(%rip),%rax        # 603ff8 <__gmon_start__>
  400b93:	48 85 c0             	test   %rax,%rax
  400b96:	74 05                	je     400b9d <_init+0x15>
  400b98:	e8 13 02 00 00       	call   400db0 <__gmon_start__@plt>
  400b9d:	48 83 c4 08          	add    $0x8,%rsp
  400ba1:	c3                   	ret    

Disassembly of section .plt:

0000000000400bb0 <.plt>:
  400bb0:	ff 35 52 34 20 00    	push   0x203452(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400bb6:	ff 25 54 34 20 00    	jmp    *0x203454(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400bbc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400bc0 <__errno_location@plt>:
  400bc0:	ff 25 52 34 20 00    	jmp    *0x203452(%rip)        # 604018 <__errno_location@GLIBC_2.2.5>
  400bc6:	68 00 00 00 00       	push   $0x0
  400bcb:	e9 e0 ff ff ff       	jmp    400bb0 <.plt>

0000000000400bd0 <srandom@plt>:
  400bd0:	ff 25 4a 34 20 00    	jmp    *0x20344a(%rip)        # 604020 <srandom@GLIBC_2.2.5>
  400bd6:	68 01 00 00 00       	push   $0x1
  400bdb:	e9 d0 ff ff ff       	jmp    400bb0 <.plt>

0000000000400be0 <strncmp@plt>:
  400be0:	ff 25 42 34 20 00    	jmp    *0x203442(%rip)        # 604028 <strncmp@GLIBC_2.2.5>
  400be6:	68 02 00 00 00       	push   $0x2
  400beb:	e9 c0 ff ff ff       	jmp    400bb0 <.plt>

0000000000400bf0 <strcpy@plt>:
  400bf0:	ff 25 3a 34 20 00    	jmp    *0x20343a(%rip)        # 604030 <strcpy@GLIBC_2.2.5>
  400bf6:	68 03 00 00 00       	push   $0x3
  400bfb:	e9 b0 ff ff ff       	jmp    400bb0 <.plt>

0000000000400c00 <puts@plt>:
  400c00:	ff 25 32 34 20 00    	jmp    *0x203432(%rip)        # 604038 <puts@GLIBC_2.2.5>
  400c06:	68 04 00 00 00       	push   $0x4
  400c0b:	e9 a0 ff ff ff       	jmp    400bb0 <.plt>

0000000000400c10 <write@plt>:
  400c10:	ff 25 2a 34 20 00    	jmp    *0x20342a(%rip)        # 604040 <write@GLIBC_2.2.5>
  400c16:	68 05 00 00 00       	push   $0x5
  400c1b:	e9 90 ff ff ff       	jmp    400bb0 <.plt>

0000000000400c20 <__stack_chk_fail@plt>:
  400c20:	ff 25 22 34 20 00    	jmp    *0x203422(%rip)        # 604048 <__stack_chk_fail@GLIBC_2.4>
  400c26:	68 06 00 00 00       	push   $0x6
  400c2b:	e9 80 ff ff ff       	jmp    400bb0 <.plt>

0000000000400c30 <mmap@plt>:
  400c30:	ff 25 1a 34 20 00    	jmp    *0x20341a(%rip)        # 604050 <mmap@GLIBC_2.2.5>
  400c36:	68 07 00 00 00       	push   $0x7
  400c3b:	e9 70 ff ff ff       	jmp    400bb0 <.plt>

0000000000400c40 <memset@plt>:
  400c40:	ff 25 12 34 20 00    	jmp    *0x203412(%rip)        # 604058 <memset@GLIBC_2.2.5>
  400c46:	68 08 00 00 00       	push   $0x8
  400c4b:	e9 60 ff ff ff       	jmp    400bb0 <.plt>

0000000000400c50 <alarm@plt>:
  400c50:	ff 25 0a 34 20 00    	jmp    *0x20340a(%rip)        # 604060 <alarm@GLIBC_2.2.5>
  400c56:	68 09 00 00 00       	push   $0x9
  400c5b:	e9 50 ff ff ff       	jmp    400bb0 <.plt>

0000000000400c60 <close@plt>:
  400c60:	ff 25 02 34 20 00    	jmp    *0x203402(%rip)        # 604068 <close@GLIBC_2.2.5>
  400c66:	68 0a 00 00 00       	push   $0xa
  400c6b:	e9 40 ff ff ff       	jmp    400bb0 <.plt>

0000000000400c70 <read@plt>:
  400c70:	ff 25 fa 33 20 00    	jmp    *0x2033fa(%rip)        # 604070 <read@GLIBC_2.2.5>
  400c76:	68 0b 00 00 00       	push   $0xb
  400c7b:	e9 30 ff ff ff       	jmp    400bb0 <.plt>

0000000000400c80 <__libc_start_main@plt>:
  400c80:	ff 25 f2 33 20 00    	jmp    *0x2033f2(%rip)        # 604078 <__libc_start_main@GLIBC_2.2.5>
  400c86:	68 0c 00 00 00       	push   $0xc
  400c8b:	e9 20 ff ff ff       	jmp    400bb0 <.plt>

0000000000400c90 <inet_addr@plt>:
  400c90:	ff 25 ea 33 20 00    	jmp    *0x2033ea(%rip)        # 604080 <inet_addr@GLIBC_2.2.5>
  400c96:	68 0d 00 00 00       	push   $0xd
  400c9b:	e9 10 ff ff ff       	jmp    400bb0 <.plt>

0000000000400ca0 <signal@plt>:
  400ca0:	ff 25 e2 33 20 00    	jmp    *0x2033e2(%rip)        # 604088 <signal@GLIBC_2.2.5>
  400ca6:	68 0e 00 00 00       	push   $0xe
  400cab:	e9 00 ff ff ff       	jmp    400bb0 <.plt>

0000000000400cb0 <strtol@plt>:
  400cb0:	ff 25 da 33 20 00    	jmp    *0x2033da(%rip)        # 604090 <strtol@GLIBC_2.2.5>
  400cb6:	68 0f 00 00 00       	push   $0xf
  400cbb:	e9 f0 fe ff ff       	jmp    400bb0 <.plt>

0000000000400cc0 <memcpy@plt>:
  400cc0:	ff 25 d2 33 20 00    	jmp    *0x2033d2(%rip)        # 604098 <memcpy@GLIBC_2.14>
  400cc6:	68 10 00 00 00       	push   $0x10
  400ccb:	e9 e0 fe ff ff       	jmp    400bb0 <.plt>

0000000000400cd0 <time@plt>:
  400cd0:	ff 25 ca 33 20 00    	jmp    *0x2033ca(%rip)        # 6040a0 <time@GLIBC_2.2.5>
  400cd6:	68 11 00 00 00       	push   $0x11
  400cdb:	e9 d0 fe ff ff       	jmp    400bb0 <.plt>

0000000000400ce0 <random@plt>:
  400ce0:	ff 25 c2 33 20 00    	jmp    *0x2033c2(%rip)        # 6040a8 <random@GLIBC_2.2.5>
  400ce6:	68 12 00 00 00       	push   $0x12
  400ceb:	e9 c0 fe ff ff       	jmp    400bb0 <.plt>

0000000000400cf0 <_IO_getc@plt>:
  400cf0:	ff 25 ba 33 20 00    	jmp    *0x2033ba(%rip)        # 6040b0 <_IO_getc@GLIBC_2.2.5>
  400cf6:	68 13 00 00 00       	push   $0x13
  400cfb:	e9 b0 fe ff ff       	jmp    400bb0 <.plt>

0000000000400d00 <__isoc99_sscanf@plt>:
  400d00:	ff 25 b2 33 20 00    	jmp    *0x2033b2(%rip)        # 6040b8 <__isoc99_sscanf@GLIBC_2.7>
  400d06:	68 14 00 00 00       	push   $0x14
  400d0b:	e9 a0 fe ff ff       	jmp    400bb0 <.plt>

0000000000400d10 <munmap@plt>:
  400d10:	ff 25 aa 33 20 00    	jmp    *0x2033aa(%rip)        # 6040c0 <munmap@GLIBC_2.2.5>
  400d16:	68 15 00 00 00       	push   $0x15
  400d1b:	e9 90 fe ff ff       	jmp    400bb0 <.plt>

0000000000400d20 <__printf_chk@plt>:
  400d20:	ff 25 a2 33 20 00    	jmp    *0x2033a2(%rip)        # 6040c8 <__printf_chk@GLIBC_2.3.4>
  400d26:	68 16 00 00 00       	push   $0x16
  400d2b:	e9 80 fe ff ff       	jmp    400bb0 <.plt>

0000000000400d30 <fopen@plt>:
  400d30:	ff 25 9a 33 20 00    	jmp    *0x20339a(%rip)        # 6040d0 <fopen@GLIBC_2.2.5>
  400d36:	68 17 00 00 00       	push   $0x17
  400d3b:	e9 70 fe ff ff       	jmp    400bb0 <.plt>

0000000000400d40 <getopt@plt>:
  400d40:	ff 25 92 33 20 00    	jmp    *0x203392(%rip)        # 6040d8 <getopt@GLIBC_2.2.5>
  400d46:	68 18 00 00 00       	push   $0x18
  400d4b:	e9 60 fe ff ff       	jmp    400bb0 <.plt>

0000000000400d50 <strtoul@plt>:
  400d50:	ff 25 8a 33 20 00    	jmp    *0x20338a(%rip)        # 6040e0 <strtoul@GLIBC_2.2.5>
  400d56:	68 19 00 00 00       	push   $0x19
  400d5b:	e9 50 fe ff ff       	jmp    400bb0 <.plt>

0000000000400d60 <exit@plt>:
  400d60:	ff 25 82 33 20 00    	jmp    *0x203382(%rip)        # 6040e8 <exit@GLIBC_2.2.5>
  400d66:	68 1a 00 00 00       	push   $0x1a
  400d6b:	e9 40 fe ff ff       	jmp    400bb0 <.plt>

0000000000400d70 <connect@plt>:
  400d70:	ff 25 7a 33 20 00    	jmp    *0x20337a(%rip)        # 6040f0 <connect@GLIBC_2.2.5>
  400d76:	68 1b 00 00 00       	push   $0x1b
  400d7b:	e9 30 fe ff ff       	jmp    400bb0 <.plt>

0000000000400d80 <__fprintf_chk@plt>:
  400d80:	ff 25 72 33 20 00    	jmp    *0x203372(%rip)        # 6040f8 <__fprintf_chk@GLIBC_2.3.4>
  400d86:	68 1c 00 00 00       	push   $0x1c
  400d8b:	e9 20 fe ff ff       	jmp    400bb0 <.plt>

0000000000400d90 <__sprintf_chk@plt>:
  400d90:	ff 25 6a 33 20 00    	jmp    *0x20336a(%rip)        # 604100 <__sprintf_chk@GLIBC_2.3.4>
  400d96:	68 1d 00 00 00       	push   $0x1d
  400d9b:	e9 10 fe ff ff       	jmp    400bb0 <.plt>

0000000000400da0 <socket@plt>:
  400da0:	ff 25 62 33 20 00    	jmp    *0x203362(%rip)        # 604108 <socket@GLIBC_2.2.5>
  400da6:	68 1e 00 00 00       	push   $0x1e
  400dab:	e9 00 fe ff ff       	jmp    400bb0 <.plt>

Disassembly of section .plt.got:

0000000000400db0 <__gmon_start__@plt>:
  400db0:	ff 25 42 32 20 00    	jmp    *0x203242(%rip)        # 603ff8 <__gmon_start__>
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
  400dcf:	49 c7 c0 10 2c 40 00 	mov    $0x402c10,%r8
  400dd6:	48 c7 c1 a0 2b 40 00 	mov    $0x402ba0,%rcx
  400ddd:	48 c7 c7 3c 10 40 00 	mov    $0x40103c,%rdi
  400de4:	e8 97 fe ff ff       	call   400c80 <__libc_start_main@plt>
  400de9:	f4                   	hlt    
  400dea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400df0 <deregister_tm_clones>:
  400df0:	b8 97 44 60 00       	mov    $0x604497,%eax
  400df5:	55                   	push   %rbp
  400df6:	48 2d 90 44 60 00    	sub    $0x604490,%rax
  400dfc:	48 83 f8 0e          	cmp    $0xe,%rax
  400e00:	48 89 e5             	mov    %rsp,%rbp
  400e03:	76 1b                	jbe    400e20 <deregister_tm_clones+0x30>
  400e05:	b8 00 00 00 00       	mov    $0x0,%eax
  400e0a:	48 85 c0             	test   %rax,%rax
  400e0d:	74 11                	je     400e20 <deregister_tm_clones+0x30>
  400e0f:	5d                   	pop    %rbp
  400e10:	bf 90 44 60 00       	mov    $0x604490,%edi
  400e15:	ff e0                	jmp    *%rax
  400e17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400e1e:	00 00 
  400e20:	5d                   	pop    %rbp
  400e21:	c3                   	ret    
  400e22:	0f 1f 40 00          	nopl   0x0(%rax)
  400e26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  400e2d:	00 00 00 

0000000000400e30 <register_tm_clones>:
  400e30:	be 90 44 60 00       	mov    $0x604490,%esi
  400e35:	55                   	push   %rbp
  400e36:	48 81 ee 90 44 60 00 	sub    $0x604490,%rsi
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
  400e5e:	bf 90 44 60 00       	mov    $0x604490,%edi
  400e63:	ff e0                	jmp    *%rax
  400e65:	0f 1f 00             	nopl   (%rax)
  400e68:	5d                   	pop    %rbp
  400e69:	c3                   	ret    
  400e6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400e70 <__do_global_dtors_aux>:
  400e70:	80 3d 51 36 20 00 00 	cmpb   $0x0,0x203651(%rip)        # 6044c8 <completed.7594>
  400e77:	75 11                	jne    400e8a <__do_global_dtors_aux+0x1a>
  400e79:	55                   	push   %rbp
  400e7a:	48 89 e5             	mov    %rsp,%rbp
  400e7d:	e8 6e ff ff ff       	call   400df0 <deregister_tm_clones>
  400e82:	5d                   	pop    %rbp
  400e83:	c6 05 3e 36 20 00 01 	movb   $0x1,0x20363e(%rip)        # 6044c8 <completed.7594>
  400e8a:	f3 c3                	repz ret 
  400e8c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400e90 <frame_dummy>:
  400e90:	bf 20 3e 60 00       	mov    $0x603e20,%edi
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
  400ebd:	83 3d 44 36 20 00 00 	cmpl   $0x0,0x203644(%rip)        # 604508 <is_checker>
  400ec4:	74 3e                	je     400f04 <usage+0x4e>
  400ec6:	be 28 2c 40 00       	mov    $0x402c28,%esi
  400ecb:	bf 01 00 00 00       	mov    $0x1,%edi
  400ed0:	b8 00 00 00 00       	mov    $0x0,%eax
  400ed5:	e8 46 fe ff ff       	call   400d20 <__printf_chk@plt>
  400eda:	bf 60 2c 40 00       	mov    $0x402c60,%edi
  400edf:	e8 1c fd ff ff       	call   400c00 <puts@plt>
  400ee4:	bf 60 2d 40 00       	mov    $0x402d60,%edi
  400ee9:	e8 12 fd ff ff       	call   400c00 <puts@plt>
  400eee:	bf 88 2c 40 00       	mov    $0x402c88,%edi
  400ef3:	e8 08 fd ff ff       	call   400c00 <puts@plt>
  400ef8:	bf 7a 2d 40 00       	mov    $0x402d7a,%edi
  400efd:	e8 fe fc ff ff       	call   400c00 <puts@plt>
  400f02:	eb 32                	jmp    400f36 <usage+0x80>
  400f04:	be 96 2d 40 00       	mov    $0x402d96,%esi
  400f09:	bf 01 00 00 00       	mov    $0x1,%edi
  400f0e:	b8 00 00 00 00       	mov    $0x0,%eax
  400f13:	e8 08 fe ff ff       	call   400d20 <__printf_chk@plt>
  400f18:	bf b0 2c 40 00       	mov    $0x402cb0,%edi
  400f1d:	e8 de fc ff ff       	call   400c00 <puts@plt>
  400f22:	bf d8 2c 40 00       	mov    $0x402cd8,%edi
  400f27:	e8 d4 fc ff ff       	call   400c00 <puts@plt>
  400f2c:	bf b4 2d 40 00       	mov    $0x402db4,%edi
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
  400f5e:	89 3d 94 35 20 00    	mov    %edi,0x203594(%rip)        # 6044f8 <check_level>
  400f64:	8b 3d de 31 20 00    	mov    0x2031de(%rip),%edi        # 604148 <target_id>
  400f6a:	e8 11 1c 00 00       	call   402b80 <gencookie>
  400f6f:	89 05 8f 35 20 00    	mov    %eax,0x20358f(%rip)        # 604504 <cookie>
  400f75:	89 c7                	mov    %eax,%edi
  400f77:	e8 04 1c 00 00       	call   402b80 <gencookie>
  400f7c:	89 05 7e 35 20 00    	mov    %eax,0x20357e(%rip)        # 604500 <authkey>
  400f82:	8b 05 c0 31 20 00    	mov    0x2031c0(%rip),%eax        # 604148 <target_id>
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
  400fcd:	48 89 05 ac 34 20 00 	mov    %rax,0x2034ac(%rip)        # 604480 <buf_offset>
  400fd4:	c6 05 4d 41 20 00 63 	movb   $0x63,0x20414d(%rip)        # 605128 <target_prefix>
  400fdb:	83 3d a6 34 20 00 00 	cmpl   $0x0,0x2034a6(%rip)        # 604488 <notify>
  400fe2:	74 36                	je     40101a <initialize_target+0xda>
  400fe4:	83 3d 1d 35 20 00 00 	cmpl   $0x0,0x20351d(%rip)        # 604508 <is_checker>
  400feb:	75 2d                	jne    40101a <initialize_target+0xda>
  400fed:	48 89 e7             	mov    %rsp,%rdi
  400ff0:	e8 84 19 00 00       	call   402979 <init_driver>
  400ff5:	85 c0                	test   %eax,%eax
  400ff7:	79 21                	jns    40101a <initialize_target+0xda>
  400ff9:	48 89 e2             	mov    %rsp,%rdx
  400ffc:	be 08 2d 40 00       	mov    $0x402d08,%esi
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
  40104a:	be 41 1d 40 00       	mov    $0x401d41,%esi
  40104f:	bf 0b 00 00 00       	mov    $0xb,%edi
  401054:	e8 47 fc ff ff       	call   400ca0 <signal@plt>
  401059:	be f3 1c 40 00       	mov    $0x401cf3,%esi
  40105e:	bf 07 00 00 00       	mov    $0x7,%edi
  401063:	e8 38 fc ff ff       	call   400ca0 <signal@plt>
  401068:	be 8f 1d 40 00       	mov    $0x401d8f,%esi
  40106d:	bf 04 00 00 00       	mov    $0x4,%edi
  401072:	e8 29 fc ff ff       	call   400ca0 <signal@plt>
  401077:	83 3d 8a 34 20 00 00 	cmpl   $0x0,0x20348a(%rip)        # 604508 <is_checker>
  40107e:	74 20                	je     4010a0 <main+0x64>
  401080:	be dd 1d 40 00       	mov    $0x401ddd,%esi
  401085:	bf 0e 00 00 00       	mov    $0xe,%edi
  40108a:	e8 11 fc ff ff       	call   400ca0 <signal@plt>
  40108f:	bf 05 00 00 00       	mov    $0x5,%edi
  401094:	e8 b7 fb ff ff       	call   400c50 <alarm@plt>
  401099:	bd d2 2d 40 00       	mov    $0x402dd2,%ebp
  40109e:	eb 05                	jmp    4010a5 <main+0x69>
  4010a0:	bd cd 2d 40 00       	mov    $0x402dcd,%ebp
  4010a5:	48 8b 05 f4 33 20 00 	mov    0x2033f4(%rip),%rax        # 6044a0 <stdin@GLIBC_2.2.5>
  4010ac:	48 89 05 3d 34 20 00 	mov    %rax,0x20343d(%rip)        # 6044f0 <infile>
  4010b3:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4010b9:	41 be 00 00 00 00    	mov    $0x0,%r14d
  4010bf:	e9 c6 00 00 00       	jmp    40118a <main+0x14e>
  4010c4:	83 e8 61             	sub    $0x61,%eax
  4010c7:	3c 10                	cmp    $0x10,%al
  4010c9:	0f 87 9c 00 00 00    	ja     40116b <main+0x12f>
  4010cf:	0f b6 c0             	movzbl %al,%eax
  4010d2:	ff 24 c5 18 2e 40 00 	jmp    *0x402e18(,%rax,8)
  4010d9:	48 8b 3b             	mov    (%rbx),%rdi
  4010dc:	e8 d5 fd ff ff       	call   400eb6 <usage>
  4010e1:	be ad 30 40 00       	mov    $0x4030ad,%esi
  4010e6:	48 8b 3d bb 33 20 00 	mov    0x2033bb(%rip),%rdi        # 6044a8 <optarg@GLIBC_2.2.5>
  4010ed:	e8 3e fc ff ff       	call   400d30 <fopen@plt>
  4010f2:	48 89 05 f7 33 20 00 	mov    %rax,0x2033f7(%rip)        # 6044f0 <infile>
  4010f9:	48 85 c0             	test   %rax,%rax
  4010fc:	0f 85 88 00 00 00    	jne    40118a <main+0x14e>
  401102:	48 8b 0d 9f 33 20 00 	mov    0x20339f(%rip),%rcx        # 6044a8 <optarg@GLIBC_2.2.5>
  401109:	ba da 2d 40 00       	mov    $0x402dda,%edx
  40110e:	be 01 00 00 00       	mov    $0x1,%esi
  401113:	48 8b 3d a6 33 20 00 	mov    0x2033a6(%rip),%rdi        # 6044c0 <stderr@GLIBC_2.2.5>
  40111a:	e8 61 fc ff ff       	call   400d80 <__fprintf_chk@plt>
  40111f:	b8 01 00 00 00       	mov    $0x1,%eax
  401124:	e9 e4 00 00 00       	jmp    40120d <main+0x1d1>
  401129:	ba 10 00 00 00       	mov    $0x10,%edx
  40112e:	be 00 00 00 00       	mov    $0x0,%esi
  401133:	48 8b 3d 6e 33 20 00 	mov    0x20336e(%rip),%rdi        # 6044a8 <optarg@GLIBC_2.2.5>
  40113a:	e8 11 fc ff ff       	call   400d50 <strtoul@plt>
  40113f:	41 89 c6             	mov    %eax,%r14d
  401142:	eb 46                	jmp    40118a <main+0x14e>
  401144:	ba 0a 00 00 00       	mov    $0xa,%edx
  401149:	be 00 00 00 00       	mov    $0x0,%esi
  40114e:	48 8b 3d 53 33 20 00 	mov    0x203353(%rip),%rdi        # 6044a8 <optarg@GLIBC_2.2.5>
  401155:	e8 56 fb ff ff       	call   400cb0 <strtol@plt>
  40115a:	41 89 c5             	mov    %eax,%r13d
  40115d:	eb 2b                	jmp    40118a <main+0x14e>
  40115f:	c7 05 1f 33 20 00 00 	movl   $0x0,0x20331f(%rip)        # 604488 <notify>
  401166:	00 00 00 
  401169:	eb 1f                	jmp    40118a <main+0x14e>
  40116b:	0f be d2             	movsbl %dl,%edx
  40116e:	be f7 2d 40 00       	mov    $0x402df7,%esi
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
  4011a2:	be 00 00 00 00       	mov    $0x0,%esi
  4011a7:	44 89 ef             	mov    %r13d,%edi
  4011aa:	e8 91 fd ff ff       	call   400f40 <initialize_target>
  4011af:	83 3d 52 33 20 00 00 	cmpl   $0x0,0x203352(%rip)        # 604508 <is_checker>
  4011b6:	74 2a                	je     4011e2 <main+0x1a6>
  4011b8:	44 3b 35 41 33 20 00 	cmp    0x203341(%rip),%r14d        # 604500 <authkey>
  4011bf:	74 21                	je     4011e2 <main+0x1a6>
  4011c1:	44 89 f2             	mov    %r14d,%edx
  4011c4:	be 30 2d 40 00       	mov    $0x402d30,%esi
  4011c9:	bf 01 00 00 00       	mov    $0x1,%edi
  4011ce:	b8 00 00 00 00       	mov    $0x0,%eax
  4011d3:	e8 48 fb ff ff       	call   400d20 <__printf_chk@plt>
  4011d8:	b8 00 00 00 00       	mov    $0x0,%eax
  4011dd:	e8 ad 07 00 00       	call   40198f <check_fail>
  4011e2:	8b 15 1c 33 20 00    	mov    0x20331c(%rip),%edx        # 604504 <cookie>
  4011e8:	be 0a 2e 40 00       	mov    $0x402e0a,%esi
  4011ed:	bf 01 00 00 00       	mov    $0x1,%edi
  4011f2:	b8 00 00 00 00       	mov    $0x0,%eax
  4011f7:	e8 24 fb ff ff       	call   400d20 <__printf_chk@plt>
  4011fc:	48 8b 3d 7d 32 20 00 	mov    0x20327d(%rip),%rdi        # 604480 <buf_offset>
  401203:	e8 d5 0c 00 00       	call   401edd <stable_launch>
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
  401741:	e8 7e 02 00 00       	call   4019c4 <Gets>
  401746:	b8 01 00 00 00       	mov    $0x1,%eax
  40174b:	48 83 c4 28          	add    $0x28,%rsp
  40174f:	c3                   	ret    

0000000000401750 <touch1>:
  401750:	48 83 ec 08          	sub    $0x8,%rsp
  401754:	c7 05 9e 2d 20 00 01 	movl   $0x1,0x202d9e(%rip)        # 6044fc <vlevel>
  40175b:	00 00 00 
  40175e:	bf 06 2f 40 00       	mov    $0x402f06,%edi
  401763:	e8 98 f4 ff ff       	call   400c00 <puts@plt>
  401768:	bf 01 00 00 00       	mov    $0x1,%edi
  40176d:	e8 97 04 00 00       	call   401c09 <validate>
  401772:	bf 00 00 00 00       	mov    $0x0,%edi
  401777:	e8 e4 f5 ff ff       	call   400d60 <exit@plt>

000000000040177c <touch2>:
  40177c:	48 83 ec 08          	sub    $0x8,%rsp
  401780:	89 fa                	mov    %edi,%edx
  401782:	c7 05 70 2d 20 00 02 	movl   $0x2,0x202d70(%rip)        # 6044fc <vlevel>
  401789:	00 00 00 
  40178c:	39 3d 72 2d 20 00    	cmp    %edi,0x202d72(%rip)        # 604504 <cookie>
  401792:	75 20                	jne    4017b4 <touch2+0x38>
  401794:	be 28 2f 40 00       	mov    $0x402f28,%esi
  401799:	bf 01 00 00 00       	mov    $0x1,%edi
  40179e:	b8 00 00 00 00       	mov    $0x0,%eax
  4017a3:	e8 78 f5 ff ff       	call   400d20 <__printf_chk@plt>
  4017a8:	bf 02 00 00 00       	mov    $0x2,%edi
  4017ad:	e8 57 04 00 00       	call   401c09 <validate>
  4017b2:	eb 1e                	jmp    4017d2 <touch2+0x56>
  4017b4:	be 50 2f 40 00       	mov    $0x402f50,%esi
  4017b9:	bf 01 00 00 00       	mov    $0x1,%edi
  4017be:	b8 00 00 00 00       	mov    $0x0,%eax
  4017c3:	e8 58 f5 ff ff       	call   400d20 <__printf_chk@plt>
  4017c8:	bf 02 00 00 00       	mov    $0x2,%edi
  4017cd:	e8 f9 04 00 00       	call   401ccb <fail>
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
  401839:	b9 23 2f 40 00       	mov    $0x402f23,%ecx
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
  401891:	c7 05 61 2c 20 00 03 	movl   $0x3,0x202c61(%rip)        # 6044fc <vlevel>
  401898:	00 00 00 
  40189b:	48 89 fe             	mov    %rdi,%rsi
  40189e:	8b 3d 60 2c 20 00    	mov    0x202c60(%rip),%edi        # 604504 <cookie>
  4018a4:	e8 33 ff ff ff       	call   4017dc <hexmatch>
  4018a9:	85 c0                	test   %eax,%eax
  4018ab:	74 23                	je     4018d0 <touch3+0x43>
  4018ad:	48 89 da             	mov    %rbx,%rdx
  4018b0:	be 78 2f 40 00       	mov    $0x402f78,%esi
  4018b5:	bf 01 00 00 00       	mov    $0x1,%edi
  4018ba:	b8 00 00 00 00       	mov    $0x0,%eax
  4018bf:	e8 5c f4 ff ff       	call   400d20 <__printf_chk@plt>
  4018c4:	bf 03 00 00 00       	mov    $0x3,%edi
  4018c9:	e8 3b 03 00 00       	call   401c09 <validate>
  4018ce:	eb 21                	jmp    4018f1 <touch3+0x64>
  4018d0:	48 89 da             	mov    %rbx,%rdx
  4018d3:	be a0 2f 40 00       	mov    $0x402fa0,%esi
  4018d8:	bf 01 00 00 00       	mov    $0x1,%edi
  4018dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4018e2:	e8 39 f4 ff ff       	call   400d20 <__printf_chk@plt>
  4018e7:	bf 03 00 00 00       	mov    $0x3,%edi
  4018ec:	e8 da 03 00 00       	call   401ccb <fail>
  4018f1:	bf 00 00 00 00       	mov    $0x0,%edi
  4018f6:	e8 65 f4 ff ff       	call   400d60 <exit@plt>

00000000004018fb <test>:
  4018fb:	48 83 ec 08          	sub    $0x8,%rsp
  4018ff:	b8 00 00 00 00       	mov    $0x0,%eax
  401904:	e8 31 fe ff ff       	call   40173a <getbuf>
  401909:	89 c2                	mov    %eax,%edx
  40190b:	be c8 2f 40 00       	mov    $0x402fc8,%esi
  401910:	bf 01 00 00 00       	mov    $0x1,%edi
  401915:	b8 00 00 00 00       	mov    $0x0,%eax
  40191a:	e8 01 f4 ff ff       	call   400d20 <__printf_chk@plt>
  40191f:	48 83 c4 08          	add    $0x8,%rsp
  401923:	c3                   	ret    

0000000000401924 <save_char>:
  401924:	8b 05 fa 37 20 00    	mov    0x2037fa(%rip),%eax        # 605124 <gets_cnt>
  40192a:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  40192f:	7f 49                	jg     40197a <save_char+0x56>
  401931:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401934:	89 f9                	mov    %edi,%ecx
  401936:	c0 e9 04             	shr    $0x4,%cl
  401939:	83 e1 0f             	and    $0xf,%ecx
  40193c:	0f b6 b1 f0 32 40 00 	movzbl 0x4032f0(%rcx),%esi
  401943:	48 63 ca             	movslq %edx,%rcx
  401946:	40 88 b1 20 45 60 00 	mov    %sil,0x604520(%rcx)
  40194d:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401950:	83 e7 0f             	and    $0xf,%edi
  401953:	0f b6 b7 f0 32 40 00 	movzbl 0x4032f0(%rdi),%esi
  40195a:	48 63 c9             	movslq %ecx,%rcx
  40195d:	40 88 b1 20 45 60 00 	mov    %sil,0x604520(%rcx)
  401964:	83 c2 02             	add    $0x2,%edx
  401967:	48 63 d2             	movslq %edx,%rdx
  40196a:	c6 82 20 45 60 00 20 	movb   $0x20,0x604520(%rdx)
  401971:	83 c0 01             	add    $0x1,%eax
  401974:	89 05 aa 37 20 00    	mov    %eax,0x2037aa(%rip)        # 605124 <gets_cnt>
  40197a:	f3 c3                	repz ret 

000000000040197c <save_term>:
  40197c:	8b 05 a2 37 20 00    	mov    0x2037a2(%rip),%eax        # 605124 <gets_cnt>
  401982:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401985:	48 98                	cltq   
  401987:	c6 80 20 45 60 00 00 	movb   $0x0,0x604520(%rax)
  40198e:	c3                   	ret    

000000000040198f <check_fail>:
  40198f:	48 83 ec 08          	sub    $0x8,%rsp
  401993:	0f be 15 8e 37 20 00 	movsbl 0x20378e(%rip),%edx        # 605128 <target_prefix>
  40199a:	41 b8 20 45 60 00    	mov    $0x604520,%r8d
  4019a0:	8b 0d 52 2b 20 00    	mov    0x202b52(%rip),%ecx        # 6044f8 <check_level>
  4019a6:	be eb 2f 40 00       	mov    $0x402feb,%esi
  4019ab:	bf 01 00 00 00       	mov    $0x1,%edi
  4019b0:	b8 00 00 00 00       	mov    $0x0,%eax
  4019b5:	e8 66 f3 ff ff       	call   400d20 <__printf_chk@plt>
  4019ba:	bf 01 00 00 00       	mov    $0x1,%edi
  4019bf:	e8 9c f3 ff ff       	call   400d60 <exit@plt>

00000000004019c4 <Gets>:
  4019c4:	41 54                	push   %r12
  4019c6:	55                   	push   %rbp
  4019c7:	53                   	push   %rbx
  4019c8:	49 89 fc             	mov    %rdi,%r12
  4019cb:	c7 05 4f 37 20 00 00 	movl   $0x0,0x20374f(%rip)        # 605124 <gets_cnt>
  4019d2:	00 00 00 
  4019d5:	48 89 fb             	mov    %rdi,%rbx
  4019d8:	eb 11                	jmp    4019eb <Gets+0x27>
  4019da:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  4019de:	88 03                	mov    %al,(%rbx)
  4019e0:	0f b6 f8             	movzbl %al,%edi
  4019e3:	e8 3c ff ff ff       	call   401924 <save_char>
  4019e8:	48 89 eb             	mov    %rbp,%rbx
  4019eb:	48 8b 3d fe 2a 20 00 	mov    0x202afe(%rip),%rdi        # 6044f0 <infile>
  4019f2:	e8 f9 f2 ff ff       	call   400cf0 <_IO_getc@plt>
  4019f7:	83 f8 ff             	cmp    $0xffffffff,%eax
  4019fa:	74 05                	je     401a01 <Gets+0x3d>
  4019fc:	83 f8 0a             	cmp    $0xa,%eax
  4019ff:	75 d9                	jne    4019da <Gets+0x16>
  401a01:	c6 03 00             	movb   $0x0,(%rbx)
  401a04:	b8 00 00 00 00       	mov    $0x0,%eax
  401a09:	e8 6e ff ff ff       	call   40197c <save_term>
  401a0e:	4c 89 e0             	mov    %r12,%rax
  401a11:	5b                   	pop    %rbx
  401a12:	5d                   	pop    %rbp
  401a13:	41 5c                	pop    %r12
  401a15:	c3                   	ret    

0000000000401a16 <notify_server>:
  401a16:	53                   	push   %rbx
  401a17:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
  401a1e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401a25:	00 00 
  401a27:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401a2e:	00 
  401a2f:	31 c0                	xor    %eax,%eax
  401a31:	83 3d d0 2a 20 00 00 	cmpl   $0x0,0x202ad0(%rip)        # 604508 <is_checker>
  401a38:	0f 85 aa 01 00 00    	jne    401be8 <notify_server+0x1d2>
  401a3e:	89 fb                	mov    %edi,%ebx
  401a40:	8b 05 de 36 20 00    	mov    0x2036de(%rip),%eax        # 605124 <gets_cnt>
  401a46:	83 c0 64             	add    $0x64,%eax
  401a49:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401a4e:	7e 1e                	jle    401a6e <notify_server+0x58>
  401a50:	be 20 31 40 00       	mov    $0x403120,%esi
  401a55:	bf 01 00 00 00       	mov    $0x1,%edi
  401a5a:	b8 00 00 00 00       	mov    $0x0,%eax
  401a5f:	e8 bc f2 ff ff       	call   400d20 <__printf_chk@plt>
  401a64:	bf 01 00 00 00       	mov    $0x1,%edi
  401a69:	e8 f2 f2 ff ff       	call   400d60 <exit@plt>
  401a6e:	0f be 05 b3 36 20 00 	movsbl 0x2036b3(%rip),%eax        # 605128 <target_prefix>
  401a75:	83 3d 0c 2a 20 00 00 	cmpl   $0x0,0x202a0c(%rip)        # 604488 <notify>
  401a7c:	74 08                	je     401a86 <notify_server+0x70>
  401a7e:	8b 15 7c 2a 20 00    	mov    0x202a7c(%rip),%edx        # 604500 <authkey>
  401a84:	eb 05                	jmp    401a8b <notify_server+0x75>
  401a86:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401a8b:	85 db                	test   %ebx,%ebx
  401a8d:	74 08                	je     401a97 <notify_server+0x81>
  401a8f:	41 b9 01 30 40 00    	mov    $0x403001,%r9d
  401a95:	eb 06                	jmp    401a9d <notify_server+0x87>
  401a97:	41 b9 06 30 40 00    	mov    $0x403006,%r9d
  401a9d:	68 20 45 60 00       	push   $0x604520
  401aa2:	56                   	push   %rsi
  401aa3:	50                   	push   %rax
  401aa4:	52                   	push   %rdx
  401aa5:	44 8b 05 9c 26 20 00 	mov    0x20269c(%rip),%r8d        # 604148 <target_id>
  401aac:	b9 0b 30 40 00       	mov    $0x40300b,%ecx
  401ab1:	ba 00 20 00 00       	mov    $0x2000,%edx
  401ab6:	be 01 00 00 00       	mov    $0x1,%esi
  401abb:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  401ac0:	b8 00 00 00 00       	mov    $0x0,%eax
  401ac5:	e8 c6 f2 ff ff       	call   400d90 <__sprintf_chk@plt>
  401aca:	48 83 c4 20          	add    $0x20,%rsp
  401ace:	83 3d b3 29 20 00 00 	cmpl   $0x0,0x2029b3(%rip)        # 604488 <notify>
  401ad5:	0f 84 81 00 00 00    	je     401b5c <notify_server+0x146>
  401adb:	85 db                	test   %ebx,%ebx
  401add:	74 6e                	je     401b4d <notify_server+0x137>
  401adf:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  401ae6:	00 
  401ae7:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401aed:	48 89 e1             	mov    %rsp,%rcx
  401af0:	48 8b 15 59 26 20 00 	mov    0x202659(%rip),%rdx        # 604150 <lab>
  401af7:	48 8b 35 5a 26 20 00 	mov    0x20265a(%rip),%rsi        # 604158 <course>
  401afe:	48 8b 3d 3b 26 20 00 	mov    0x20263b(%rip),%rdi        # 604140 <user_id>
  401b05:	e8 d3 0f 00 00       	call   402add <driver_post>
  401b0a:	85 c0                	test   %eax,%eax
  401b0c:	79 26                	jns    401b34 <notify_server+0x11e>
  401b0e:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  401b15:	00 
  401b16:	be 27 30 40 00       	mov    $0x403027,%esi
  401b1b:	bf 01 00 00 00       	mov    $0x1,%edi
  401b20:	b8 00 00 00 00       	mov    $0x0,%eax
  401b25:	e8 f6 f1 ff ff       	call   400d20 <__printf_chk@plt>
  401b2a:	bf 01 00 00 00       	mov    $0x1,%edi
  401b2f:	e8 2c f2 ff ff       	call   400d60 <exit@plt>
  401b34:	bf 50 31 40 00       	mov    $0x403150,%edi
  401b39:	e8 c2 f0 ff ff       	call   400c00 <puts@plt>
  401b3e:	bf 33 30 40 00       	mov    $0x403033,%edi
  401b43:	e8 b8 f0 ff ff       	call   400c00 <puts@plt>
  401b48:	e9 9b 00 00 00       	jmp    401be8 <notify_server+0x1d2>
  401b4d:	bf 3d 30 40 00       	mov    $0x40303d,%edi
  401b52:	e8 a9 f0 ff ff       	call   400c00 <puts@plt>
  401b57:	e9 8c 00 00 00       	jmp    401be8 <notify_server+0x1d2>
  401b5c:	85 db                	test   %ebx,%ebx
  401b5e:	74 07                	je     401b67 <notify_server+0x151>
  401b60:	ba 01 30 40 00       	mov    $0x403001,%edx
  401b65:	eb 05                	jmp    401b6c <notify_server+0x156>
  401b67:	ba 06 30 40 00       	mov    $0x403006,%edx
  401b6c:	be 88 31 40 00       	mov    $0x403188,%esi
  401b71:	bf 01 00 00 00       	mov    $0x1,%edi
  401b76:	b8 00 00 00 00       	mov    $0x0,%eax
  401b7b:	e8 a0 f1 ff ff       	call   400d20 <__printf_chk@plt>
  401b80:	48 8b 15 b9 25 20 00 	mov    0x2025b9(%rip),%rdx        # 604140 <user_id>
  401b87:	be 44 30 40 00       	mov    $0x403044,%esi
  401b8c:	bf 01 00 00 00       	mov    $0x1,%edi
  401b91:	b8 00 00 00 00       	mov    $0x0,%eax
  401b96:	e8 85 f1 ff ff       	call   400d20 <__printf_chk@plt>
  401b9b:	48 8b 15 b6 25 20 00 	mov    0x2025b6(%rip),%rdx        # 604158 <course>
  401ba2:	be 51 30 40 00       	mov    $0x403051,%esi
  401ba7:	bf 01 00 00 00       	mov    $0x1,%edi
  401bac:	b8 00 00 00 00       	mov    $0x0,%eax
  401bb1:	e8 6a f1 ff ff       	call   400d20 <__printf_chk@plt>
  401bb6:	48 8b 15 93 25 20 00 	mov    0x202593(%rip),%rdx        # 604150 <lab>
  401bbd:	be 5d 30 40 00       	mov    $0x40305d,%esi
  401bc2:	bf 01 00 00 00       	mov    $0x1,%edi
  401bc7:	b8 00 00 00 00       	mov    $0x0,%eax
  401bcc:	e8 4f f1 ff ff       	call   400d20 <__printf_chk@plt>
  401bd1:	48 89 e2             	mov    %rsp,%rdx
  401bd4:	be 66 30 40 00       	mov    $0x403066,%esi
  401bd9:	bf 01 00 00 00       	mov    $0x1,%edi
  401bde:	b8 00 00 00 00       	mov    $0x0,%eax
  401be3:	e8 38 f1 ff ff       	call   400d20 <__printf_chk@plt>
  401be8:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  401bef:	00 
  401bf0:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401bf7:	00 00 
  401bf9:	74 05                	je     401c00 <notify_server+0x1ea>
  401bfb:	e8 20 f0 ff ff       	call   400c20 <__stack_chk_fail@plt>
  401c00:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
  401c07:	5b                   	pop    %rbx
  401c08:	c3                   	ret    

0000000000401c09 <validate>:
  401c09:	53                   	push   %rbx
  401c0a:	89 fb                	mov    %edi,%ebx
  401c0c:	83 3d f5 28 20 00 00 	cmpl   $0x0,0x2028f5(%rip)        # 604508 <is_checker>
  401c13:	74 6b                	je     401c80 <validate+0x77>
  401c15:	39 3d e1 28 20 00    	cmp    %edi,0x2028e1(%rip)        # 6044fc <vlevel>
  401c1b:	74 14                	je     401c31 <validate+0x28>
  401c1d:	bf 72 30 40 00       	mov    $0x403072,%edi
  401c22:	e8 d9 ef ff ff       	call   400c00 <puts@plt>
  401c27:	b8 00 00 00 00       	mov    $0x0,%eax
  401c2c:	e8 5e fd ff ff       	call   40198f <check_fail>
  401c31:	8b 15 c1 28 20 00    	mov    0x2028c1(%rip),%edx        # 6044f8 <check_level>
  401c37:	39 d7                	cmp    %edx,%edi
  401c39:	74 20                	je     401c5b <validate+0x52>
  401c3b:	89 f9                	mov    %edi,%ecx
  401c3d:	be b0 31 40 00       	mov    $0x4031b0,%esi
  401c42:	bf 01 00 00 00       	mov    $0x1,%edi
  401c47:	b8 00 00 00 00       	mov    $0x0,%eax
  401c4c:	e8 cf f0 ff ff       	call   400d20 <__printf_chk@plt>
  401c51:	b8 00 00 00 00       	mov    $0x0,%eax
  401c56:	e8 34 fd ff ff       	call   40198f <check_fail>
  401c5b:	0f be 15 c6 34 20 00 	movsbl 0x2034c6(%rip),%edx        # 605128 <target_prefix>
  401c62:	41 b8 20 45 60 00    	mov    $0x604520,%r8d
  401c68:	89 f9                	mov    %edi,%ecx
  401c6a:	be 90 30 40 00       	mov    $0x403090,%esi
  401c6f:	bf 01 00 00 00       	mov    $0x1,%edi
  401c74:	b8 00 00 00 00       	mov    $0x0,%eax
  401c79:	e8 a2 f0 ff ff       	call   400d20 <__printf_chk@plt>
  401c7e:	eb 49                	jmp    401cc9 <validate+0xc0>
  401c80:	3b 3d 76 28 20 00    	cmp    0x202876(%rip),%edi        # 6044fc <vlevel>
  401c86:	74 18                	je     401ca0 <validate+0x97>
  401c88:	bf 72 30 40 00       	mov    $0x403072,%edi
  401c8d:	e8 6e ef ff ff       	call   400c00 <puts@plt>
  401c92:	89 de                	mov    %ebx,%esi
  401c94:	bf 00 00 00 00       	mov    $0x0,%edi
  401c99:	e8 78 fd ff ff       	call   401a16 <notify_server>
  401c9e:	eb 29                	jmp    401cc9 <validate+0xc0>
  401ca0:	0f be 0d 81 34 20 00 	movsbl 0x203481(%rip),%ecx        # 605128 <target_prefix>
  401ca7:	89 fa                	mov    %edi,%edx
  401ca9:	be d8 31 40 00       	mov    $0x4031d8,%esi
  401cae:	bf 01 00 00 00       	mov    $0x1,%edi
  401cb3:	b8 00 00 00 00       	mov    $0x0,%eax
  401cb8:	e8 63 f0 ff ff       	call   400d20 <__printf_chk@plt>
  401cbd:	89 de                	mov    %ebx,%esi
  401cbf:	bf 01 00 00 00       	mov    $0x1,%edi
  401cc4:	e8 4d fd ff ff       	call   401a16 <notify_server>
  401cc9:	5b                   	pop    %rbx
  401cca:	c3                   	ret    

0000000000401ccb <fail>:
  401ccb:	48 83 ec 08          	sub    $0x8,%rsp
  401ccf:	83 3d 32 28 20 00 00 	cmpl   $0x0,0x202832(%rip)        # 604508 <is_checker>
  401cd6:	74 0a                	je     401ce2 <fail+0x17>
  401cd8:	b8 00 00 00 00       	mov    $0x0,%eax
  401cdd:	e8 ad fc ff ff       	call   40198f <check_fail>
  401ce2:	89 fe                	mov    %edi,%esi
  401ce4:	bf 00 00 00 00       	mov    $0x0,%edi
  401ce9:	e8 28 fd ff ff       	call   401a16 <notify_server>
  401cee:	48 83 c4 08          	add    $0x8,%rsp
  401cf2:	c3                   	ret    

0000000000401cf3 <bushandler>:
  401cf3:	48 83 ec 08          	sub    $0x8,%rsp
  401cf7:	83 3d 0a 28 20 00 00 	cmpl   $0x0,0x20280a(%rip)        # 604508 <is_checker>
  401cfe:	74 14                	je     401d14 <bushandler+0x21>
  401d00:	bf a5 30 40 00       	mov    $0x4030a5,%edi
  401d05:	e8 f6 ee ff ff       	call   400c00 <puts@plt>
  401d0a:	b8 00 00 00 00       	mov    $0x0,%eax
  401d0f:	e8 7b fc ff ff       	call   40198f <check_fail>
  401d14:	bf 10 32 40 00       	mov    $0x403210,%edi
  401d19:	e8 e2 ee ff ff       	call   400c00 <puts@plt>
  401d1e:	bf af 30 40 00       	mov    $0x4030af,%edi
  401d23:	e8 d8 ee ff ff       	call   400c00 <puts@plt>
  401d28:	be 00 00 00 00       	mov    $0x0,%esi
  401d2d:	bf 00 00 00 00       	mov    $0x0,%edi
  401d32:	e8 df fc ff ff       	call   401a16 <notify_server>
  401d37:	bf 01 00 00 00       	mov    $0x1,%edi
  401d3c:	e8 1f f0 ff ff       	call   400d60 <exit@plt>

0000000000401d41 <seghandler>:
  401d41:	48 83 ec 08          	sub    $0x8,%rsp
  401d45:	83 3d bc 27 20 00 00 	cmpl   $0x0,0x2027bc(%rip)        # 604508 <is_checker>
  401d4c:	74 14                	je     401d62 <seghandler+0x21>
  401d4e:	bf c5 30 40 00       	mov    $0x4030c5,%edi
  401d53:	e8 a8 ee ff ff       	call   400c00 <puts@plt>
  401d58:	b8 00 00 00 00       	mov    $0x0,%eax
  401d5d:	e8 2d fc ff ff       	call   40198f <check_fail>
  401d62:	bf 30 32 40 00       	mov    $0x403230,%edi
  401d67:	e8 94 ee ff ff       	call   400c00 <puts@plt>
  401d6c:	bf af 30 40 00       	mov    $0x4030af,%edi
  401d71:	e8 8a ee ff ff       	call   400c00 <puts@plt>
  401d76:	be 00 00 00 00       	mov    $0x0,%esi
  401d7b:	bf 00 00 00 00       	mov    $0x0,%edi
  401d80:	e8 91 fc ff ff       	call   401a16 <notify_server>
  401d85:	bf 01 00 00 00       	mov    $0x1,%edi
  401d8a:	e8 d1 ef ff ff       	call   400d60 <exit@plt>

0000000000401d8f <illegalhandler>:
  401d8f:	48 83 ec 08          	sub    $0x8,%rsp
  401d93:	83 3d 6e 27 20 00 00 	cmpl   $0x0,0x20276e(%rip)        # 604508 <is_checker>
  401d9a:	74 14                	je     401db0 <illegalhandler+0x21>
  401d9c:	bf d8 30 40 00       	mov    $0x4030d8,%edi
  401da1:	e8 5a ee ff ff       	call   400c00 <puts@plt>
  401da6:	b8 00 00 00 00       	mov    $0x0,%eax
  401dab:	e8 df fb ff ff       	call   40198f <check_fail>
  401db0:	bf 58 32 40 00       	mov    $0x403258,%edi
  401db5:	e8 46 ee ff ff       	call   400c00 <puts@plt>
  401dba:	bf af 30 40 00       	mov    $0x4030af,%edi
  401dbf:	e8 3c ee ff ff       	call   400c00 <puts@plt>
  401dc4:	be 00 00 00 00       	mov    $0x0,%esi
  401dc9:	bf 00 00 00 00       	mov    $0x0,%edi
  401dce:	e8 43 fc ff ff       	call   401a16 <notify_server>
  401dd3:	bf 01 00 00 00       	mov    $0x1,%edi
  401dd8:	e8 83 ef ff ff       	call   400d60 <exit@plt>

0000000000401ddd <sigalrmhandler>:
  401ddd:	48 83 ec 08          	sub    $0x8,%rsp
  401de1:	83 3d 20 27 20 00 00 	cmpl   $0x0,0x202720(%rip)        # 604508 <is_checker>
  401de8:	74 14                	je     401dfe <sigalrmhandler+0x21>
  401dea:	bf ec 30 40 00       	mov    $0x4030ec,%edi
  401def:	e8 0c ee ff ff       	call   400c00 <puts@plt>
  401df4:	b8 00 00 00 00       	mov    $0x0,%eax
  401df9:	e8 91 fb ff ff       	call   40198f <check_fail>
  401dfe:	ba 05 00 00 00       	mov    $0x5,%edx
  401e03:	be 88 32 40 00       	mov    $0x403288,%esi
  401e08:	bf 01 00 00 00       	mov    $0x1,%edi
  401e0d:	b8 00 00 00 00       	mov    $0x0,%eax
  401e12:	e8 09 ef ff ff       	call   400d20 <__printf_chk@plt>
  401e17:	be 00 00 00 00       	mov    $0x0,%esi
  401e1c:	bf 00 00 00 00       	mov    $0x0,%edi
  401e21:	e8 f0 fb ff ff       	call   401a16 <notify_server>
  401e26:	bf 01 00 00 00       	mov    $0x1,%edi
  401e2b:	e8 30 ef ff ff       	call   400d60 <exit@plt>

0000000000401e30 <launch>:
  401e30:	55                   	push   %rbp
  401e31:	48 89 e5             	mov    %rsp,%rbp
  401e34:	48 83 ec 10          	sub    $0x10,%rsp
  401e38:	48 89 fa             	mov    %rdi,%rdx
  401e3b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401e42:	00 00 
  401e44:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401e48:	31 c0                	xor    %eax,%eax
  401e4a:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  401e4e:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401e52:	48 29 c4             	sub    %rax,%rsp
  401e55:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  401e5a:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  401e5e:	be f4 00 00 00       	mov    $0xf4,%esi
  401e63:	e8 d8 ed ff ff       	call   400c40 <memset@plt>
  401e68:	48 8b 05 31 26 20 00 	mov    0x202631(%rip),%rax        # 6044a0 <stdin@GLIBC_2.2.5>
  401e6f:	48 39 05 7a 26 20 00 	cmp    %rax,0x20267a(%rip)        # 6044f0 <infile>
  401e76:	75 14                	jne    401e8c <launch+0x5c>
  401e78:	be f4 30 40 00       	mov    $0x4030f4,%esi
  401e7d:	bf 01 00 00 00       	mov    $0x1,%edi
  401e82:	b8 00 00 00 00       	mov    $0x0,%eax
  401e87:	e8 94 ee ff ff       	call   400d20 <__printf_chk@plt>
  401e8c:	c7 05 66 26 20 00 00 	movl   $0x0,0x202666(%rip)        # 6044fc <vlevel>
  401e93:	00 00 00 
  401e96:	b8 00 00 00 00       	mov    $0x0,%eax
  401e9b:	e8 5b fa ff ff       	call   4018fb <test>
  401ea0:	83 3d 61 26 20 00 00 	cmpl   $0x0,0x202661(%rip)        # 604508 <is_checker>
  401ea7:	74 14                	je     401ebd <launch+0x8d>
  401ea9:	bf 01 31 40 00       	mov    $0x403101,%edi
  401eae:	e8 4d ed ff ff       	call   400c00 <puts@plt>
  401eb3:	b8 00 00 00 00       	mov    $0x0,%eax
  401eb8:	e8 d2 fa ff ff       	call   40198f <check_fail>
  401ebd:	bf 0c 31 40 00       	mov    $0x40310c,%edi
  401ec2:	e8 39 ed ff ff       	call   400c00 <puts@plt>
  401ec7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401ecb:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401ed2:	00 00 
  401ed4:	74 05                	je     401edb <launch+0xab>
  401ed6:	e8 45 ed ff ff       	call   400c20 <__stack_chk_fail@plt>
  401edb:	c9                   	leave  
  401edc:	c3                   	ret    

0000000000401edd <stable_launch>:
  401edd:	53                   	push   %rbx
  401ede:	48 89 3d 03 26 20 00 	mov    %rdi,0x202603(%rip)        # 6044e8 <global_offset>
  401ee5:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  401eeb:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401ef1:	b9 32 01 00 00       	mov    $0x132,%ecx
  401ef6:	ba 07 00 00 00       	mov    $0x7,%edx
  401efb:	be 00 00 10 00       	mov    $0x100000,%esi
  401f00:	bf 00 60 58 55       	mov    $0x55586000,%edi
  401f05:	e8 26 ed ff ff       	call   400c30 <mmap@plt>
  401f0a:	48 89 c3             	mov    %rax,%rbx
  401f0d:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  401f13:	74 37                	je     401f4c <stable_launch+0x6f>
  401f15:	be 00 00 10 00       	mov    $0x100000,%esi
  401f1a:	48 89 c7             	mov    %rax,%rdi
  401f1d:	e8 ee ed ff ff       	call   400d10 <munmap@plt>
  401f22:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  401f27:	ba c0 32 40 00       	mov    $0x4032c0,%edx
  401f2c:	be 01 00 00 00       	mov    $0x1,%esi
  401f31:	48 8b 3d 88 25 20 00 	mov    0x202588(%rip),%rdi        # 6044c0 <stderr@GLIBC_2.2.5>
  401f38:	b8 00 00 00 00       	mov    $0x0,%eax
  401f3d:	e8 3e ee ff ff       	call   400d80 <__fprintf_chk@plt>
  401f42:	bf 01 00 00 00       	mov    $0x1,%edi
  401f47:	e8 14 ee ff ff       	call   400d60 <exit@plt>
  401f4c:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  401f53:	48 89 15 d6 31 20 00 	mov    %rdx,0x2031d6(%rip)        # 605130 <stack_top>
  401f5a:	48 89 e0             	mov    %rsp,%rax
  401f5d:	48 89 d4             	mov    %rdx,%rsp
  401f60:	48 89 c2             	mov    %rax,%rdx
  401f63:	48 89 15 76 25 20 00 	mov    %rdx,0x202576(%rip)        # 6044e0 <global_save_stack>
  401f6a:	48 8b 3d 77 25 20 00 	mov    0x202577(%rip),%rdi        # 6044e8 <global_offset>
  401f71:	e8 ba fe ff ff       	call   401e30 <launch>
  401f76:	48 8b 05 63 25 20 00 	mov    0x202563(%rip),%rax        # 6044e0 <global_save_stack>
  401f7d:	48 89 c4             	mov    %rax,%rsp
  401f80:	be 00 00 10 00       	mov    $0x100000,%esi
  401f85:	48 89 df             	mov    %rbx,%rdi
  401f88:	e8 83 ed ff ff       	call   400d10 <munmap@plt>
  401f8d:	5b                   	pop    %rbx
  401f8e:	c3                   	ret    

0000000000401f8f <rio_readinitb>:
  401f8f:	89 37                	mov    %esi,(%rdi)
  401f91:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  401f98:	48 8d 47 10          	lea    0x10(%rdi),%rax
  401f9c:	48 89 47 08          	mov    %rax,0x8(%rdi)
  401fa0:	c3                   	ret    

0000000000401fa1 <sigalrm_handler>:
  401fa1:	48 83 ec 08          	sub    $0x8,%rsp
  401fa5:	b9 00 00 00 00       	mov    $0x0,%ecx
  401faa:	ba 00 33 40 00       	mov    $0x403300,%edx
  401faf:	be 01 00 00 00       	mov    $0x1,%esi
  401fb4:	48 8b 3d 05 25 20 00 	mov    0x202505(%rip),%rdi        # 6044c0 <stderr@GLIBC_2.2.5>
  401fbb:	b8 00 00 00 00       	mov    $0x0,%eax
  401fc0:	e8 bb ed ff ff       	call   400d80 <__fprintf_chk@plt>
  401fc5:	bf 01 00 00 00       	mov    $0x1,%edi
  401fca:	e8 91 ed ff ff       	call   400d60 <exit@plt>

0000000000401fcf <rio_writen>:
  401fcf:	41 55                	push   %r13
  401fd1:	41 54                	push   %r12
  401fd3:	55                   	push   %rbp
  401fd4:	53                   	push   %rbx
  401fd5:	48 83 ec 08          	sub    $0x8,%rsp
  401fd9:	41 89 fc             	mov    %edi,%r12d
  401fdc:	48 89 f5             	mov    %rsi,%rbp
  401fdf:	49 89 d5             	mov    %rdx,%r13
  401fe2:	48 89 d3             	mov    %rdx,%rbx
  401fe5:	eb 28                	jmp    40200f <rio_writen+0x40>
  401fe7:	48 89 da             	mov    %rbx,%rdx
  401fea:	48 89 ee             	mov    %rbp,%rsi
  401fed:	44 89 e7             	mov    %r12d,%edi
  401ff0:	e8 1b ec ff ff       	call   400c10 <write@plt>
  401ff5:	48 85 c0             	test   %rax,%rax
  401ff8:	7f 0f                	jg     402009 <rio_writen+0x3a>
  401ffa:	e8 c1 eb ff ff       	call   400bc0 <__errno_location@plt>
  401fff:	83 38 04             	cmpl   $0x4,(%rax)
  402002:	75 15                	jne    402019 <rio_writen+0x4a>
  402004:	b8 00 00 00 00       	mov    $0x0,%eax
  402009:	48 29 c3             	sub    %rax,%rbx
  40200c:	48 01 c5             	add    %rax,%rbp
  40200f:	48 85 db             	test   %rbx,%rbx
  402012:	75 d3                	jne    401fe7 <rio_writen+0x18>
  402014:	4c 89 e8             	mov    %r13,%rax
  402017:	eb 07                	jmp    402020 <rio_writen+0x51>
  402019:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402020:	48 83 c4 08          	add    $0x8,%rsp
  402024:	5b                   	pop    %rbx
  402025:	5d                   	pop    %rbp
  402026:	41 5c                	pop    %r12
  402028:	41 5d                	pop    %r13
  40202a:	c3                   	ret    

000000000040202b <rio_read>:
  40202b:	41 55                	push   %r13
  40202d:	41 54                	push   %r12
  40202f:	55                   	push   %rbp
  402030:	53                   	push   %rbx
  402031:	48 83 ec 08          	sub    $0x8,%rsp
  402035:	48 89 fb             	mov    %rdi,%rbx
  402038:	49 89 f5             	mov    %rsi,%r13
  40203b:	49 89 d4             	mov    %rdx,%r12
  40203e:	eb 2e                	jmp    40206e <rio_read+0x43>
  402040:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402044:	8b 3b                	mov    (%rbx),%edi
  402046:	ba 00 20 00 00       	mov    $0x2000,%edx
  40204b:	48 89 ee             	mov    %rbp,%rsi
  40204e:	e8 1d ec ff ff       	call   400c70 <read@plt>
  402053:	89 43 04             	mov    %eax,0x4(%rbx)
  402056:	85 c0                	test   %eax,%eax
  402058:	79 0c                	jns    402066 <rio_read+0x3b>
  40205a:	e8 61 eb ff ff       	call   400bc0 <__errno_location@plt>
  40205f:	83 38 04             	cmpl   $0x4,(%rax)
  402062:	74 0a                	je     40206e <rio_read+0x43>
  402064:	eb 37                	jmp    40209d <rio_read+0x72>
  402066:	85 c0                	test   %eax,%eax
  402068:	74 3c                	je     4020a6 <rio_read+0x7b>
  40206a:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  40206e:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402071:	85 ed                	test   %ebp,%ebp
  402073:	7e cb                	jle    402040 <rio_read+0x15>
  402075:	89 e8                	mov    %ebp,%eax
  402077:	49 39 c4             	cmp    %rax,%r12
  40207a:	77 03                	ja     40207f <rio_read+0x54>
  40207c:	44 89 e5             	mov    %r12d,%ebp
  40207f:	4c 63 e5             	movslq %ebp,%r12
  402082:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402086:	4c 89 e2             	mov    %r12,%rdx
  402089:	4c 89 ef             	mov    %r13,%rdi
  40208c:	e8 2f ec ff ff       	call   400cc0 <memcpy@plt>
  402091:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402095:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402098:	4c 89 e0             	mov    %r12,%rax
  40209b:	eb 0e                	jmp    4020ab <rio_read+0x80>
  40209d:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4020a4:	eb 05                	jmp    4020ab <rio_read+0x80>
  4020a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4020ab:	48 83 c4 08          	add    $0x8,%rsp
  4020af:	5b                   	pop    %rbx
  4020b0:	5d                   	pop    %rbp
  4020b1:	41 5c                	pop    %r12
  4020b3:	41 5d                	pop    %r13
  4020b5:	c3                   	ret    

00000000004020b6 <rio_readlineb>:
  4020b6:	41 55                	push   %r13
  4020b8:	41 54                	push   %r12
  4020ba:	55                   	push   %rbp
  4020bb:	53                   	push   %rbx
  4020bc:	48 83 ec 18          	sub    $0x18,%rsp
  4020c0:	49 89 fd             	mov    %rdi,%r13
  4020c3:	48 89 f5             	mov    %rsi,%rbp
  4020c6:	49 89 d4             	mov    %rdx,%r12
  4020c9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4020d0:	00 00 
  4020d2:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4020d7:	31 c0                	xor    %eax,%eax
  4020d9:	bb 01 00 00 00       	mov    $0x1,%ebx
  4020de:	eb 3f                	jmp    40211f <rio_readlineb+0x69>
  4020e0:	ba 01 00 00 00       	mov    $0x1,%edx
  4020e5:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  4020ea:	4c 89 ef             	mov    %r13,%rdi
  4020ed:	e8 39 ff ff ff       	call   40202b <rio_read>
  4020f2:	83 f8 01             	cmp    $0x1,%eax
  4020f5:	75 15                	jne    40210c <rio_readlineb+0x56>
  4020f7:	48 8d 45 01          	lea    0x1(%rbp),%rax
  4020fb:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  402100:	88 55 00             	mov    %dl,0x0(%rbp)
  402103:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  402108:	75 0e                	jne    402118 <rio_readlineb+0x62>
  40210a:	eb 1a                	jmp    402126 <rio_readlineb+0x70>
  40210c:	85 c0                	test   %eax,%eax
  40210e:	75 22                	jne    402132 <rio_readlineb+0x7c>
  402110:	48 83 fb 01          	cmp    $0x1,%rbx
  402114:	75 13                	jne    402129 <rio_readlineb+0x73>
  402116:	eb 23                	jmp    40213b <rio_readlineb+0x85>
  402118:	48 83 c3 01          	add    $0x1,%rbx
  40211c:	48 89 c5             	mov    %rax,%rbp
  40211f:	4c 39 e3             	cmp    %r12,%rbx
  402122:	72 bc                	jb     4020e0 <rio_readlineb+0x2a>
  402124:	eb 03                	jmp    402129 <rio_readlineb+0x73>
  402126:	48 89 c5             	mov    %rax,%rbp
  402129:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  40212d:	48 89 d8             	mov    %rbx,%rax
  402130:	eb 0e                	jmp    402140 <rio_readlineb+0x8a>
  402132:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402139:	eb 05                	jmp    402140 <rio_readlineb+0x8a>
  40213b:	b8 00 00 00 00       	mov    $0x0,%eax
  402140:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  402145:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  40214c:	00 00 
  40214e:	74 05                	je     402155 <rio_readlineb+0x9f>
  402150:	e8 cb ea ff ff       	call   400c20 <__stack_chk_fail@plt>
  402155:	48 83 c4 18          	add    $0x18,%rsp
  402159:	5b                   	pop    %rbx
  40215a:	5d                   	pop    %rbp
  40215b:	41 5c                	pop    %r12
  40215d:	41 5d                	pop    %r13
  40215f:	c3                   	ret    

0000000000402160 <urlencode>:
  402160:	41 54                	push   %r12
  402162:	55                   	push   %rbp
  402163:	53                   	push   %rbx
  402164:	48 83 ec 10          	sub    $0x10,%rsp
  402168:	48 89 fb             	mov    %rdi,%rbx
  40216b:	48 89 f5             	mov    %rsi,%rbp
  40216e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402175:	00 00 
  402177:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40217c:	31 c0                	xor    %eax,%eax
  40217e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402185:	f2 ae                	repnz scas %es:(%rdi),%al
  402187:	48 f7 d1             	not    %rcx
  40218a:	8d 41 ff             	lea    -0x1(%rcx),%eax
  40218d:	e9 aa 00 00 00       	jmp    40223c <urlencode+0xdc>
  402192:	44 0f b6 03          	movzbl (%rbx),%r8d
  402196:	41 80 f8 2a          	cmp    $0x2a,%r8b
  40219a:	0f 94 c2             	sete   %dl
  40219d:	41 80 f8 2d          	cmp    $0x2d,%r8b
  4021a1:	0f 94 c0             	sete   %al
  4021a4:	08 c2                	or     %al,%dl
  4021a6:	75 24                	jne    4021cc <urlencode+0x6c>
  4021a8:	41 80 f8 2e          	cmp    $0x2e,%r8b
  4021ac:	74 1e                	je     4021cc <urlencode+0x6c>
  4021ae:	41 80 f8 5f          	cmp    $0x5f,%r8b
  4021b2:	74 18                	je     4021cc <urlencode+0x6c>
  4021b4:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  4021b8:	3c 09                	cmp    $0x9,%al
  4021ba:	76 10                	jbe    4021cc <urlencode+0x6c>
  4021bc:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  4021c0:	3c 19                	cmp    $0x19,%al
  4021c2:	76 08                	jbe    4021cc <urlencode+0x6c>
  4021c4:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  4021c8:	3c 19                	cmp    $0x19,%al
  4021ca:	77 0a                	ja     4021d6 <urlencode+0x76>
  4021cc:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  4021d0:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4021d4:	eb 5f                	jmp    402235 <urlencode+0xd5>
  4021d6:	41 80 f8 20          	cmp    $0x20,%r8b
  4021da:	75 0a                	jne    4021e6 <urlencode+0x86>
  4021dc:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  4021e0:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4021e4:	eb 4f                	jmp    402235 <urlencode+0xd5>
  4021e6:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  4021ea:	3c 5f                	cmp    $0x5f,%al
  4021ec:	0f 96 c2             	setbe  %dl
  4021ef:	41 80 f8 09          	cmp    $0x9,%r8b
  4021f3:	0f 94 c0             	sete   %al
  4021f6:	08 c2                	or     %al,%dl
  4021f8:	74 50                	je     40224a <urlencode+0xea>
  4021fa:	45 0f b6 c0          	movzbl %r8b,%r8d
  4021fe:	b9 98 33 40 00       	mov    $0x403398,%ecx
  402203:	ba 08 00 00 00       	mov    $0x8,%edx
  402208:	be 01 00 00 00       	mov    $0x1,%esi
  40220d:	48 89 e7             	mov    %rsp,%rdi
  402210:	b8 00 00 00 00       	mov    $0x0,%eax
  402215:	e8 76 eb ff ff       	call   400d90 <__sprintf_chk@plt>
  40221a:	0f b6 04 24          	movzbl (%rsp),%eax
  40221e:	88 45 00             	mov    %al,0x0(%rbp)
  402221:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402226:	88 45 01             	mov    %al,0x1(%rbp)
  402229:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  40222e:	88 45 02             	mov    %al,0x2(%rbp)
  402231:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402235:	48 83 c3 01          	add    $0x1,%rbx
  402239:	44 89 e0             	mov    %r12d,%eax
  40223c:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402240:	85 c0                	test   %eax,%eax
  402242:	0f 85 4a ff ff ff    	jne    402192 <urlencode+0x32>
  402248:	eb 05                	jmp    40224f <urlencode+0xef>
  40224a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40224f:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402254:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  40225b:	00 00 
  40225d:	74 05                	je     402264 <urlencode+0x104>
  40225f:	e8 bc e9 ff ff       	call   400c20 <__stack_chk_fail@plt>
  402264:	48 83 c4 10          	add    $0x10,%rsp
  402268:	5b                   	pop    %rbx
  402269:	5d                   	pop    %rbp
  40226a:	41 5c                	pop    %r12
  40226c:	c3                   	ret    

000000000040226d <submitr>:
  40226d:	41 57                	push   %r15
  40226f:	41 56                	push   %r14
  402271:	41 55                	push   %r13
  402273:	41 54                	push   %r12
  402275:	55                   	push   %rbp
  402276:	53                   	push   %rbx
  402277:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  40227e:	49 89 ff             	mov    %rdi,%r15
  402281:	89 74 24 04          	mov    %esi,0x4(%rsp)
  402285:	49 89 d6             	mov    %rdx,%r14
  402288:	49 89 cd             	mov    %rcx,%r13
  40228b:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
  402290:	4d 89 cc             	mov    %r9,%r12
  402293:	48 8b 9c 24 90 a0 00 	mov    0xa090(%rsp),%rbx
  40229a:	00 
  40229b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4022a2:	00 00 
  4022a4:	48 89 84 24 48 a0 00 	mov    %rax,0xa048(%rsp)
  4022ab:	00 
  4022ac:	31 c0                	xor    %eax,%eax
  4022ae:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%rsp)
  4022b5:	00 
  4022b6:	ba 00 00 00 00       	mov    $0x0,%edx
  4022bb:	be 01 00 00 00       	mov    $0x1,%esi
  4022c0:	bf 02 00 00 00       	mov    $0x2,%edi
  4022c5:	e8 d6 ea ff ff       	call   400da0 <socket@plt>
  4022ca:	85 c0                	test   %eax,%eax
  4022cc:	79 4e                	jns    40231c <submitr+0xaf>
  4022ce:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4022d5:	3a 20 43 
  4022d8:	48 89 03             	mov    %rax,(%rbx)
  4022db:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4022e2:	20 75 6e 
  4022e5:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4022e9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4022f0:	74 6f 20 
  4022f3:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4022f7:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  4022fe:	65 20 73 
  402301:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402305:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  40230c:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  402312:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402317:	e9 0a 06 00 00       	jmp    402926 <submitr+0x6b9>
  40231c:	89 c5                	mov    %eax,%ebp
  40231e:	66 c7 44 24 20 02 00 	movw   $0x2,0x20(%rsp)
  402325:	bf f7 2e 40 00       	mov    $0x402ef7,%edi
  40232a:	b8 00 00 00 00       	mov    $0x0,%eax
  40232f:	e8 5c e9 ff ff       	call   400c90 <inet_addr@plt>
  402334:	89 44 24 24          	mov    %eax,0x24(%rsp)
  402338:	0f b7 44 24 04       	movzwl 0x4(%rsp),%eax
  40233d:	66 c1 c8 08          	ror    $0x8,%ax
  402341:	66 89 44 24 22       	mov    %ax,0x22(%rsp)
  402346:	ba 10 00 00 00       	mov    $0x10,%edx
  40234b:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  402350:	89 ef                	mov    %ebp,%edi
  402352:	e8 19 ea ff ff       	call   400d70 <connect@plt>
  402357:	85 c0                	test   %eax,%eax
  402359:	79 59                	jns    4023b4 <submitr+0x147>
  40235b:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402362:	3a 20 55 
  402365:	48 89 03             	mov    %rax,(%rbx)
  402368:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  40236f:	20 74 6f 
  402372:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402376:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40237d:	65 63 74 
  402380:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402384:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  40238b:	68 65 20 
  40238e:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402392:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  402399:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  40239f:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  4023a3:	89 ef                	mov    %ebp,%edi
  4023a5:	e8 b6 e8 ff ff       	call   400c60 <close@plt>
  4023aa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4023af:	e9 72 05 00 00       	jmp    402926 <submitr+0x6b9>
  4023b4:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  4023bb:	b8 00 00 00 00       	mov    $0x0,%eax
  4023c0:	48 89 f1             	mov    %rsi,%rcx
  4023c3:	4c 89 e7             	mov    %r12,%rdi
  4023c6:	f2 ae                	repnz scas %es:(%rdi),%al
  4023c8:	48 f7 d1             	not    %rcx
  4023cb:	48 89 ca             	mov    %rcx,%rdx
  4023ce:	48 89 f1             	mov    %rsi,%rcx
  4023d1:	4c 89 f7             	mov    %r14,%rdi
  4023d4:	f2 ae                	repnz scas %es:(%rdi),%al
  4023d6:	48 f7 d1             	not    %rcx
  4023d9:	49 89 c8             	mov    %rcx,%r8
  4023dc:	48 89 f1             	mov    %rsi,%rcx
  4023df:	4c 89 ef             	mov    %r13,%rdi
  4023e2:	f2 ae                	repnz scas %es:(%rdi),%al
  4023e4:	48 f7 d1             	not    %rcx
  4023e7:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  4023ec:	48 89 f1             	mov    %rsi,%rcx
  4023ef:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  4023f4:	f2 ae                	repnz scas %es:(%rdi),%al
  4023f6:	48 89 c8             	mov    %rcx,%rax
  4023f9:	48 f7 d0             	not    %rax
  4023fc:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402401:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402406:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  40240d:	00 
  40240e:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402414:	76 72                	jbe    402488 <submitr+0x21b>
  402416:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40241d:	3a 20 52 
  402420:	48 89 03             	mov    %rax,(%rbx)
  402423:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  40242a:	20 73 74 
  40242d:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402431:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402438:	74 6f 6f 
  40243b:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40243f:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  402446:	65 2e 20 
  402449:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40244d:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402454:	61 73 65 
  402457:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40245b:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  402462:	49 54 52 
  402465:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402469:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402470:	55 46 00 
  402473:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402477:	89 ef                	mov    %ebp,%edi
  402479:	e8 e2 e7 ff ff       	call   400c60 <close@plt>
  40247e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402483:	e9 9e 04 00 00       	jmp    402926 <submitr+0x6b9>
  402488:	48 8d b4 24 40 40 00 	lea    0x4040(%rsp),%rsi
  40248f:	00 
  402490:	b9 00 04 00 00       	mov    $0x400,%ecx
  402495:	b8 00 00 00 00       	mov    $0x0,%eax
  40249a:	48 89 f7             	mov    %rsi,%rdi
  40249d:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4024a0:	4c 89 e7             	mov    %r12,%rdi
  4024a3:	e8 b8 fc ff ff       	call   402160 <urlencode>
  4024a8:	85 c0                	test   %eax,%eax
  4024aa:	0f 89 8a 00 00 00    	jns    40253a <submitr+0x2cd>
  4024b0:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4024b7:	3a 20 52 
  4024ba:	48 89 03             	mov    %rax,(%rbx)
  4024bd:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4024c4:	20 73 74 
  4024c7:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4024cb:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  4024d2:	63 6f 6e 
  4024d5:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4024d9:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  4024e0:	20 61 6e 
  4024e3:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4024e7:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  4024ee:	67 61 6c 
  4024f1:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4024f5:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  4024fc:	6e 70 72 
  4024ff:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402503:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  40250a:	6c 65 20 
  40250d:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402511:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  402518:	63 74 65 
  40251b:	48 89 43 38          	mov    %rax,0x38(%rbx)
  40251f:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  402525:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  402529:	89 ef                	mov    %ebp,%edi
  40252b:	e8 30 e7 ff ff       	call   400c60 <close@plt>
  402530:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402535:	e9 ec 03 00 00       	jmp    402926 <submitr+0x6b9>
  40253a:	4c 8d a4 24 40 20 00 	lea    0x2040(%rsp),%r12
  402541:	00 
  402542:	41 57                	push   %r15
  402544:	48 8d 84 24 48 40 00 	lea    0x4048(%rsp),%rax
  40254b:	00 
  40254c:	50                   	push   %rax
  40254d:	4d 89 f1             	mov    %r14,%r9
  402550:	4d 89 e8             	mov    %r13,%r8
  402553:	b9 28 33 40 00       	mov    $0x403328,%ecx
  402558:	ba 00 20 00 00       	mov    $0x2000,%edx
  40255d:	be 01 00 00 00       	mov    $0x1,%esi
  402562:	4c 89 e7             	mov    %r12,%rdi
  402565:	b8 00 00 00 00       	mov    $0x0,%eax
  40256a:	e8 21 e8 ff ff       	call   400d90 <__sprintf_chk@plt>
  40256f:	b8 00 00 00 00       	mov    $0x0,%eax
  402574:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40257b:	4c 89 e7             	mov    %r12,%rdi
  40257e:	f2 ae                	repnz scas %es:(%rdi),%al
  402580:	48 f7 d1             	not    %rcx
  402583:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  402587:	4c 89 e6             	mov    %r12,%rsi
  40258a:	89 ef                	mov    %ebp,%edi
  40258c:	e8 3e fa ff ff       	call   401fcf <rio_writen>
  402591:	48 83 c4 10          	add    $0x10,%rsp
  402595:	48 85 c0             	test   %rax,%rax
  402598:	79 6e                	jns    402608 <submitr+0x39b>
  40259a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4025a1:	3a 20 43 
  4025a4:	48 89 03             	mov    %rax,(%rbx)
  4025a7:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4025ae:	20 75 6e 
  4025b1:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4025b5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4025bc:	74 6f 20 
  4025bf:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4025c3:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  4025ca:	20 74 6f 
  4025cd:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4025d1:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  4025d8:	72 65 73 
  4025db:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4025df:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  4025e6:	65 72 76 
  4025e9:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4025ed:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  4025f3:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  4025f7:	89 ef                	mov    %ebp,%edi
  4025f9:	e8 62 e6 ff ff       	call   400c60 <close@plt>
  4025fe:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402603:	e9 1e 03 00 00       	jmp    402926 <submitr+0x6b9>
  402608:	89 ee                	mov    %ebp,%esi
  40260a:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  40260f:	e8 7b f9 ff ff       	call   401f8f <rio_readinitb>
  402614:	ba 00 20 00 00       	mov    $0x2000,%edx
  402619:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402620:	00 
  402621:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402626:	e8 8b fa ff ff       	call   4020b6 <rio_readlineb>
  40262b:	48 85 c0             	test   %rax,%rax
  40262e:	7f 7d                	jg     4026ad <submitr+0x440>
  402630:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402637:	3a 20 43 
  40263a:	48 89 03             	mov    %rax,(%rbx)
  40263d:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402644:	20 75 6e 
  402647:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40264b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402652:	74 6f 20 
  402655:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402659:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  402660:	66 69 72 
  402663:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402667:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  40266e:	61 64 65 
  402671:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402675:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  40267c:	6d 20 72 
  40267f:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402683:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  40268a:	20 73 65 
  40268d:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402691:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  402698:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  40269c:	89 ef                	mov    %ebp,%edi
  40269e:	e8 bd e5 ff ff       	call   400c60 <close@plt>
  4026a3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4026a8:	e9 79 02 00 00       	jmp    402926 <submitr+0x6b9>
  4026ad:	4c 8d 84 24 40 80 00 	lea    0x8040(%rsp),%r8
  4026b4:	00 
  4026b5:	48 8d 4c 24 1c       	lea    0x1c(%rsp),%rcx
  4026ba:	48 8d 94 24 40 60 00 	lea    0x6040(%rsp),%rdx
  4026c1:	00 
  4026c2:	be 9f 33 40 00       	mov    $0x40339f,%esi
  4026c7:	48 8d bc 24 40 20 00 	lea    0x2040(%rsp),%rdi
  4026ce:	00 
  4026cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4026d4:	e8 27 e6 ff ff       	call   400d00 <__isoc99_sscanf@plt>
  4026d9:	e9 95 00 00 00       	jmp    402773 <submitr+0x506>
  4026de:	ba 00 20 00 00       	mov    $0x2000,%edx
  4026e3:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  4026ea:	00 
  4026eb:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4026f0:	e8 c1 f9 ff ff       	call   4020b6 <rio_readlineb>
  4026f5:	48 85 c0             	test   %rax,%rax
  4026f8:	7f 79                	jg     402773 <submitr+0x506>
  4026fa:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402701:	3a 20 43 
  402704:	48 89 03             	mov    %rax,(%rbx)
  402707:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40270e:	20 75 6e 
  402711:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402715:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40271c:	74 6f 20 
  40271f:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402723:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  40272a:	68 65 61 
  40272d:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402731:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402738:	66 72 6f 
  40273b:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40273f:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  402746:	20 72 65 
  402749:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40274d:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  402754:	73 65 72 
  402757:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40275b:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  402762:	89 ef                	mov    %ebp,%edi
  402764:	e8 f7 e4 ff ff       	call   400c60 <close@plt>
  402769:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40276e:	e9 b3 01 00 00       	jmp    402926 <submitr+0x6b9>
  402773:	0f b6 94 24 40 20 00 	movzbl 0x2040(%rsp),%edx
  40277a:	00 
  40277b:	b8 0d 00 00 00       	mov    $0xd,%eax
  402780:	29 d0                	sub    %edx,%eax
  402782:	75 1b                	jne    40279f <submitr+0x532>
  402784:	0f b6 94 24 41 20 00 	movzbl 0x2041(%rsp),%edx
  40278b:	00 
  40278c:	b8 0a 00 00 00       	mov    $0xa,%eax
  402791:	29 d0                	sub    %edx,%eax
  402793:	75 0a                	jne    40279f <submitr+0x532>
  402795:	0f b6 84 24 42 20 00 	movzbl 0x2042(%rsp),%eax
  40279c:	00 
  40279d:	f7 d8                	neg    %eax
  40279f:	85 c0                	test   %eax,%eax
  4027a1:	0f 85 37 ff ff ff    	jne    4026de <submitr+0x471>
  4027a7:	ba 00 20 00 00       	mov    $0x2000,%edx
  4027ac:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  4027b3:	00 
  4027b4:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4027b9:	e8 f8 f8 ff ff       	call   4020b6 <rio_readlineb>
  4027be:	48 85 c0             	test   %rax,%rax
  4027c1:	0f 8f 83 00 00 00    	jg     40284a <submitr+0x5dd>
  4027c7:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4027ce:	3a 20 43 
  4027d1:	48 89 03             	mov    %rax,(%rbx)
  4027d4:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4027db:	20 75 6e 
  4027de:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4027e2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4027e9:	74 6f 20 
  4027ec:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4027f0:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  4027f7:	73 74 61 
  4027fa:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4027fe:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402805:	65 73 73 
  402808:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40280c:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402813:	72 6f 6d 
  402816:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40281a:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402821:	6c 74 20 
  402824:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402828:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  40282f:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  402835:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  402839:	89 ef                	mov    %ebp,%edi
  40283b:	e8 20 e4 ff ff       	call   400c60 <close@plt>
  402840:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402845:	e9 dc 00 00 00       	jmp    402926 <submitr+0x6b9>
  40284a:	44 8b 44 24 1c       	mov    0x1c(%rsp),%r8d
  40284f:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402856:	74 37                	je     40288f <submitr+0x622>
  402858:	4c 8d 8c 24 40 80 00 	lea    0x8040(%rsp),%r9
  40285f:	00 
  402860:	b9 68 33 40 00       	mov    $0x403368,%ecx
  402865:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  40286c:	be 01 00 00 00       	mov    $0x1,%esi
  402871:	48 89 df             	mov    %rbx,%rdi
  402874:	b8 00 00 00 00       	mov    $0x0,%eax
  402879:	e8 12 e5 ff ff       	call   400d90 <__sprintf_chk@plt>
  40287e:	89 ef                	mov    %ebp,%edi
  402880:	e8 db e3 ff ff       	call   400c60 <close@plt>
  402885:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40288a:	e9 97 00 00 00       	jmp    402926 <submitr+0x6b9>
  40288f:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402896:	00 
  402897:	48 89 df             	mov    %rbx,%rdi
  40289a:	e8 51 e3 ff ff       	call   400bf0 <strcpy@plt>
  40289f:	89 ef                	mov    %ebp,%edi
  4028a1:	e8 ba e3 ff ff       	call   400c60 <close@plt>
  4028a6:	0f b6 03             	movzbl (%rbx),%eax
  4028a9:	ba 4f 00 00 00       	mov    $0x4f,%edx
  4028ae:	29 c2                	sub    %eax,%edx
  4028b0:	75 22                	jne    4028d4 <submitr+0x667>
  4028b2:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  4028b6:	b8 4b 00 00 00       	mov    $0x4b,%eax
  4028bb:	29 c8                	sub    %ecx,%eax
  4028bd:	75 17                	jne    4028d6 <submitr+0x669>
  4028bf:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  4028c3:	b8 0a 00 00 00       	mov    $0xa,%eax
  4028c8:	29 c8                	sub    %ecx,%eax
  4028ca:	75 0a                	jne    4028d6 <submitr+0x669>
  4028cc:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  4028d0:	f7 d8                	neg    %eax
  4028d2:	eb 02                	jmp    4028d6 <submitr+0x669>
  4028d4:	89 d0                	mov    %edx,%eax
  4028d6:	85 c0                	test   %eax,%eax
  4028d8:	74 40                	je     40291a <submitr+0x6ad>
  4028da:	bf b0 33 40 00       	mov    $0x4033b0,%edi
  4028df:	b9 05 00 00 00       	mov    $0x5,%ecx
  4028e4:	48 89 de             	mov    %rbx,%rsi
  4028e7:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4028e9:	0f 97 c0             	seta   %al
  4028ec:	0f 92 c1             	setb   %cl
  4028ef:	29 c8                	sub    %ecx,%eax
  4028f1:	0f be c0             	movsbl %al,%eax
  4028f4:	85 c0                	test   %eax,%eax
  4028f6:	74 2e                	je     402926 <submitr+0x6b9>
  4028f8:	85 d2                	test   %edx,%edx
  4028fa:	75 13                	jne    40290f <submitr+0x6a2>
  4028fc:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  402900:	ba 4b 00 00 00       	mov    $0x4b,%edx
  402905:	29 c2                	sub    %eax,%edx
  402907:	75 06                	jne    40290f <submitr+0x6a2>
  402909:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  40290d:	f7 da                	neg    %edx
  40290f:	85 d2                	test   %edx,%edx
  402911:	75 0e                	jne    402921 <submitr+0x6b4>
  402913:	b8 00 00 00 00       	mov    $0x0,%eax
  402918:	eb 0c                	jmp    402926 <submitr+0x6b9>
  40291a:	b8 00 00 00 00       	mov    $0x0,%eax
  40291f:	eb 05                	jmp    402926 <submitr+0x6b9>
  402921:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402926:	48 8b 9c 24 48 a0 00 	mov    0xa048(%rsp),%rbx
  40292d:	00 
  40292e:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402935:	00 00 
  402937:	74 05                	je     40293e <submitr+0x6d1>
  402939:	e8 e2 e2 ff ff       	call   400c20 <__stack_chk_fail@plt>
  40293e:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  402945:	5b                   	pop    %rbx
  402946:	5d                   	pop    %rbp
  402947:	41 5c                	pop    %r12
  402949:	41 5d                	pop    %r13
  40294b:	41 5e                	pop    %r14
  40294d:	41 5f                	pop    %r15
  40294f:	c3                   	ret    

0000000000402950 <init_timeout>:
  402950:	85 ff                	test   %edi,%edi
  402952:	74 23                	je     402977 <init_timeout+0x27>
  402954:	53                   	push   %rbx
  402955:	89 fb                	mov    %edi,%ebx
  402957:	85 ff                	test   %edi,%edi
  402959:	79 05                	jns    402960 <init_timeout+0x10>
  40295b:	bb 00 00 00 00       	mov    $0x0,%ebx
  402960:	be a1 1f 40 00       	mov    $0x401fa1,%esi
  402965:	bf 0e 00 00 00       	mov    $0xe,%edi
  40296a:	e8 31 e3 ff ff       	call   400ca0 <signal@plt>
  40296f:	89 df                	mov    %ebx,%edi
  402971:	e8 da e2 ff ff       	call   400c50 <alarm@plt>
  402976:	5b                   	pop    %rbx
  402977:	f3 c3                	repz ret 

0000000000402979 <init_driver>:
  402979:	55                   	push   %rbp
  40297a:	53                   	push   %rbx
  40297b:	48 83 ec 28          	sub    $0x28,%rsp
  40297f:	48 89 fd             	mov    %rdi,%rbp
  402982:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402989:	00 00 
  40298b:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402990:	31 c0                	xor    %eax,%eax
  402992:	be 01 00 00 00       	mov    $0x1,%esi
  402997:	bf 0d 00 00 00       	mov    $0xd,%edi
  40299c:	e8 ff e2 ff ff       	call   400ca0 <signal@plt>
  4029a1:	be 01 00 00 00       	mov    $0x1,%esi
  4029a6:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4029ab:	e8 f0 e2 ff ff       	call   400ca0 <signal@plt>
  4029b0:	be 01 00 00 00       	mov    $0x1,%esi
  4029b5:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4029ba:	e8 e1 e2 ff ff       	call   400ca0 <signal@plt>
  4029bf:	ba 00 00 00 00       	mov    $0x0,%edx
  4029c4:	be 01 00 00 00       	mov    $0x1,%esi
  4029c9:	bf 02 00 00 00       	mov    $0x2,%edi
  4029ce:	e8 cd e3 ff ff       	call   400da0 <socket@plt>
  4029d3:	85 c0                	test   %eax,%eax
  4029d5:	79 4f                	jns    402a26 <init_driver+0xad>
  4029d7:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4029de:	3a 20 43 
  4029e1:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4029e5:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4029ec:	20 75 6e 
  4029ef:	48 89 45 08          	mov    %rax,0x8(%rbp)
  4029f3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4029fa:	74 6f 20 
  4029fd:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a01:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402a08:	65 20 73 
  402a0b:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402a0f:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402a16:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402a1c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a21:	e9 9b 00 00 00       	jmp    402ac1 <init_driver+0x148>
  402a26:	89 c3                	mov    %eax,%ebx
  402a28:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402a2e:	bf f7 2e 40 00       	mov    $0x402ef7,%edi
  402a33:	b8 00 00 00 00       	mov    $0x0,%eax
  402a38:	e8 53 e2 ff ff       	call   400c90 <inet_addr@plt>
  402a3d:	89 44 24 04          	mov    %eax,0x4(%rsp)
  402a41:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  402a48:	ba 10 00 00 00       	mov    $0x10,%edx
  402a4d:	48 89 e6             	mov    %rsp,%rsi
  402a50:	89 df                	mov    %ebx,%edi
  402a52:	e8 19 e3 ff ff       	call   400d70 <connect@plt>
  402a57:	85 c0                	test   %eax,%eax
  402a59:	79 50                	jns    402aab <init_driver+0x132>
  402a5b:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402a62:	3a 20 55 
  402a65:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a69:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402a70:	20 74 6f 
  402a73:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402a77:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402a7e:	65 63 74 
  402a81:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a85:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402a8c:	65 72 76 
  402a8f:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402a93:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402a99:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402a9d:	89 df                	mov    %ebx,%edi
  402a9f:	e8 bc e1 ff ff       	call   400c60 <close@plt>
  402aa4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402aa9:	eb 16                	jmp    402ac1 <init_driver+0x148>
  402aab:	89 df                	mov    %ebx,%edi
  402aad:	e8 ae e1 ff ff       	call   400c60 <close@plt>
  402ab2:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402ab8:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402abc:	b8 00 00 00 00       	mov    $0x0,%eax
  402ac1:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402ac6:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402acd:	00 00 
  402acf:	74 05                	je     402ad6 <init_driver+0x15d>
  402ad1:	e8 4a e1 ff ff       	call   400c20 <__stack_chk_fail@plt>
  402ad6:	48 83 c4 28          	add    $0x28,%rsp
  402ada:	5b                   	pop    %rbx
  402adb:	5d                   	pop    %rbp
  402adc:	c3                   	ret    

0000000000402add <driver_post>:
  402add:	53                   	push   %rbx
  402ade:	4c 89 cb             	mov    %r9,%rbx
  402ae1:	45 85 c0             	test   %r8d,%r8d
  402ae4:	74 27                	je     402b0d <driver_post+0x30>
  402ae6:	48 89 ca             	mov    %rcx,%rdx
  402ae9:	be b5 33 40 00       	mov    $0x4033b5,%esi
  402aee:	bf 01 00 00 00       	mov    $0x1,%edi
  402af3:	b8 00 00 00 00       	mov    $0x0,%eax
  402af8:	e8 23 e2 ff ff       	call   400d20 <__printf_chk@plt>
  402afd:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402b02:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402b06:	b8 00 00 00 00       	mov    $0x0,%eax
  402b0b:	eb 3f                	jmp    402b4c <driver_post+0x6f>
  402b0d:	48 85 ff             	test   %rdi,%rdi
  402b10:	74 2c                	je     402b3e <driver_post+0x61>
  402b12:	80 3f 00             	cmpb   $0x0,(%rdi)
  402b15:	74 27                	je     402b3e <driver_post+0x61>
  402b17:	48 83 ec 08          	sub    $0x8,%rsp
  402b1b:	41 51                	push   %r9
  402b1d:	49 89 c9             	mov    %rcx,%r9
  402b20:	49 89 d0             	mov    %rdx,%r8
  402b23:	48 89 f9             	mov    %rdi,%rcx
  402b26:	48 89 f2             	mov    %rsi,%rdx
  402b29:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  402b2e:	bf f7 2e 40 00       	mov    $0x402ef7,%edi
  402b33:	e8 35 f7 ff ff       	call   40226d <submitr>
  402b38:	48 83 c4 10          	add    $0x10,%rsp
  402b3c:	eb 0e                	jmp    402b4c <driver_post+0x6f>
  402b3e:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402b43:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402b47:	b8 00 00 00 00       	mov    $0x0,%eax
  402b4c:	5b                   	pop    %rbx
  402b4d:	c3                   	ret    

0000000000402b4e <check>:
  402b4e:	89 f8                	mov    %edi,%eax
  402b50:	c1 e8 1c             	shr    $0x1c,%eax
  402b53:	85 c0                	test   %eax,%eax
  402b55:	74 1d                	je     402b74 <check+0x26>
  402b57:	b9 00 00 00 00       	mov    $0x0,%ecx
  402b5c:	eb 0b                	jmp    402b69 <check+0x1b>
  402b5e:	89 f8                	mov    %edi,%eax
  402b60:	d3 e8                	shr    %cl,%eax
  402b62:	3c 0a                	cmp    $0xa,%al
  402b64:	74 14                	je     402b7a <check+0x2c>
  402b66:	83 c1 08             	add    $0x8,%ecx
  402b69:	83 f9 1f             	cmp    $0x1f,%ecx
  402b6c:	7e f0                	jle    402b5e <check+0x10>
  402b6e:	b8 01 00 00 00       	mov    $0x1,%eax
  402b73:	c3                   	ret    
  402b74:	b8 00 00 00 00       	mov    $0x0,%eax
  402b79:	c3                   	ret    
  402b7a:	b8 00 00 00 00       	mov    $0x0,%eax
  402b7f:	c3                   	ret    

0000000000402b80 <gencookie>:
  402b80:	53                   	push   %rbx
  402b81:	83 c7 01             	add    $0x1,%edi
  402b84:	e8 47 e0 ff ff       	call   400bd0 <srandom@plt>
  402b89:	e8 52 e1 ff ff       	call   400ce0 <random@plt>
  402b8e:	89 c3                	mov    %eax,%ebx
  402b90:	89 c7                	mov    %eax,%edi
  402b92:	e8 b7 ff ff ff       	call   402b4e <check>
  402b97:	85 c0                	test   %eax,%eax
  402b99:	74 ee                	je     402b89 <gencookie+0x9>
  402b9b:	89 d8                	mov    %ebx,%eax
  402b9d:	5b                   	pop    %rbx
  402b9e:	c3                   	ret    
  402b9f:	90                   	nop

0000000000402ba0 <__libc_csu_init>:
  402ba0:	41 57                	push   %r15
  402ba2:	41 56                	push   %r14
  402ba4:	41 89 ff             	mov    %edi,%r15d
  402ba7:	41 55                	push   %r13
  402ba9:	41 54                	push   %r12
  402bab:	4c 8d 25 5e 12 20 00 	lea    0x20125e(%rip),%r12        # 603e10 <__frame_dummy_init_array_entry>
  402bb2:	55                   	push   %rbp
  402bb3:	48 8d 2d 5e 12 20 00 	lea    0x20125e(%rip),%rbp        # 603e18 <__do_global_dtors_aux_fini_array_entry>
  402bba:	53                   	push   %rbx
  402bbb:	49 89 f6             	mov    %rsi,%r14
  402bbe:	49 89 d5             	mov    %rdx,%r13
  402bc1:	4c 29 e5             	sub    %r12,%rbp
  402bc4:	48 83 ec 08          	sub    $0x8,%rsp
  402bc8:	48 c1 fd 03          	sar    $0x3,%rbp
  402bcc:	e8 b7 df ff ff       	call   400b88 <_init>
  402bd1:	48 85 ed             	test   %rbp,%rbp
  402bd4:	74 20                	je     402bf6 <__libc_csu_init+0x56>
  402bd6:	31 db                	xor    %ebx,%ebx
  402bd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402bdf:	00 
  402be0:	4c 89 ea             	mov    %r13,%rdx
  402be3:	4c 89 f6             	mov    %r14,%rsi
  402be6:	44 89 ff             	mov    %r15d,%edi
  402be9:	41 ff 14 dc          	call   *(%r12,%rbx,8)
  402bed:	48 83 c3 01          	add    $0x1,%rbx
  402bf1:	48 39 eb             	cmp    %rbp,%rbx
  402bf4:	75 ea                	jne    402be0 <__libc_csu_init+0x40>
  402bf6:	48 83 c4 08          	add    $0x8,%rsp
  402bfa:	5b                   	pop    %rbx
  402bfb:	5d                   	pop    %rbp
  402bfc:	41 5c                	pop    %r12
  402bfe:	41 5d                	pop    %r13
  402c00:	41 5e                	pop    %r14
  402c02:	41 5f                	pop    %r15
  402c04:	c3                   	ret    
  402c05:	90                   	nop
  402c06:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402c0d:	00 00 00 

0000000000402c10 <__libc_csu_fini>:
  402c10:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000402c14 <_fini>:
  402c14:	48 83 ec 08          	sub    $0x8,%rsp
  402c18:	48 83 c4 08          	add    $0x8,%rsp
  402c1c:	c3                   	ret    
