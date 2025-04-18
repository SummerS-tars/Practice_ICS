# Class 9 : Linking

**Linking** is the process of combining all kinds of code and data segments into a single file  
and this file is called an executable file  
executable file can be load(copy) into memory and run  

linking process can be executed at may stages  

- compile time  
- load time  
- run time  

linking plays a very important role in the programming  
it makes it possible to separate a big program into many small modules  
and let us can pay attention to one module at a time  

Here we will walk into the process of linking  
it will enable us to better understand huge programs, avoid of some dangerous bugs, understand how scope works, make use of libraries and so on  

---

- [1. Compiler Driver(编译器驱动程序)](#1-compiler-driver编译器驱动程序)
- [Static Linking(静态链接)](#static-linking静态链接)
- [Object File(目标文件)](#object-file目标文件)
- [ELF(Executable and Linkable Format, 可重定位目标文件)](#elfexecutable-and-linkable-format-可重定位目标文件)
- [Symbol and Symbol Table(符号和符号表)](#symbol-and-symbol-table符号和符号表)
- [Symbol Resolution(符号解析)](#symbol-resolution符号解析)

---

## 1. Compiler Driver(编译器驱动程序)

[Example Program](../4_TestCode/9_Week9/Linker/main.c)  

Most compile systems provide **compiler driver**  
for C, we use `gcc` to compile programs  

it actually includes several steps  
we have mentioned this in [Program Code](./5_MachineLevelProgramRepresentation.md#11-program-coding)  

1. preprocessor  
    `cpp`  
2. compiler  
    `cc1`  
3. assembler  
    `as`  
4. linker  
    `ld`  

finally we execute the program by enter such command in shell  

```shell
./program
```

it will call a function `loader` in the operation system  
witch will load the program into memory and run it  

## Static Linking(静态链接)

## Object File(目标文件)

## ELF(Executable and Linkable Format, 可重定位目标文件)

## Symbol and Symbol Table(符号和符号表)

Three types of symbols:  

1. global  
2. external  
3. local  

## Symbol Resolution(符号解析)

