# Appendix : Walk Into Assembly

In Chapter 3, the knowledge talked about is hard to understand the hole process  
Here are some extra notes to help understand the process of assembly language  

## `sp` : Stack Pointer

its very important in assembly language  

we know the stack growth from the top to down  
the normal way to allocate some space in stack is to decrease the `sp`  

```asm
subq $16, %rsp # allocate 16 bytes in stack
```

## `bp` : Base Pointer

we should know a concept of `frame`(栈帧)  

*yes, its just the `f` in `fps`*  
*(fps, frame per second)*  

### Function Start

the normal way to start a function is belike  

```asm
pushq $rbp # save the old base pointer
movq %rsp, %rbp # set the new base pointer
subq $16, %rsp # allocate 16 bytes in stack
...# do something
```

1. `pushq $rbp`  
    save the old base pointer  
2. `movq %rsp, %rbp`  
    set the new base pointer  
    cause the step above changes the `rsp`  

Why we do this?  
to enable us to locate easier!  
the `rsp` may change  
so we save the stack frame(the function's location in stack) in `rbp`  
hence we can use `rbp` to locate the function's data by relative address  

all in all, this is why the `b` in `bp` is called `base`  

### Function Finish

after knowing what the program will do when a function is to start  
it's not hard to imagine what we should do when the function is to finish  

```asm
...# do something
addq $16, %rsp # free the space in stack
popq %rbp # restore the old base pointer
ret # return to the caller function
```

## A Fact That Always Confuses Me

Address and Value even Instruction are very easy to be mixed up  
They are all the same in computer!  

We known that computer only know 0 and 1  
so all the things we may differentiate very easily  
bug when they translated to what the computer can understand  
they are denoted by 0 and 1  
all the things are the same!  

so we have to keep a clear mind  
don't be involved  

let's just make the basic concepts clear  

what computer can do is do many instructions  
what compiler does is to translate the source code into instructions  
where the instructions are stored is in the memory  
what memory the system provides to the program is virtual memory  
what the virtual memory like is a big array of bytes  
what we can see in the program all have its address in runtime  
what we should pay much attention is to make clear what we are talking about:  
    value, address, pointer, variable, instruction, etc.  

just not be scared of all these things  
keep calm!  
