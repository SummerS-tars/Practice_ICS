	.file	"gccLearning.c"
	.text
	.section	.rodata
.LC2:
	.string	"a + b = %d\n"
.LC3:
	.string	"a - c = %d\n"
.LC4:
	.string	"a * d = %f\n"
.LC5:
	.string	"a / e = %f\n"
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
	movl	$10, -4(%rbp)
	movq	$20, -16(%rbp)
	movw	$123, -18(%rbp)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	movsd	.LC1(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movswl	-18(%rbp), %edx
	movl	-4(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-4(%rbp), %xmm0
	mulss	-24(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-4(%rbp), %xmm0
	divsd	-32(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1107322470
	.align 8
.LC1:
	.long	858993459
	.long	1076245299
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
