	.file	"Assignment.c"
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
	leaq	-33(%rbp), %rax
	movq	%rax, -8(%rbp)
	movb	$97, -33(%rbp)
	movq	-8(%rbp), %rax
	movb	$98, (%rax)
	leaq	-36(%rbp), %rax
	movq	%rax, -16(%rbp)
	movw	$4660, -36(%rbp)
	movq	-16(%rbp), %rax
	movw	$9029, (%rax)
	leaq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$305419896, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	$591751049, (%rax)
	leaq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movabsq	$1311768467294899695, %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movabsq	$2541551403008843505, %rdx
	movq	%rdx, (%rax)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
