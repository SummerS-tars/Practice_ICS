	.file	"c_condition.c"
	.text
	.section	.rodata
.LC0:
	.string	"\350\256\241\347\256\227: %d + %d\n"
.LC1:
	.string	"\347\273\223\346\236\234: %d\n"
.LC2:
	.string	"\350\277\233\344\275\215\346\240\207\345\277\227 (CF): %d\n"
.LC3:
	.string	"\346\272\242\345\207\272\346\240\207\345\277\227 (OF): %d\n"
.LC4:
	.string	"\351\233\266\346\240\207\345\277\227 (ZF): %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$2147483647, -16(%rbp)
	movl	$10, -20(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	-20(%rbp), %edx
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-16(%rbp), %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	$4294967295, %eax
	cmpq	-32(%rbp), %rax
	jnb	.L2
	movl	$1, -4(%rbp)
.L2:
	cmpl	$0, -16(%rbp)
	jle	.L3
	cmpl	$0, -20(%rbp)
	jle	.L3
	cmpl	$0, -36(%rbp)
	js	.L4
.L3:
	cmpl	$0, -16(%rbp)
	jns	.L5
	cmpl	$0, -20(%rbp)
	jns	.L5
	cmpl	$0, -36(%rbp)
	jle	.L5
.L4:
	movl	$1, -8(%rbp)
.L5:
	cmpl	$0, -36(%rbp)
	jne	.L6
	movl	$1, -12(%rbp)
.L6:
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
