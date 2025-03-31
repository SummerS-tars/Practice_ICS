	.file	"loop_structures.c"
	.text
	.globl	sum_for
	.type	sum_for, @function
sum_for:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L2
.L5:
	movl	$0, -12(%rbp)
	jmp	.L3
.L4:
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -4(%rbp)
	addl	$1, -12(%rbp)
.L3:
	cmpl	$9, -12(%rbp)
	jle	.L4
	addl	$1, -8(%rbp)
.L2:
	cmpl	$9, -8(%rbp)
	jle	.L5
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	sum_for, .-sum_for
	.globl	sum_while
	.type	sum_while, @function
sum_while:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L8
.L11:
	movl	$0, -12(%rbp)
	jmp	.L9
.L10:
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -4(%rbp)
	addl	$1, -12(%rbp)
.L9:
	cmpl	$9, -12(%rbp)
	jle	.L10
	addl	$1, -8(%rbp)
.L8:
	cmpl	$9, -8(%rbp)
	jle	.L11
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	sum_while, .-sum_while
	.globl	sum_do_while
	.type	sum_do_while, @function
sum_do_while:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
.L15:
	movl	$0, -12(%rbp)
.L14:
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -4(%rbp)
	addl	$1, -12(%rbp)
	cmpl	$9, -12(%rbp)
	jle	.L14
	addl	$1, -8(%rbp)
	cmpl	$9, -8(%rbp)
	jle	.L15
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	sum_do_while, .-sum_do_while
	.section	.rodata
.LC0:
	.string	"Sum using for loop: %d\n"
.LC1:
	.string	"Sum using while loop: %d\n"
.LC2:
	.string	"Sum using do-while loop: %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	call	sum_for
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	call	sum_while
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	call	sum_do_while
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
