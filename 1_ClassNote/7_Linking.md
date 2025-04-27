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
    - [5.1. Definition](#51-definition)
    - [5.2. Component Types](#52-component-types)
    - [5.3. Attention](#53-attention)
    - [5.4. Construction of Symbol Table](#54-construction-of-symbol-table)
- [6. Symbol Resolution(符号解析)](#6-symbol-resolution符号解析)
    - [6.1. Local Symbols](#61-local-symbols)
    - [6.2. Global Symbols](#62-global-symbols)
        - [6.2.1. Symbols Attributes](#621-symbols-attributes)
        - [6.2.2. Rules](#622-rules)
    - [6.3. Link Static Library](#63-link-static-library)
- [7. Relocation(重定位)](#7-relocation重定位)
    - [7.1. Relocation Entry(重定位条目)](#71-relocation-entry重定位条目)
    - [7.2. Relocation of Symbol References(重定位符号引用)](#72-relocation-of-symbol-references重定位符号引用)
        - [7.2.1. Relocate PC-relative Address Reference](#721-relocate-pc-relative-address-reference)
        - [7.2.2. Relocate Absolute Address Reference](#722-relocate-absolute-address-reference)
- [8. Executable File](#8-executable-file)
    - [8.1. ELF of Executable File](#81-elf-of-executable-file)
- [9. Load Executable File](#9-load-executable-file)
- [10. Dynamic Link Shared Library(动态链接共享库)](#10-dynamic-link-shared-library动态链接共享库)
    - [10.1. Definition and Benefits](#101-definition-and-benefits)
    - [10.2. How Dose Shared Library Realize `Share`?](#102-how-dose-shared-library-realize-share)
    - [10.3. How to Generate Shared Library](#103-how-to-generate-shared-library)
- [11. Load and Link DLL in Application](#11-load-and-link-dll-in-application)
- [12. PIC(Position-Independent Code, 位置无关代码)](#12-picposition-independent-code-位置无关代码)
    - [12.1. PIC Data Reference](#121-pic-data-reference)
    - [12.2. PIC Function Invocation](#122-pic-function-invocation)
- [13. Library Interpositioning(库打桩)](#13-library-interpositioning库打桩)

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

- `.rodata` section  
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

### 5.1. Definition

every object module(`m`) has a symbol table  
including the info about the symbols defined and referenced in the module  

### 5.2. Component Types

Three types of symbols:  

1. global  
    defined by `m` and can by referenced by other modules  
    including:  
    - non-static functions  
    - non-static global variables  
2. external  
    global symbols defined by other modules  
3. local  
    defined by `m` and can only be referenced by `m`  
    including:  
    - static functions  
    - static global variables  

we can find that  
the symbol in `ld` is very different from the vars in C program  
it's a point really important  

### 5.3. Attention

any vars called `local vars` in C program  
are not included in `.strtab` section  
they are managed in stack at runtime  
**witch is not cared by `ld`**  

we may wonder: then how about `static` `local` vars"?  
they are not managed in stack  
and more similar to global vars actually  
they do exist in the `.bss` or `.data` section  
and have a distinct name in the symbol table  

### 5.4. Construction of Symbol Table

`.symtab`  
actually an array consists of structures with the structure as follows:  

```c
typedef struct {
    int     name;
    char    type:4,
            binding:4;
    char    reserved;
    short   section;
    long    value;
    long    size;
} Elf64_Symbol;
```

- [ ] more details to be added here

## 6. Symbol Resolution(符号解析)

how linker `ld` resolve the references of symbols?  
relate every reference to one concrete symbol definition in the input object files' symbol tables  

most of the time, there problems will be resolved by compiler  
but the most annoying thing is:  
the reference of a global symbol  

why?  
compiler can't know which module the symbol is defined in  
but to support separate compilation  
compiler will allow these references to be just there  
so the question must be solved by linker later  

if the linker can't find the symbol referenced in any modules  
it will report an error  
but how about the situation that the same symbol is defined in different modules?  
*to by honest, it is the situation we should get rid of*  
*however, we still need to understand this in case of this situation happens*  

### 6.1. Local Symbols

- local non-static variables: stored on the stack  
    linker knows nothing about them  
- local static C variables: stored in `.bss` or `.data`  

### 6.2. Global Symbols

At compilation, compiler will output all the global symbol to assembler  
wether **strong** or **weak**  
and compiler will code these info implicitly into the symbol table in the object file  

#### 6.2.1. Symbols Attributes

Symbols attributes: **strong** or **weak**  

**strong:**  

- function  
- initialized global variables  

**weak:**  

- uninitialized global variables  

#### 6.2.2. Rules

**Linking Rules:**  

1. it is not allowed to have multiple strong symbols with the same name  
2. in the situation that there are one strong symbol and several weak symbols with the same name  
    the strong symbol will be used  
3. in the situation that there are several weak symbols with the same name  
    one of them will be used randomly  

- [ ] test examples to be added here

what these means to us?  

- Avoid this situation!  
- use `static` if we can  
- remember to initialize global vars  
- use `extern` if we reference an external global var  

all in all  
get rid of ambiguity as much as we can!  

### 6.3. Link Static Library

**static library:**  
archive of object modules  
usually with the suffix `.a`  

it can also be taken as an input file to `ld`  
only the needed object modules will be copied to construct the executable file  

## 7. Relocation(重定位)

### 7.1. Relocation Entry(重定位条目)

*in fact, we can just take meaning of inside point of `entry`*  
*witch is used by assembler to tell liker how to modify this reference when constructing the executable file*  

the relocation entry of code stored in `.rel.text` section  
for initialized data in `.rel.data` section  

```c
typedef struct {
    long    offset;
    long    type:32,
            symbol:32;
    long    addend;
} Elf64_Rela;
```

- [ ] explanation to be added here  

ELF defines 32 types different relocation  
two basic types:  

1. R_X86_64_32_PC32  
    32-bit relocation of PC-relative address reference  
2. R_X86_64_32  
    32-bit relocation of absolute address reference  

- [ ] example to be added here

### 7.2. Relocation of Symbol References(重定位符号引用)

use `s` to denote section  
use `r` to denote relocation entry  
ADDR(s) : address of the section `s`  
ADDR(r.symbol) : address of the symbol `symbol` in the section `s`  

#### 7.2.1. Relocate PC-relative Address Reference

how to relocate the PC-relative address reference?  

refaddr : means the start address of the reference in the code section  
refaddr = ADDR(s) + r.offset  

relref = (unsigned) (ADDR(r.symbol) + r.addend - refaddr)  
*here the reference in machine code actually denotes the offset between the address right after itself and the symbol's address*  

*book here use `refptr` to denote the pointer to the reference here*  
*here I use a more intuitive representation as relref*  
*refptr = relref  

*the actual frequency of call:*  
*1. push PC to stack*  
*2. add refaddr to PC*  

#### 7.2.2. Relocate Absolute Address Reference

*refptr = (unsigned) (ADDR(r.symbol) + r.addend)  

- [ ] question here, maybe the r.addend here is always 0 ?  

## 8. Executable File

### 8.1. ELF of Executable File

1. ELF header  
2. segmentation header table  
3. `.init`  
4. `.text`  
5. `.rodata`  
6. `.data`  
7. `.bss`  
8. `.symtab`  
9. `.debug`  
10. `.line`  
11. `.strtab`  
12. section header table  

among these parts:  
1-5 is ro(code segmentation)  
6-7 is rw(data segmentation)  
8-12 will not be loaded into memory  

*we can find `.rel` is no longer exist here for it is not needed anymore in executable file*  

## 9. Load Executable File

to run the executable file  
we first need to load it by printing its name(including path or in current dir or in the system path) in Linux shell CLI  

the clear process will be studied in other chapter  
not mentioned here  

## 10. Dynamic Link Shared Library(动态链接共享库)

### 10.1. Definition and Benefits

**Dynamic Link Shared Library** is the type of object file we mentioned above: `shared object file`  
usually with the suffix `.so` in Linux  

shared library is actually a production attempting to solve the drawbacks of static library  
it's an object module  
which can be loaded to arbitrary address at runtime or load time  
and linked with a program in memory  

this process is called **dynamic linking**  
done by **dynamic linker**  

*widely used by microsoft OS, called DLL*  

### 10.2. How Dose Shared Library Realize `Share`?

two ways:  

1. for single `.so`  
    all of the executable object files can share the code and data in the `.so` file  
2. in memory  
    a copy of the `.text` section of a shared library can by shared by different running processes  

### 10.3. How to Generate Shared Library

- [ ] example to be added here  

## 11. Load and Link DLL in Application

Linking at runtime  

- [ ] example to be added here  

## 12. PIC(Position-Independent Code, 位置无关代码)

when arg `-fpic` is added  
GNU compiler will generate PIC code  
it is a necessary arg for shared library compilation  

### 12.1. PIC Data Reference

Important Concepts:  
GOT(Global Offset Table)  

### 12.2. PIC Function Invocation

## 13. Library Interpositioning(库打桩)
