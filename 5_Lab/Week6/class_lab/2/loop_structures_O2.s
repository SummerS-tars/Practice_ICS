	.file	"loop_structures.c"
	.text
	.p2align 4
	.globl	sum_for
	.type	sum_for, @function
sum_for:
.LFB11:
	.cfi_startproc
	movl	$9, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L2:
	addl	%edx, %eax
	addl	$1, %edx
	leal	36(%rcx,%rax), %eax
	addl	$9, %ecx
	cmpl	$10, %edx
	jne	.L2
	ret
	.cfi_endproc
.LFE11:
	.size	sum_for, .-sum_for
	.p2align 4
	.globl	sum_while
	.type	sum_while, @function
sum_while:
.LFB16:
	.cfi_startproc
	movl	$9, %ecx
	xorl	%eax, %eax
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L6:
	addl	%edx, %eax
	addl	$1, %edx
	leal	36(%rcx,%rax), %eax
	addl	$9, %ecx
	cmpl	$10, %edx
	jne	.L6
	ret
	.cfi_endproc
.LFE16:
	.size	sum_while, .-sum_while
	.p2align 4
	.globl	sum_do_while
	.type	sum_do_while, @function
sum_do_while:
.LFB13:
	.cfi_startproc
	movl	$9, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L9:
	addl	%edx, %eax
	addl	$1, %edx
	leal	36(%rcx,%rax), %eax
	addl	$9, %ecx
	cmpl	$10, %edx
	jne	.L9
	ret
	.cfi_endproc
.LFE13:
	.size	sum_do_while, .-sum_do_while
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Sum using for loop: %d\n"
.LC1:
	.string	"Sum using while loop: %d\n"
.LC2:
	.string	"Sum using do-while loop: %d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB14:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$9, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L12:
	addl	%eax, %esi
	addl	$1, %eax
	leal	36(%rdx,%rsi), %esi
	addl	$9, %edx
	cmpl	$10, %eax
	jne	.L12
	leaq	.LC0(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$9, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L13:
	addl	%eax, %esi
	addl	$1, %eax
	leal	36(%rdx,%rsi), %esi
	addl	$9, %edx
	cmpl	$10, %eax
	jne	.L13
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$9, %edx
	xorl	%eax, %eax
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L14:
	addl	%eax, %esi
	addl	$1, %eax
	leal	36(%rdx,%rsi), %esi
	addl	$9, %edx
	cmpl	$10, %eax
	jne	.L14
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
