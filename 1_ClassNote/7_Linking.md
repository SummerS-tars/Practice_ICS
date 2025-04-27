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
also, it can improve hte efficiency to develop a program  
for enabling ue to separate compile  
and make the libraries possible  

Here we will walk into the process of linking  
it will enable us to better understand huge programs, avoid of some dangerous bugs, understand how scope works, make use of libraries and so on  

---

- [1. Compiler Driver(编译器驱动程序)](#1-compiler-driver编译器驱动程序)
- [2. Static Linking(静态链接)](#2-static-linking静态链接)
- [3. Object File(目标文件)](#3-object-file目标文件)
- [4. ELF File(Executable and Linkable Format, 可执行可链接格式)](#4-elf-fileexecutable-and-linkable-format-可执行可链接格式)
    - [4.1. ELF Object File Format](#41-elf-object-file-format)
- [5. Symbol and Symbol Table(符号和符号表)](#5-symbol-and-symbol-table符号和符号表)
- [6. Symbol Resolution(符号解析)](#6-symbol-resolution符号解析)
    - [6.1. Local Symbols](#61-local-symbols)

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

## 2. Static Linking(静态链接)

input: a set of relocatable object file and some arguments  
output: an fully linked, executable and runnable object file  

the input object files are composed of  
all kinds of code and data sections(数据节)  
and every section is a contiguous block of byte sequence  

to construct the executable file, two main tasks will be done by ld:  

1. **symbol resolution(符号解析)**  
2.**重定位(relocation)**  

just remember:  
object file is all fo bytes  
constructed by some blocks  
some include code, some include data  
and else include data structures to instruct ld and loader  

## 3. Object File(目标文件)

three types:  

1. `.o`  
    relocatable object file(可重定位目标文件)  
    can be linked with other `.o` files to create an `a.out` file  
2. `a.out`  
    executable object file(可执行目标文件)  
    can by copy to memory and run  
    *this is for unix system*  
3. `.so`  
    shared object file(共享目标文件)  
    a special type of `.o` file  
    can be dynamically loaded into memory and linked when loading or at runtime  

before `ld` take effect, preprocessor(`cpp`), compiler(`cc1`), and assembler(`as`) will be executed to generate the object file(including `.so`)  
and `ld` will do the work of linking the object files to construct the executable file  

to specify it strictly  
object module is just a byte sequence  
while object file is an object module stored in disk in the form of a file  
but most cases, we use them interchangeably  

## 4. ELF File(Executable and Linkable Format, 可执行可链接格式)

Standard binary format for object files  

one unified format for:  

- Relocatable object files(`.o`)  
- Executable object files(`a.out`)  
- Shared object files(`.so`)  

they have a generic name: ELF binaries  

### 4.1. ELF Object File Format

- ELF header  

- `.text` section  
    compiled code  

- `.rodate` section  
    read only data  
    e.g. format string in printf and jump table in switch statement  

- `.data` section  
    initialized global and static C variables  

- `.bss` section  
    uninitialized global and static C variables  
    *a way to understand:*  
    *bss(Block Storage Start)*  
    *we can use Better Save Space to remember it*  
    *for all these variables don't take real space but just a placeholder in object file*  
    *at runtime, they will by set to zero in memory*  

- `.symtab` section
    symbol table  
    store the info of the functions and global variables defined and referenced in the program  
    will be included although no `-g` arg when compiled  
    *local vars not included here*  

- `.rel.text` section  
    a table of the addr in `.text` section  
    *`.rel` means relocation*  
    *usually not included in executable file for not needed in exe file*  

- `.rel.data` section  
    include info of rel info of all global vars referenced or defined by modules  
    - [ ] can't understand here right noe  

- `.debug` section  
    *only included when `-g` arg is used*
    a table including the symbols used to debug  
    including:  
    - local vars and type definitions  
    - global vars  
    - raw C source file  
- `.line` section  
    *only included when `-g` arg is used*  
    a table including the line number of the source code and the addr of the code in `.text` section  
    *used to debug*  
- `.strtab` section  
    a string table  
    including:  
    - symbol tables in `.systab` and `.debug`  
    - section names in section header  
- Section header table

## 5. Symbol and Symbol Table(符号和符号表)

Three types of symbols:  

1. global  
2. external  
3. local  

## 6. Symbol Resolution(符号解析)

### 6.1. Local Symbols

- local non-static variables: stored on the stack  
- local static C variables: stored in `.bss` or `.data`  

Symbols attributes: **strong** or **weak**  

**Rules:**  

1. 