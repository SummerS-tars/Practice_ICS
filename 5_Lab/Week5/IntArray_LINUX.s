	.file	"IntArray.c"
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
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -48(%rbp)
	movd	%xmm0, -32(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -44(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	$1, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	$2, -48(%rbp,%rax,4)
	movl	-16(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	addq	$12, %rax
	movl	$3, (%rax)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -24(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
