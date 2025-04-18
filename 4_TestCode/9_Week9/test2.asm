	.file	"test.c"
	.text
	.p2align 4
	.globl	exchange
	.def	exchange;	.scl	2;	.type	32;	.endef
	.seh_proc	exchange
exchange:
	.seh_endprologue
	movl	(%rcx), %eax
	movl	%edx, (%rcx)
	ret
	.seh_endproc
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	call	__main
	xorl	%eax, %eax
	addq	$40, %rsp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (GNU) 14.2.0"
