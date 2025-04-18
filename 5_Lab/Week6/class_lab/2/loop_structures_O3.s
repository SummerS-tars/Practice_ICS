	.file	"loop_structures.c"
	.text
	.p2align 4
	.globl	sum_for
	.type	sum_for, @function
sum_for:
.LFB11:
	.cfi_startproc
	movl	$900, %eax
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
	movl	$900, %eax
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
	movl	$900, %eax
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
	movl	$900, %esi
	leaq	.LC0(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$900, %esi
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$900, %esi
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
