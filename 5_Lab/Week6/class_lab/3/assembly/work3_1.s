	.file	"work3_1.c"
	.text
	.section	.rodata
.LC0:
	.string	"Case 1"
.LC1:
	.string	"Case 2"
.LC2:
	.string	"Case 3"
.LC3:
	.string	"Default case"
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
	subq	$16, %rsp
	movl	$2, -4(%rbp)
	cmpl	$3, -4(%rbp)
	je	.L2
	cmpl	$3, -4(%rbp)
	jg	.L3
	cmpl	$1, -4(%rbp)
	je	.L4
	cmpl	$2, -4(%rbp)
	je	.L5
	jmp	.L3
.L4:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L6
.L5:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L2:
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L6
.L3:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L6:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
