# Week 5 : Lab 4

## 1. Assignment In Assembly Language

[Assignment in Linux(amd64)](./Assignment_LINUX.s)  
[Assignment in MacOS(arm64)](./Assignment_MACOS.s)  

1. `char`赋值  

    ```assembly
    leaq	-33(%rbp), %rax
	movq	%rax, -8(%rbp)
	movb	$97, -33(%rbp)
	movq	-8(%rbp), %rax
	movb	$98, (%rax)
    ``` 

2. `short`赋值  

    ```assembly
	leaq	-36(%rbp), %rax
	movq	%rax, -16(%rbp)
	movw	$4660, -36(%rbp)
	movq	-16(%rbp), %rax
	movw	$9029, (%rax)
    ```

3. `int`赋值

    ```assembly
	leaq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$305419896, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	$591751049, (%rax)
    ```

4. `long`赋值  

    ```assembly
    leaq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movabsq	$1311768467294899695, %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movabsq	$2541551403008843505, %rdx
	movq	%rdx, (%rax)
    ```

## 2. 