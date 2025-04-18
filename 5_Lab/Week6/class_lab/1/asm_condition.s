	.file	"asm_condition.c"
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
	subq	$32, %rsp
	movl	$2147483647, -4(%rbp)
	movl	$10, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
#APP
# 15 "asm_condition.c" 1
	movl %ecx, %eax
	addl %edx, %eax
	movl %eax, %edi
	setc %r9b
	seto %r8b
	setz %sil
	
# 0 "" 2
#NO_APP
	movl	%r9d, -12(%rbp)
	movl	%r8d, -16(%rbp)
	movl	%ecx, -4(%rbp)
	movl	%edx, -8(%rbp)
	movl	%edi, -24(%rbp)
	movl	%esi, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-20(%rbp), %eax
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
