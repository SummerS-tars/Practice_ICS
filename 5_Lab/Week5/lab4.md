# Week 5 : Lab 4

## 1. Assignment In Assembly Language

[Assignment.c](./Assignment.c)
[Assignment in Linux(amd64)](./Assignment_LINUX.s)  
[Assignment in MacOS(arm64)](./Assignment_MACOS.s)  

1. `char`赋值  

    ```assembly
    leaq	-33(%rbp), %rax
	movq	%rax, -8(%rbp)
	movb	$97, -33(%rbp) 		// 直接赋值
	movq	-8(%rbp), %rax
	movb	$98, (%rax)			// 通过指针赋值
    ``` 

2. `short`赋值  

    ```assembly
	leaq	-36(%rbp), %rax
	movq	%rax, -16(%rbp)
	movw	$4660, -36(%rbp)	// 直接赋值
	movq	-16(%rbp), %rax
	movw	$9029, (%rax)		// 通过指针赋值
    ```

3. `int`赋值

    ```assembly
	leaq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$305419896, -40(%rbp)	// 直接赋值
	movq	-24(%rbp), %rax
	movl	$591751049, (%rax)	// 通过指针赋值
    ```

4. `long`赋值  

    ```assembly
    leaq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movabsq	$1311768467294899695, %rax
	movq	%rax, -48(%rbp)		// 直接赋值
	movq	-32(%rbp), %rax
	movabsq	$2541551403008843505, %rdx
	movq	%rdx, (%rax)		// 通过指针赋值
    ```

## 2. Integer Array In Assembly Language

[IntArray.c](./IntArray.c)  
[IntArray in Linux(amd64)](./IntArray_LINUX.s)  
[IntArray in MacOS(arm64)](./IntArray_MACOS.s)  

1. assign and read with const number  

	```assembly
	movl	$1, -44(%rbp)
	movl	-44(%rbp), %eax	// 赋值

	movl	%eax, -12(%rbp)	// 读取
	```

2. assign with variable expression  

	```assembly
	movl	$1, -16(%rbp)	// 临时变量
	movl	-16(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	$2, -48(%rbp,%rax,4)	// 赋值

	movl	-16(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax	// 读取
	movl	%eax, -20(%rbp)
	```

3. assign with pointer expression  

    ```assembly
	movq	-8(%rbp), %rax
	addq	$12, %rax
	movl	$3, (%rax)	// 赋值

	movq	-8(%rbp), %rax
	movl	12(%rax), %eax	// 读取
	movl	%eax, -24(%rbp)
    ```
