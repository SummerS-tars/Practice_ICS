# Exercise 11 : Virtual Memory Part 1

## 1. Goals

1. observe the VM subsystem under Linux
2. learn to use mmap  
3. understand basic inter-process communication(IPC)

## 2. Practice

### 2.1. Observe Mapping of Process Memory

#### 2.1.1. Start Command Process

choose `ping`  

```bash
ping 127.0.0.1 > tmp.txt &
```

#### 2.1.2. Retrieve PID

```bash
ps -a
```

get

```txt
2029949 pts/0    00:00:00 ping
```

#### 2.1.3. Observe Memory Mapping

```bash
sudo cat /proc/2029949/maps
```

*attentionally, this command need `sudo` privileges*  

this dir will be deleted by the OS after the process exits  

```txt
651210d69000-651210d6c000 r--p 00000000 08:02 7341212                    /usr/bin/ping
651210d6c000-651210d77000 r-xp 00003000 08:02 7341212                    /usr/bin/ping
651210d77000-651210d7b000 r--p 0000e000 08:02 7341212                    /usr/bin/ping
651210d7b000-651210d7c000 r--p 00011000 08:02 7341212                    /usr/bin/ping
651210d7c000-651210d80000 rw-p 00012000 08:02 7341212                    /usr/bin/ping
651210d80000-651210d81000 rw-p 00000000 00:00 0 
651222797000-6512227b8000 rw-p 00000000 00:00 0                          [heap]
7b750c200000-7b750c798000 r--p 00000000 08:02 7342716                    /usr/lib/locale/locale-archive
7b750c853000-7b750c864000 r--p 00000000 08:02 7340628                    /usr/lib/x86_64-linux-gnu/libunistring.so.5.0.0
7b750c864000-7b750c89b000 r-xp 00011000 08:02 7340628                    /usr/lib/x86_64-linux-gnu/libunistring.so.5.0.0
7b750c89b000-7b750c9fb000 r--p 00048000 08:02 7340628                    /usr/lib/x86_64-linux-gnu/libunistring.so.5.0.0
7b750c9fb000-7b750c9ff000 r--p 001a8000 08:02 7340628                    /usr/lib/x86_64-linux-gnu/libunistring.so.5.0.0
7b750c9ff000-7b750ca00000 rw-p 001ac000 08:02 7340628                    /usr/lib/x86_64-linux-gnu/libunistring.so.5.0.0
7b750ca00000-7b750ca28000 r--p 00000000 08:02 7370227                    /usr/lib/x86_64-linux-gnu/libc.so.6
7b750ca28000-7b750cbb0000 r-xp 00028000 08:02 7370227                    /usr/lib/x86_64-linux-gnu/libc.so.6
7b750cbb0000-7b750cbff000 r--p 001b0000 08:02 7370227                    /usr/lib/x86_64-linux-gnu/libc.so.6
7b750cbff000-7b750cc03000 r--p 001fe000 08:02 7370227                    /usr/lib/x86_64-linux-gnu/libc.so.6
7b750cc03000-7b750cc05000 rw-p 00202000 08:02 7370227                    /usr/lib/x86_64-linux-gnu/libc.so.6
7b750cc05000-7b750cc12000 rw-p 00000000 00:00 0 
7b750cced000-7b750ccef000 rw-p 00000000 00:00 0 
7b750ccef000-7b750ccf1000 r--p 00000000 08:02 7340857                    /usr/lib/x86_64-linux-gnu/libidn2.so.0.4.0
7b750ccf1000-7b750ccf5000 r-xp 00002000 08:02 7340857                    /usr/lib/x86_64-linux-gnu/libidn2.so.0.4.0
7b750ccf5000-7b750cd0f000 r--p 00006000 08:02 7340857                    /usr/lib/x86_64-linux-gnu/libidn2.so.0.4.0
7b750cd0f000-7b750cd10000 r--p 0001f000 08:02 7340857                    /usr/lib/x86_64-linux-gnu/libidn2.so.0.4.0
7b750cd10000-7b750cd11000 rw-p 00020000 08:02 7340857                    /usr/lib/x86_64-linux-gnu/libidn2.so.0.4.0
7b750cd11000-7b750cd14000 r--p 00000000 08:02 7340113                    /usr/lib/x86_64-linux-gnu/libcap.so.2.66
7b750cd14000-7b750cd1a000 r-xp 00003000 08:02 7340113                    /usr/lib/x86_64-linux-gnu/libcap.so.2.66
7b750cd1a000-7b750cd1c000 r--p 00009000 08:02 7340113                    /usr/lib/x86_64-linux-gnu/libcap.so.2.66
7b750cd1c000-7b750cd1d000 r--p 0000b000 08:02 7340113                    /usr/lib/x86_64-linux-gnu/libcap.so.2.66
7b750cd1d000-7b750cd1e000 rw-p 0000c000 08:02 7340113                    /usr/lib/x86_64-linux-gnu/libcap.so.2.66
7b750cd27000-7b750cd2e000 r--s 00000000 08:02 7370216                    /usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache
7b750cd2e000-7b750cd30000 rw-p 00000000 00:00 0 
7b750cd30000-7b750cd34000 r--p 00000000 00:00 0                          [vvar]
7b750cd34000-7b750cd36000 r-xp 00000000 00:00 0                          [vdso]
7b750cd36000-7b750cd37000 r--p 00000000 08:02 7370224                    /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
7b750cd37000-7b750cd62000 r-xp 00001000 08:02 7370224                    /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
7b750cd62000-7b750cd6c000 r--p 0002c000 08:02 7370224                    /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
7b750cd6c000-7b750cd6e000 r--p 00036000 08:02 7370224                    /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
7b750cd6e000-7b750cd70000 rw-p 00038000 08:02 7370224                    /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
7ffcd315b000-7ffcd317c000 rw-p 00000000 00:00 0                          [stack]
ffffffffff600000-ffffffffff601000 --xp 00000000 00:00 0                  [vsyscall]
```

##### 2.1.3.1. 内存映射信息解释

从 `/proc/PID/maps` 输出可以看到 ping 进程的完整虚拟内存布局。每行格式为：

```txt
地址范围 权限 偏移量 设备号 inode号 文件路径
```

**主要内存区域分析：**

1. **程序代码和数据段（/usr/bin/ping）：**
    - `651210d69000-651210d6c000 r--p` : 只读数据段，包含程序头和常量数据
    - `651210d6c000-651210d77000 r-xp` : 可执行代码段（.text），包含程序指令
    - `651210d77000-651210d7b000 r--p` : 只读数据段（.rodata），包含字符串常量等
    - `651210d7b000-651210d7c000 r--p` : 只读数据段，可能是重定位信息
    - `651210d7c000-651210d80000 rw-p` : 可读写数据段（.data 和 .bss），包含全局变量

2. **堆区域：**
    - `651222797000-6512227b8000 rw-p ... [heap]` : 动态分配的堆内存区域

3. **共享库映射：**
    - 各种 `.so` 文件（libc、libunistring、libidn2、libcap）的代码段和数据段
    - 每个库都有自己的代码段（r-xp）、只读数据段（r--p）和可写数据段（rw-p）

4. **栈区域：**
    - `7ffcd315b000-7ffcd317c000 rw-p ... [stack]` : 进程栈，用于函数调用和局部变量

5. **特殊内存区域：**
    - `[vvar]` : 内核变量页面，用于快速系统调用
    - `[vdso]` : 虚拟动态共享对象，提供快速系统调用接口
    - `[vsyscall]` : 传统的快速系统调用接口

**权限标志说明：**  

- `r` : 可读（Read）
- `w` : 可写（Write）  
- `x` : 可执行（eXecute）
- `p` : 私有映射（Private）
- `s` : 共享映射（Shared）

这个内存布局展示了现代操作系统如何将程序和库加载到虚拟内存空间，体现了虚拟内存管理的核心概念：地址空间隔离、权限控制和内存映射。

##### 2.1.3.2. 同一文件多次映射的原因分析

从上述输出中可以观察到，同一个文件（如 `/usr/bin/ping`）在内存映射中出现了多次：

```txt
651210d69000-651210d6c000 r--p 00000000 08:02 7341212                    /usr/bin/ping
651210d6c000-651210d77000 r-xp 00003000 08:02 7341212                    /usr/bin/ping
651210d77000-651210d7b000 r--p 0000e000 08:02 7341212                    /usr/bin/ping
651210d7b000-651210d7c000 r--p 00011000 08:02 7341212                    /usr/bin/ping
651210d7c000-651210d80000 rw-p 00012000 08:02 7341212                    /usr/bin/ping
```

**产生多次映射的根本原因：**

1. **段分离机制（Section Separation）**
   - 每个可执行文件包含多个不同的段（sections）
   - 不同段需要不同的内存保护权限
   - 操作系统必须将它们映射到不同的虚拟内存区域

2. **内存保护要求**
   - **代码段（.text）**：`r-x`（可读+可执行），禁止写入防止代码被恶意修改
   - **只读数据段（.rodata）**：`r--`（只读），存放字符串常量和只读数据
   - **数据段（.data/.bss）**：`rw-`（可读写），存放全局变量和静态变量

3. **W^X 安全原则**
   - Write XOR Execute：可写的内存区域不能执行，可执行的内存区域不能写入
   - 这是现代操作系统防止代码注入攻击的重要安全机制

4. **文件偏移量对应关系**
   观察偏移量（第3列）与 `readelf` 输出的对应关系：
   - 代码段：文件偏移 `0x3000` → 映射偏移 `00003000`
   - 只读数据段：文件偏移 `0xe000` → 映射偏移 `0000e000`  
   - 数据段：文件偏移 `0x12000` → 映射偏移 `00012000`

**技术实现机制：**

操作系统使用多次 `mmap` 系统调用实现分段映射：

```c
// 伪代码示例
mmap(addr1, size1, PROT_READ|PROT_EXEC, MAP_PRIVATE, fd, 0x3000);  // 代码段
mmap(addr2, size2, PROT_READ, MAP_PRIVATE, fd, 0xe000);             // 只读数据段  
mmap(addr3, size3, PROT_READ|PROT_WRITE, MAP_PRIVATE, fd, 0x12000); // 数据段
```

这种设计既保证了**内存安全性**（防止恶意代码执行），又提高了**系统效率**（不同段可以采用不同的内存管理策略），完美体现了 CSAPP 中虚拟内存系统的核心设计理念。

#### 2.1.4. Find Full Path of Command

```bash
whereis ping
```

get result:  

```txt
ping: /usr/bin/ping /usr/share/man/man8/ping.8.gz
```

- [ ] TODO: what's the second path?  

and way 2  

```bash
which ping
```

get result:  

```txt
/usr/bin/ping
```

#### 2.1.5. Observe Section Header

```bash
readelf -S /usr/bin/ping
```

`-S` : option to display section headers  

```txt
There are 29 section headers, starting at offset 0x15768:

节头：
  [号] 名称              类型             地址              偏移量
       大小              全体大小          旗标   链接   信息   对齐
  [ 0]                   NULL             0000000000000000  00000000
       0000000000000000  0000000000000000           0     0     0
  [ 1] .interp           PROGBITS         0000000000000318  00000318
       000000000000001c  0000000000000000   A       0     0     1
  [ 2] .note.gnu.pr[...] NOTE             0000000000000338  00000338
       0000000000000030  0000000000000000   A       0     0     8
  [ 3] .note.gnu.bu[...] NOTE             0000000000000368  00000368
       0000000000000024  0000000000000000   A       0     0     4
  [ 4] .note.ABI-tag     NOTE             000000000000038c  0000038c
       0000000000000020  0000000000000000   A       0     0     4
  [ 5] .gnu.hash         GNU_HASH         00000000000003b0  000003b0
       0000000000000024  0000000000000000   A       6     0     8
  [ 6] .dynsym           DYNSYM           00000000000003d8  000003d8
       0000000000000960  0000000000000018   A       7     1     8
  [ 7] .dynstr           STRTAB           0000000000000d38  00000d38
       000000000000047d  0000000000000000   A       0     0     1
  [ 8] .gnu.version      VERSYM           00000000000011b6  000011b6
       00000000000000c8  0000000000000002   A       6     0     2
  [ 9] .gnu.version_r    VERNEED          0000000000001280  00001280
       00000000000000c0  0000000000000000   A       7     2     8
  [10] .rela.dyn         RELA             0000000000001340  00001340
       00000000000004e0  0000000000000018   A       6     0     8
  [11] .rela.plt         RELA             0000000000001820  00001820
       0000000000000870  0000000000000018  AI       6    24     8
  [12] .init             PROGBITS         0000000000003000  00003000
       000000000000001b  0000000000000000  AX       0     0     4
  [13] .plt              PROGBITS         0000000000003020  00003020
       00000000000005b0  0000000000000010  AX       0     0     16
  [14] .plt.got          PROGBITS         00000000000035d0  000035d0
       0000000000000010  0000000000000010  AX       0     0     16
  [15] .plt.sec          PROGBITS         00000000000035e0  000035e0
       00000000000005a0  0000000000000010  AX       0     0     16
  [16] .text             PROGBITS         0000000000003b80  00003b80
       000000000000a002  0000000000000000  AX       0     0     16
  [17] .fini             PROGBITS         000000000000db84  0000db84
       000000000000000d  0000000000000000  AX       0     0     4
  [18] .rodata           PROGBITS         000000000000e000  0000e000
       00000000000026c8  0000000000000000   A       0     0     32
  [19] .eh_frame_hdr     PROGBITS         00000000000106c8  000106c8
       00000000000001ec  0000000000000000   A       0     0     4
  [20] .eh_frame         PROGBITS         00000000000108b8  000108b8
       0000000000000970  0000000000000000   A       0     0     8
  [21] .init_array       INIT_ARRAY       0000000000012ab0  00011ab0
       0000000000000008  0000000000000008  WA       0     0     8
  [22] .fini_array       FINI_ARRAY       0000000000012ab8  00011ab8
       0000000000000008  0000000000000008  WA       0     0     8
  [23] .dynamic          DYNAMIC          0000000000012ac0  00011ac0
       0000000000000210  0000000000000010  WA       7     0     8
  [24] .got              PROGBITS         0000000000012cd0  00011cd0
       0000000000000330  0000000000000008  WA       0     0     8
  [25] .data             PROGBITS         0000000000013000  00012000
       0000000000003620  0000000000000000  WA       0     0     32
  [26] .bss              NOBITS           0000000000016620  00015620
       00000000000011b0  0000000000000000  WA       0     0     32
  [27] .gnu_debuglink    PROGBITS         0000000000000000  00015620
       0000000000000034  0000000000000000           0     0     4
  [28] .shstrtab         STRTAB           0000000000000000  00015654
       0000000000000110  0000000000000000           0     0     1
Key to Flags:
  W (write), A (alloc), X (execute), M (merge), S (strings), I (info),
  L (link order), O (extra OS processing required), G (group), T (TLS),
  C (compressed), x (unknown), o (OS specific), E (exclude),
  D (mbind), l (large), p (processor specific)
```

##### 2.1.5.1. 段头表与内存映射的地址对应关系分析

通过对比 `readelf -S` 的段头表和 `/proc/PID/maps` 的内存映射，我们可以发现重要的地址对应关系：

**关键段的地址对应：**

1. **代码段（.text）对应关系：**

   ```txt
   readelf输出: [16] .text    PROGBITS  0000000000003b80  00003000
   内存映射:    651210d6c000-651210d77000 r-xp 00003000 08:02 7341212  /usr/bin/ping
   ```

   - 段头表中 `.text` 段的文件偏移量是 `0x3000`
   - 内存映射中对应的偏移量也是 `00003000`
   - 虚拟地址：`651210d6c000` 是代码段在虚拟内存中的起始地址

2. **只读数据段（.rodata）对应关系：**

   ```txt
   readelf输出: [18] .rodata  PROGBITS  000000000000e000  0000e000
   内存映射:    651210d77000-651210d7b000 r--p 0000e000 08:02 7341212  /usr/bin/ping
   ```

   - 段头表中 `.rodata` 段的文件偏移量是 `0xe000`
   - 内存映射中对应的偏移量也是 `0000e000`
   - 虚拟地址：`651210d77000` 是只读数据段在虚拟内存中的起始地址

3. **数据段（.data）对应关系：**

   ```txt
   readelf输出: [25] .data    PROGBITS  0000000000013000  00012000
   内存映射:    651210d7c000-651210d80000 rw-p 00012000 08:02 7341212  /usr/bin/ping
   ```

   - 段头表中 `.data` 段的文件偏移量是 `0x12000`
   - 内存映射中对应的偏移量也是 `00012000`
   - 虚拟地址：`651210d7c000` 是数据段在虚拟内存中的起始地址

**重要发现：**

1. **文件偏移量的一致性**：
   - `readelf` 中的"偏移量"列与 `/proc/PID/maps` 中的第3列完全对应
   - 这证明了内存映射直接基于文件中段的物理位置

2. **虚拟地址的重新分配**：
   - `readelf` 中的"地址"列（如 `.text` 的 `0x3b80`）是链接时的虚拟地址
   - 实际运行时，操作系统会重新分配虚拟地址（如 `651210d6c000`）
   - 这体现了**地址空间布局随机化（ASLR）** 的安全机制

3. **段权限的对应**：
   - `.text` 段：`AX` 标志 → `r-xp` 权限（可读+可执行）
   - `.rodata` 段：`A` 标志 → `r--p` 权限（只读）
   - `.data` 段：`WA` 标志 → `rw-p` 权限（可读写）

**CSAPP核心概念体现：**

这种对应关系完美展示了CSAPP中虚拟内存的核心机制：

- **虚拟地址翻译**：从链接时地址到运行时地址的映射
- **内存保护**：不同段的不同访问权限
- **按需加载**：只有被访问的段才会真正加载到物理内存

### 2.2. Compare the Processes In Different Shell

#### 2.2.1. Start Two Processes in Different Shells

Shell A and B:  

```bash
top &
```

Find PID:  

```bash
ps -a
```

get result:  

```txt
2056533 pts/0    00:00:00 top
2056689 pts/1    00:00:00 top
```

the `pts/0` and `pts/1` indicate the different shell sessions.  
0 to A, 1 to B.  

#### 2.2.2. Observe Maps of Memory

Shell A:  

```txt
5b8ff19ca000-5b8ff19cd000 r--p 00000000 08:02 7350013                    /usr/bin/top
5b8ff19cd000-5b8ff19e2000 r-xp 00003000 08:02 7350013                    /usr/bin/top
5b8ff19e2000-5b8ff19e9000 r--p 00018000 08:02 7350013                    /usr/bin/top
5b8ff19e9000-5b8ff19ea000 r--p 0001e000 08:02 7350013                    /usr/bin/top
5b8ff19ea000-5b8ff19ec000 rw-p 0001f000 08:02 7350013                    /usr/bin/top
5b8ff19ec000-5b8ff1a18000 rw-p 00000000 00:00 0 
5b8ffbb1f000-5b8ffbb69000 rw-p 00000000 00:00 0                          [heap]
76b27a000000-76b27a598000 r--p 00000000 08:02 7342716                    /usr/lib/locale/locale-archive
76b27a6f9000-76b27a6fd000 r--p 00000000 08:02 7344640                    /usr/lib/x86_64-linux-gnu/libgpg-error.so.0.34.0
76b27a6fd000-76b27a713000 r-xp 00004000 08:02 7344640                    /usr/lib/x86_64-linux-gnu/libgpg-error.so.0.34.0
76b27a713000-76b27a71c000 r--p 0001a000 08:02 7344640                    /usr/lib/x86_64-linux-gnu/libgpg-error.so.0.34.0
76b27a71c000-76b27a71d000 r--p 00023000 08:02 7344640                    /usr/lib/x86_64-linux-gnu/libgpg-error.so.0.34.0
76b27a71d000-76b27a71e000 rw-p 00024000 08:02 7344640                    /usr/lib/x86_64-linux-gnu/libgpg-error.so.0.34.0
76b27a71e000-76b27a722000 r--p 00000000 08:02 7352085                    /usr/lib/x86_64-linux-gnu/libzstd.so.1.5.5
76b27a722000-76b27a7c9000 r-xp 00004000 08:02 7352085                    /usr/lib/x86_64-linux-gnu/libzstd.so.1.5.5
76b27a7c9000-76b27a7d6000 r--p 000ab000 08:02 7352085                    /usr/lib/x86_64-linux-gnu/libzstd.so.1.5.5
76b27a7d6000-76b27a7d7000 r--p 000b7000 08:02 7352085                    /usr/lib/x86_64-linux-gnu/libzstd.so.1.5.5
76b27a7d7000-76b27a7d8000 rw-p 000b8000 08:02 7352085                    /usr/lib/x86_64-linux-gnu/libzstd.so.1.5.5
76b27a7d8000-76b27a7e7000 r--p 00000000 08:02 7351566                    /usr/lib/x86_64-linux-gnu/libgcrypt.so.20.4.3
76b27a7e7000-76b27a8db000 r-xp 0000f000 08:02 7351566                    /usr/lib/x86_64-linux-gnu/libgcrypt.so.20.4.3
76b27a8db000-76b27a916000 r--p 00103000 08:02 7351566                    /usr/lib/x86_64-linux-gnu/libgcrypt.so.20.4.3
76b27a916000-76b27a91b000 r--p 0013e000 08:02 7351566                    /usr/lib/x86_64-linux-gnu/libgcrypt.so.20.4.3
76b27a91b000-76b27a91f000 rw-p 00143000 08:02 7351566                    /usr/lib/x86_64-linux-gnu/libgcrypt.so.20.4.3
76b27a91f000-76b27a920000 rw-p 00000000 00:00 0 
76b27a920000-76b27a936000 r--p 00000000 08:02 7350612                    /usr/lib/x86_64-linux-gnu/libsystemd.so.0.38.0
76b27a936000-76b27a9c5000 r-xp 00016000 08:02 7350612                    /usr/lib/x86_64-linux-gnu/libsystemd.so.0.38.0
76b27a9c5000-76b27a9f3000 r--p 000a5000 08:02 7350612                    /usr/lib/x86_64-linux-gnu/libsystemd.so.0.38.0
76b27a9f3000-76b27a9fe000 r--p 000d2000 08:02 7350612                    /usr/lib/x86_64-linux-gnu/libsystemd.so.0.38.0
76b27a9fe000-76b27a9ff000 rw-p 000dd000 08:02 7350612                    /usr/lib/x86_64-linux-gnu/libsystemd.so.0.38.0
76b27a9ff000-76b27aa00000 rw-p 00000000 00:00 0 
76b27aa00000-76b27aa28000 r--p 00000000 08:02 7370227                    /usr/lib/x86_64-linux-gnu/libc.so.6
76b27aa28000-76b27abb0000 r-xp 00028000 08:02 7370227                    /usr/lib/x86_64-linux-gnu/libc.so.6
76b27abb0000-76b27abff000 r--p 001b0000 08:02 7370227                    /usr/lib/x86_64-linux-gnu/libc.so.6
76b27abff000-76b27ac03000 r--p 001fe000 08:02 7370227                    /usr/lib/x86_64-linux-gnu/libc.so.6
76b27ac03000-76b27ac05000 rw-p 00202000 08:02 7370227                    /usr/lib/x86_64-linux-gnu/libc.so.6
76b27ac05000-76b27ac12000 rw-p 00000000 00:00 0 
76b27ac12000-76b27ac15000 r--p 00000000 08:02 7351815                    /usr/lib/x86_64-linux-gnu/libnuma.so.1.0.0
76b27ac15000-76b27ac1c000 r-xp 00003000 08:02 7351815                    /usr/lib/x86_64-linux-gnu/libnuma.so.1.0.0
76b27ac1c000-76b27ac1e000 r--p 0000a000 08:02 7351815                    /usr/lib/x86_64-linux-gnu/libnuma.so.1.0.0
76b27ac1e000-76b27ac1f000 r--p 0000b000 08:02 7351815                    /usr/lib/x86_64-linux-gnu/libnuma.so.1.0.0
76b27ac1f000-76b27ac20000 rw-p 0000c000 08:02 7351815                    /usr/lib/x86_64-linux-gnu/libnuma.so.1.0.0
76b27ac20000-76b27ac25000 rw-p 00000000 00:00 0 
76b27ac25000-76b27ac28000 r--p 00000000 08:02 7340184                    /usr/lib/x86_64-linux-gnu/liblzma.so.5.4.5
76b27ac28000-76b27ac4a000 r-xp 00003000 08:02 7340184                    /usr/lib/x86_64-linux-gnu/liblzma.so.5.4.5
76b27ac4a000-76b27ac55000 r--p 00025000 08:02 7340184                    /usr/lib/x86_64-linux-gnu/liblzma.so.5.4.5
76b27ac55000-76b27ac56000 r--p 00030000 08:02 7340184                    /usr/lib/x86_64-linux-gnu/liblzma.so.5.4.5
76b27ac56000-76b27ac57000 rw-p 00031000 08:02 7340184                    /usr/lib/x86_64-linux-gnu/liblzma.so.5.4.5
76b27ac57000-76b27ac5a000 r--p 00000000 08:02 7351729                    /usr/lib/x86_64-linux-gnu/liblz4.so.1.9.4
76b27ac5a000-76b27ac75000 r-xp 00003000 08:02 7351729                    /usr/lib/x86_64-linux-gnu/liblz4.so.1.9.4
76b27ac75000-76b27ac77000 r--p 0001e000 08:02 7351729                    /usr/lib/x86_64-linux-gnu/liblz4.so.1.9.4
76b27ac77000-76b27ac78000 r--p 00020000 08:02 7351729                    /usr/lib/x86_64-linux-gnu/liblz4.so.1.9.4
76b27ac78000-76b27ac79000 rw-p 00021000 08:02 7351729                    /usr/lib/x86_64-linux-gnu/liblz4.so.1.9.4
76b27ac79000-76b27ac7b000 rw-p 00000000 00:00 0 
76b27ac7b000-76b27ac7e000 r--p 00000000 08:02 7340113                    /usr/lib/x86_64-linux-gnu/libcap.so.2.66
76b27ac7e000-76b27ac84000 r-xp 00003000 08:02 7340113                    /usr/lib/x86_64-linux-gnu/libcap.so.2.66
76b27ac84000-76b27ac86000 r--p 00009000 08:02 7340113                    /usr/lib/x86_64-linux-gnu/libcap.so.2.66
76b27ac86000-76b27ac87000 r--p 0000b000 08:02 7340113                    /usr/lib/x86_64-linux-gnu/libcap.so.2.66
76b27ac87000-76b27ac88000 rw-p 0000c000 08:02 7340113                    /usr/lib/x86_64-linux-gnu/libcap.so.2.66
76b27ac88000-76b27ac96000 r--p 00000000 08:02 7351974                    /usr/lib/x86_64-linux-gnu/libtinfo.so.6.4
76b27ac96000-76b27aca9000 r-xp 0000e000 08:02 7351974                    /usr/lib/x86_64-linux-gnu/libtinfo.so.6.4
76b27aca9000-76b27acb7000 r--p 00021000 08:02 7351974                    /usr/lib/x86_64-linux-gnu/libtinfo.so.6.4
76b27acb7000-76b27acbb000 r--p 0002e000 08:02 7351974                    /usr/lib/x86_64-linux-gnu/libtinfo.so.6.4
76b27acbb000-76b27acbc000 rw-p 00032000 08:02 7351974                    /usr/lib/x86_64-linux-gnu/libtinfo.so.6.4
76b27acbc000-76b27acc9000 r--p 00000000 08:02 7349862                    /usr/lib/x86_64-linux-gnu/libproc2.so.0.0.2
76b27acc9000-76b27acde000 r-xp 0000d000 08:02 7349862                    /usr/lib/x86_64-linux-gnu/libproc2.so.0.0.2
76b27acde000-76b27ace8000 r--p 00022000 08:02 7349862                    /usr/lib/x86_64-linux-gnu/libproc2.so.0.0.2
76b27ace8000-76b27acee000 r--p 0002b000 08:02 7349862                    /usr/lib/x86_64-linux-gnu/libproc2.so.0.0.2
76b27acee000-76b27acef000 rw-p 00031000 08:02 7349862                    /usr/lib/x86_64-linux-gnu/libproc2.so.0.0.2
76b27acf4000-76b27acfb000 r--s 00000000 08:02 7370216                    /usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache
76b27acfb000-76b27acff000 r--p 00000000 08:02 7639501                    /usr/share/locale-langpack/zh_CN/LC_MESSAGES/procps-ng.mo
76b27acff000-76b27ad01000 rw-p 00000000 00:00 0 
76b27ad01000-76b27ad05000 r--p 00000000 00:00 0                          [vvar]
76b27ad05000-76b27ad07000 r-xp 00000000 00:00 0                          [vdso]
76b27ad07000-76b27ad08000 r--p 00000000 08:02 7370224                    /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
76b27ad08000-76b27ad33000 r-xp 00001000 08:02 7370224                    /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
76b27ad33000-76b27ad3d000 r--p 0002c000 08:02 7370224                    /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
76b27ad3d000-76b27ad3f000 r--p 00036000 08:02 7370224                    /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
76b27ad3f000-76b27ad41000 rw-p 00038000 08:02 7370224                    /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
7ffd6fdb8000-7ffd6fdd9000 rw-p 00000000 00:00 0                          [stack]
ffffffffff600000-ffffffffff601000 --xp 00000000 00:00 0                  [vsyscall]
```

Shell B:

```txt
603dab795000-603dab798000 r--p 00000000 08:02 7350013                    /usr/bin/top
603dab798000-603dab7ad000 r-xp 00003000 08:02 7350013                    /usr/bin/top
603dab7ad000-603dab7b4000 r--p 00018000 08:02 7350013                    /usr/bin/top
603dab7b4000-603dab7b5000 r--p 0001e000 08:02 7350013                    /usr/bin/top
603dab7b5000-603dab7b7000 rw-p 0001f000 08:02 7350013                    /usr/bin/top
603dab7b7000-603dab7e3000 rw-p 00000000 00:00 0 
603de469d000-603de46e7000 rw-p 00000000 00:00 0                          [heap]
7b5813600000-7b5813b98000 r--p 00000000 08:02 7342716                    /usr/lib/locale/locale-archive
7b5813d00000-7b5813d03000 r--p 00000000 08:02 7351815                    /usr/lib/x86_64-linux-gnu/libnuma.so.1.0.0
7b5813d03000-7b5813d0a000 r-xp 00003000 08:02 7351815                    /usr/lib/x86_64-linux-gnu/libnuma.so.1.0.0
7b5813d0a000-7b5813d0c000 r--p 0000a000 08:02 7351815                    /usr/lib/x86_64-linux-gnu/libnuma.so.1.0.0
7b5813d0c000-7b5813d0d000 r--p 0000b000 08:02 7351815                    /usr/lib/x86_64-linux-gnu/libnuma.so.1.0.0
7b5813d0d000-7b5813d0e000 rw-p 0000c000 08:02 7351815                    /usr/lib/x86_64-linux-gnu/libnuma.so.1.0.0
7b5813d1e000-7b5813d22000 r--p 00000000 08:02 7352085                    /usr/lib/x86_64-linux-gnu/libzstd.so.1.5.5
7b5813d22000-7b5813dc9000 r-xp 00004000 08:02 7352085                    /usr/lib/x86_64-linux-gnu/libzstd.so.1.5.5
7b5813dc9000-7b5813dd6000 r--p 000ab000 08:02 7352085                    /usr/lib/x86_64-linux-gnu/libzstd.so.1.5.5
7b5813dd6000-7b5813dd7000 r--p 000b7000 08:02 7352085                    /usr/lib/x86_64-linux-gnu/libzstd.so.1.5.5
7b5813dd7000-7b5813dd8000 rw-p 000b8000 08:02 7352085                    /usr/lib/x86_64-linux-gnu/libzstd.so.1.5.5
7b5813dd8000-7b5813de7000 r--p 00000000 08:02 7351566                    /usr/lib/x86_64-linux-gnu/libgcrypt.so.20.4.3
7b5813de7000-7b5813edb000 r-xp 0000f000 08:02 7351566                    /usr/lib/x86_64-linux-gnu/libgcrypt.so.20.4.3
7b5813edb000-7b5813f16000 r--p 00103000 08:02 7351566                    /usr/lib/x86_64-linux-gnu/libgcrypt.so.20.4.3
7b5813f16000-7b5813f1b000 r--p 0013e000 08:02 7351566                    /usr/lib/x86_64-linux-gnu/libgcrypt.so.20.4.3
7b5813f1b000-7b5813f1f000 rw-p 00143000 08:02 7351566                    /usr/lib/x86_64-linux-gnu/libgcrypt.so.20.4.3
7b5813f1f000-7b5813f20000 rw-p 00000000 00:00 0 
7b5813f20000-7b5813f36000 r--p 00000000 08:02 7350612                    /usr/lib/x86_64-linux-gnu/libsystemd.so.0.38.0
7b5813f36000-7b5813fc5000 r-xp 00016000 08:02 7350612                    /usr/lib/x86_64-linux-gnu/libsystemd.so.0.38.0
7b5813fc5000-7b5813ff3000 r--p 000a5000 08:02 7350612                    /usr/lib/x86_64-linux-gnu/libsystemd.so.0.38.0
7b5813ff3000-7b5813ffe000 r--p 000d2000 08:02 7350612                    /usr/lib/x86_64-linux-gnu/libsystemd.so.0.38.0
7b5813ffe000-7b5813fff000 rw-p 000dd000 08:02 7350612                    /usr/lib/x86_64-linux-gnu/libsystemd.so.0.38.0
7b5813fff000-7b5814000000 rw-p 00000000 00:00 0 
7b5814000000-7b5814028000 r--p 00000000 08:02 7370227                    /usr/lib/x86_64-linux-gnu/libc.so.6
7b5814028000-7b58141b0000 r-xp 00028000 08:02 7370227                    /usr/lib/x86_64-linux-gnu/libc.so.6
7b58141b0000-7b58141ff000 r--p 001b0000 08:02 7370227                    /usr/lib/x86_64-linux-gnu/libc.so.6
7b58141ff000-7b5814203000 r--p 001fe000 08:02 7370227                    /usr/lib/x86_64-linux-gnu/libc.so.6
7b5814203000-7b5814205000 rw-p 00202000 08:02 7370227                    /usr/lib/x86_64-linux-gnu/libc.so.6
7b5814205000-7b5814212000 rw-p 00000000 00:00 0 
7b581421f000-7b5814224000 rw-p 00000000 00:00 0 
7b5814224000-7b5814228000 r--p 00000000 08:02 7344640                    /usr/lib/x86_64-linux-gnu/libgpg-error.so.0.34.0
7b5814228000-7b581423e000 r-xp 00004000 08:02 7344640                    /usr/lib/x86_64-linux-gnu/libgpg-error.so.0.34.0
7b581423e000-7b5814247000 r--p 0001a000 08:02 7344640                    /usr/lib/x86_64-linux-gnu/libgpg-error.so.0.34.0
7b5814247000-7b5814248000 r--p 00023000 08:02 7344640                    /usr/lib/x86_64-linux-gnu/libgpg-error.so.0.34.0
7b5814248000-7b5814249000 rw-p 00024000 08:02 7344640                    /usr/lib/x86_64-linux-gnu/libgpg-error.so.0.34.0
7b5814249000-7b581424c000 r--p 00000000 08:02 7340184                    /usr/lib/x86_64-linux-gnu/liblzma.so.5.4.5
7b581424c000-7b581426e000 r-xp 00003000 08:02 7340184                    /usr/lib/x86_64-linux-gnu/liblzma.so.5.4.5
7b581426e000-7b5814279000 r--p 00025000 08:02 7340184                    /usr/lib/x86_64-linux-gnu/liblzma.so.5.4.5
7b5814279000-7b581427a000 r--p 00030000 08:02 7340184                    /usr/lib/x86_64-linux-gnu/liblzma.so.5.4.5
7b581427a000-7b581427b000 rw-p 00031000 08:02 7340184                    /usr/lib/x86_64-linux-gnu/liblzma.so.5.4.5
7b581427b000-7b581427e000 r--p 00000000 08:02 7351729                    /usr/lib/x86_64-linux-gnu/liblz4.so.1.9.4
7b581427e000-7b5814299000 r-xp 00003000 08:02 7351729                    /usr/lib/x86_64-linux-gnu/liblz4.so.1.9.4
7b5814299000-7b581429b000 r--p 0001e000 08:02 7351729                    /usr/lib/x86_64-linux-gnu/liblz4.so.1.9.4
7b581429b000-7b581429c000 r--p 00020000 08:02 7351729                    /usr/lib/x86_64-linux-gnu/liblz4.so.1.9.4
7b581429c000-7b581429d000 rw-p 00021000 08:02 7351729                    /usr/lib/x86_64-linux-gnu/liblz4.so.1.9.4
7b581429d000-7b581429f000 rw-p 00000000 00:00 0 
7b581429f000-7b58142a2000 r--p 00000000 08:02 7340113                    /usr/lib/x86_64-linux-gnu/libcap.so.2.66
7b58142a2000-7b58142a8000 r-xp 00003000 08:02 7340113                    /usr/lib/x86_64-linux-gnu/libcap.so.2.66
7b58142a8000-7b58142aa000 r--p 00009000 08:02 7340113                    /usr/lib/x86_64-linux-gnu/libcap.so.2.66
7b58142aa000-7b58142ab000 r--p 0000b000 08:02 7340113                    /usr/lib/x86_64-linux-gnu/libcap.so.2.66
7b58142ab000-7b58142ac000 rw-p 0000c000 08:02 7340113                    /usr/lib/x86_64-linux-gnu/libcap.so.2.66
7b58142ac000-7b58142ba000 r--p 00000000 08:02 7351974                    /usr/lib/x86_64-linux-gnu/libtinfo.so.6.4
76b27ac96000-76b27aca9000 r-xp 0000e000 08:02 7351974                    /usr/lib/x86_64-linux-gnu/libtinfo.so.6.4
76b27aca9000-76b27acb7000 r--p 00021000 08:02 7351974                    /usr/lib/x86_64-linux-gnu/libtinfo.so.6.4
76b27acb7000-76b27acbb000 r--p 0002e000 08:02 7351974                    /usr/lib/x86_64-linux-gnu/libtinfo.so.6.4
76b27acbb000-76b27acbc000 rw-p 00032000 08:02 7351974                    /usr/lib/x86_64-linux-gnu/libtinfo.so.6.4
76b27acbc000-76b27acc9000 r--p 00000000 08:02 7349862                    /usr/lib/x86_64-linux-gnu/libproc2.so.0.0.2
76b27acc9000-76b27acde000 r-xp 0000d000 08:02 7349862                    /usr/lib/x86_64-linux-gnu/libproc2.so.0.0.2
76b27acde000-76b27ace8000 r--p 00022000 08:02 7349862                    /usr/lib/x86_64-linux-gnu/libproc2.so.0.0.2
76b27ace8000-76b27acee000 r--p 0002b000 08:02 7349862                    /usr/lib/x86_64-linux-gnu/libproc2.so.0.0.2
76b27acee000-76b27acef000 rw-p 00031000 08:02 7349862                    /usr/lib/x86_64-linux-gnu/libproc2.so.0.0.2
76b27acf4000-76b27acfb000 r--s 00000000 08:02 7370216                    /usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache
76b27acfb000-76b27acff000 r--p 00000000 08:02 7639501                    /usr/share/locale-langpack/zh_CN/LC_MESSAGES/procps-ng.mo
76b27acff000-76b27ad01000 rw-p 00000000 00:00 0 
76b27ad01000-76b27ad05000 r--p 00000000 00:00 0                          [vvar]
76b27ad05000-76b27ad07000 r-xp 00000000 00:00 0                          [vdso]
76b27ad07000-76b27ad08000 r--p 00000000 08:02 7370224                    /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
76b27ad08000-76b27ad33000 r-xp 00001000 08:02 7370224                    /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
76b27ad33000-76b27ad3d000 r--p 0002c000 08:02 7370224                    /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
76b27ad3d000-76b27ad3f000 r--p 00036000 08:02 7370224                    /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
76b27ad3f000-76b27ad41000 rw-p 00038000 08:02 7370224                    /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
7ffc6f8ac000-7ffc6f8cd000 rw-p 00000000 00:00 0                          [stack]
ffffffffff600000-ffffffffff601000 --xp 00000000 00:00 0                  [vsyscall]
```

##### 2.2.2.1. Analyze the Difference

let's call the `top` processes in different shells A and B `p1` and `p2`.

1. **虚拟地址差异（ASLR效应）**
    `p1` 和 `p2` 共享相同的可执行文件 `/usr/bin/top`
    加载方式相同，但虚拟地址完全不同
    这是由于地址空间布局随机化（ASLR）机制导致的安全特性  

    ALSR will use randomized base addresses for the executable and shared libraries  

2. **动态库加载顺序差异分析**
    `p1` 和 `p2` 实际加载了相同的动态库文件  
    但某些库的加载顺序存在差异  
    或许是应为动态连接器的优化造成的？  

### 2.3. `/proc` Directory in Linux

we have used the `/proc` directory above  
to find the `maps` file of a process  

we can easily find that there are many dirs under `/proc`  
with the name of current running processes' PIDs  

and other files in `/proc`  
which store many important info about hardwares and softwares  
of the system  

we can use `man` to briefly learn about it  

```bash
man proc
```

select some info  

```txt
proc(5)                                                                   File Formats Manual                                                                   proc(5)

NAME
       proc - process information, system information, and sysctl pseudo-filesystem

DESCRIPTION
       The  proc  filesystem  is a pseudo-filesystem which provides an interface to kernel data structures.  It is commonly mounted at /proc.  Typically, it is mounted
       automatically by the system, but it can also be mounted manually using a command such as:

           mount -t proc proc /proc

       Most of the files in the proc filesystem are read-only, but some files are writable, allowing kernel variables to be changed.

   Overview
       Underneath /proc, there are the following general groups of files and subdirectories:

       /proc/pid subdirectories
              Each one of these subdirectories contains files and subdirectories exposing information about the process with the corresponding process ID.

              Underneath each of the /proc/pid directories, a task subdirectory contains subdirectories of the form task/tid, which contain  corresponding  information
              about each of the threads in the process, where tid is the kernel thread ID of the thread.

              The  /proc/pid subdirectories are visible when iterating through /proc with getdents(2) (and thus are visible when one uses ls(1) to view the contents of
              /proc).

       /proc/tid subdirectories
              Each one of these subdirectories contains files and subdirectories exposing information about the thread with the corresponding thread ID.  The  contents
              of these directories are the same as the corresponding /proc/pid/task/tid directories.

              The /proc/tid subdirectories are not visible when iterating through /proc with getdents(2) (and thus are not visible when one uses ls(1) to view the con‐
              tents of /proc).

       /proc/self
              When a process accesses this magic symbolic link, it resolves to the process's own /proc/pid directory.

       /proc/thread-self
              When a thread accesses this magic symbolic link, it resolves to the process's own /proc/self/task/tid directory.

       /proc/[a-z]*
              Various other files and subdirectories under /proc expose system-wide information.
```
