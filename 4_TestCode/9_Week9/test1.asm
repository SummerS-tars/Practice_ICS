	.file	"test1.c"
	.text
	.globl	exchange
	.def	exchange;	.scl	2;	.type	32;	.endef
	.seh_proc	exchange
exchange:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movq	16(%rbp), %rax # 获得 ap
	movl	(%rax), %eax # *ap
	movl	%eax, -4(%rbp) # int a = *ap ; 将 *ap 的值存入栈中
	movq	16(%rbp), %rax # 获得 ap
	movl	24(%rbp), %edx # 获取 b
	movl	%edx, (%rax) # *ap = b ; 将 b 的值存入 a 中
	movl	-4(%rbp), %eax # 获取 a 改变之前的值
	addq	$16, %rsp # 清理栈
	popq	%rbp
	ret
	.seh_endproc
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
	movl	$12, -8(%rbp) # int a = 12 ; 将 a 存入栈中
	leaq	-8(%rbp), %rax # 获得 a 的地址
	movl	$20, %edx # 第二个参数 exchange中b
	movq	%rax, %rcx # 第一个参数 exchange中ap
	call	exchange
	movl	%eax, -4(%rbp)
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (GNU) 14.2.0"
