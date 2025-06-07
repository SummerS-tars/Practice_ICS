# Exercise 11 : Virtual Memory Part 2

## 1. Program Tasks

### 1.1. Compare the Mapping of Memory of Parent and Child Processes

[program](test1/MappingOfSubprocess.c)  

compile it with `gcc`  

use `Makefile` to compile it  

#### 1.1.1. Get Mapping

get pids

```bash
./test1 &
ps -a
```

```txt
    PID TTY          TIME CMD
2097388 pts/0    00:00:00 test1
2097390 pts/0    00:00:00 test1
```

get mapping  
parent:  

```txt
58b871f2e000-58b871f2f000 r--p 00000000 08:12 6947095                    /home/thesumst/Data2/development/ICS/exercise11/part2/test1/test1
58b871f2f000-58b871f30000 r-xp 00001000 08:12 6947095                    /home/thesumst/Data2/development/ICS/exercise11/part2/test1/test1
58b871f30000-58b871f31000 r--p 00002000 08:12 6947095                    /home/thesumst/Data2/development/ICS/exercise11/part2/test1/test1
58b871f31000-58b871f32000 r--p 00002000 08:12 6947095                    /home/thesumst/Data2/development/ICS/exercise11/part2/test1/test1
58b871f32000-58b871f33000 rw-p 00003000 08:12 6947095                    /home/thesumst/Data2/development/ICS/exercise11/part2/test1/test1
58b87df42000-58b87df63000 rw-p 00000000 00:00 0                          [heap]
7eae3da00000-7eae3da28000 r--p 00000000 08:02 7370227                    /usr/lib/x86_64-linux-gnu/libc.so.6
7eae3da28000-7eae3dbb0000 r-xp 00028000 08:02 7370227                    /usr/lib/x86_64-linux-gnu/libc.so.6
7eae3dbb0000-7eae3dbff000 r--p 001b0000 08:02 7370227                    /usr/lib/x86_64-linux-gnu/libc.so.6
7eae3dbff000-7eae3dc03000 r--p 001fe000 08:02 7370227                    /usr/lib/x86_64-linux-gnu/libc.so.6
7eae3dc03000-7eae3dc05000 rw-p 00202000 08:02 7370227                    /usr/lib/x86_64-linux-gnu/libc.so.6
7eae3dc05000-7eae3dc12000 rw-p 00000000 00:00 0 
7eae3dc31000-7eae3dc34000 rw-p 00000000 00:00 0 
7eae3dc44000-7eae3dc46000 rw-p 00000000 00:00 0 
7eae3dc46000-7eae3dc4a000 r--p 00000000 00:00 0                          [vvar]
7eae3dc4a000-7eae3dc4c000 r-xp 00000000 00:00 0                          [vdso]
7eae3dc4c000-7eae3dc4d000 r--p 00000000 08:02 7370224                    /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
7eae3dc4d000-7eae3dc78000 r-xp 00001000 08:02 7370224                    /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
7eae3dc78000-7eae3dc82000 r--p 0002c000 08:02 7370224                    /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
7eae3dc82000-7eae3dc84000 r--p 00036000 08:02 7370224                    /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
7eae3dc84000-7eae3dc86000 rw-p 00038000 08:02 7370224                    /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
7ffd6f9b7000-7ffd6f9d8000 rw-p 00000000 00:00 0                          [stack]
ffffffffff600000-ffffffffff601000 --xp 00000000 00:00 0                  [vsyscall]
```

child:  

```txt
58b871f2e000-58b871f2f000 r--p 00000000 08:12 6947095                    /home/thesumst/Data2/development/ICS/exercise11/part2/test1/test1
58b871f2f000-58b871f30000 r-xp 00001000 08:12 6947095                    /home/thesumst/Data2/development/ICS/exercise11/part2/test1/test1
58b871f30000-58b871f31000 r--p 00002000 08:12 6947095                    /home/thesumst/Data2/development/ICS/exercise11/part2/test1/test1
58b871f31000-58b871f32000 r--p 00002000 08:12 6947095                    /home/thesumst/Data2/development/ICS/exercise11/part2/test1/test1
58b871f32000-58b871f33000 rw-p 00003000 08:12 6947095                    /home/thesumst/Data2/development/ICS/exercise11/part2/test1/test1
58b87df42000-58b87df63000 rw-p 00000000 00:00 0                          [heap]
7eae3da00000-7eae3da28000 r--p 00000000 08:02 7370227                    /usr/lib/x86_64-linux-gnu/libc.so.6
7eae3da28000-7eae3dbb0000 r-xp 00028000 08:02 7370227                    /usr/lib/x86_64-linux-gnu/libc.so.6
7eae3dbb0000-7eae3dbff000 r--p 001b0000 08:02 7370227                    /usr/lib/x86_64-linux-gnu/libc.so.6
7eae3dbff000-7eae3dc03000 r--p 001fe000 08:02 7370227                    /usr/lib/x86_64-linux-gnu/libc.so.6
7eae3dc03000-7eae3dc05000 rw-p 00202000 08:02 7370227                    /usr/lib/x86_64-linux-gnu/libc.so.6
7eae3dc05000-7eae3dc12000 rw-p 00000000 00:00 0 
7eae3dc31000-7eae3dc34000 rw-p 00000000 00:00 0 
7eae3dc44000-7eae3dc46000 rw-p 00000000 00:00 0 
7eae3dc46000-7eae3dc4a000 r--p 00000000 00:00 0                          [vvar]
7eae3dc4a000-7eae3dc4c000 r-xp 00000000 00:00 0                          [vdso]
7eae3dc4c000-7eae3dc4d000 r--p 00000000 08:02 7370224                    /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
7eae3dc4d000-7eae3dc78000 r-xp 00001000 08:02 7370224                    /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
7eae3dc78000-7eae3dc82000 r--p 0002c000 08:02 7370224                    /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
7eae3dc82000-7eae3dc84000 r--p 00036000 08:02 7370224                    /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
7eae3dc84000-7eae3dc86000 rw-p 00038000 08:02 7370224                    /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
7ffd6f9b7000-7ffd6f9d8000 rw-p 00000000 00:00 0                          [stack]
ffffffffff600000-ffffffffff601000 --xp 00000000 00:00 0                  [vsyscall]
```

#### 1.1.2. 分析

`fork()` 是一个系统调用，用于创建新进程。新进程被称为子进程，调用它的进程称为父进程。

1. **`fork()` 的基本行为**

    - `fork()` 创建一个与当前进程几乎完全相同的进程
    - 新进程的PID不同，其他几乎所有属性都与父进程相同

2. **写时复制（COW）机制**

    - 初始时，父子进程共享相同的物理内存页面
    - 只有在写操作时，才会为子进程分配新的物理页面
    - 这通过页表项的标记和内核的处理实现

3. **实验结果分析**

    - 父子进程的虚拟地址空间完全相同
    - 但物理内存页面在写时复制机制下是独立的
    - 子进程对变量的修改不会影响父进程

这种机制确保了进程间的安全隔离，同时又提高了系统的内存使用效率。

### Compare Different Ways to Read File

[SyscallRead](test2/SyscallRead.c)  
[MMapRead](test2/MMapRead.c)

SyscallRead uses the system call API `fread()`  
*it actually uses `read()` syscall*  
we call it way A  
MMapRead uses the memory mapping API `mmap()`  
way B  

the differences:  

1. data flow: way A, data is read by kernel, so the data needs to be copied from kernel space to user space; way B, data is mapped into user space, so no copy is needed  
2. invoke method: way A need the API `read()` provided by the kernel, way B need the API `mmap()` provided by the kernel  
     as a result, way A need to switch to kernel mode every time it reads data from the file  
     while way B only need to switch to kernel mode once when it maps the file into memory  
3. data access: way A need a buffer to store the data read from the file, way B can access the data directly in memory just like accessing other data in memory page  

### IPC

first we introduce some IPC methods  

#### IPC Methods

some basic methods:  

- pipes  
- signal  
- shared memory(mmap)  
- shared file  
