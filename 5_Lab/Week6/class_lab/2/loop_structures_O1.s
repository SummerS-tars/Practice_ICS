	.file	"loop_structures.c"
	.text
	.globl	sum_for
	.type	sum_for, @function
sum_for:
.LFB11:
	.cfi_startproc
	movl	$0, %edx
	movl	$0, %eax
.L2:
	addl	%edx, %eax
	addl	$1, %edx
	leal	36(%rdx,%rdx,8), %ecx
	addl	%ecx, %eax
	cmpl	$10, %edx
	jne	.L2
	ret
	.cfi_endproc
.LFE11:
	.size	sum_for, .-sum_for
	.globl	sum_while
	.type	sum_while, @function
sum_while:
.LFB12:
	.cfi_startproc
	movl	$0, %edx
	movl	$0, %eax
.L5:
	addl	%edx, %eax
	addl	$1, %edx
	leal	36(%rdx,%rdx,8), %ecx
	addl	%ecx, %eax
	cmpl	$10, %edx
	jne	.L5
	ret
	.cfi_endproc
.LFE12:
	.size	sum_while, .-sum_while
	.globl	sum_do_while
	.type	sum_do_while, @function
sum_do_while:
.LFB13:
	.cfi_startproc
	movl	$0, %edx
	movl	$0, %eax
.L8:
	addl	%edx, %eax
	addl	$1, %edx
	leal	36(%rdx,%rdx,8), %ecx
	addl	%ecx, %eax
	cmpl	$10, %edx
	jne	.L8
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
	.text
	.globl	main
	.type	main, @function
main:
.LFB14:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$0, %eax
	call	sum_for
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	call	sum_while
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	call	sum_do_while
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
