# Class 14 : Virtual Memory

**VM(Virtual Memory)** is an abstraction of the main memory  
provided by the OS to the user  

it can provide an enormous, consistent and private address space to each process  
this is very meaningful  

three crucial abilities:  

1. treat the main memory as a cache of some address space on the disk  
    make fully use of the disk space  
2. provide a consistent view of the address space to each process  
    significantly simplify the memory management  
3. protect the address space of each process from being broken by other processes  

all in all  
VM is one of the most important concepts of computer system  
and one of the most important reason for this is:  
**it works silently all the time**  
in other words  
we as the user need to pay no attention to it  
and it can just work well!  

then why we need to learn it?  
several reasons:  

1. VM is central  
    it almost pervades everywhere in the system  
    so we should learn it to better understand the system  
2. VM is powerful  
    it provides great power to the programs  
    understanding it can help us better use it's power in programming  
3. VM is dangerous  
    every time the program uses some var, a pointer or `malloc` and so on  
    it interacts with the VM  
    if the interaction is not wrong, it may cause some serious problems  
    like segmentation fault, protection fault and even just get the wrong result without any information  
    so we need to learn it to avoid these problems  

here, we'll first learn about how VM works  
and how to use and manage it in our programs  

---

- [1. Physical and Virtual Addressing(物理和虚拟寻址)](#1-physical-and-virtual-addressing物理和虚拟寻址)
    - [1.1. Physical Addressing(物理寻址)](#11-physical-addressing物理寻址)
    - [1.2. Virtual Addressing(虚拟寻址)](#12-virtual-addressing虚拟寻址)
- [2. Address Space(地址空间)](#2-address-space地址空间)
- [3. VM as a Tool for Caching](#3-vm-as-a-tool-for-caching)
    - [3.1. DRAM Cache Hierarchy](#31-dram-cache-hierarchy)
    - [3.2. Page Table(页表)](#32-page-table页表)
    - [3.3. PT(页表)](#33-pt页表)
        - [3.3.1. PTE(页表条目)](#331-pte页表条目)
        - [3.3.2. Working Principles](#332-working-principles)
    - [3.4. Page Hits(页命中)](#34-page-hits页命中)
    - [3.5. Page Faults(缺页)](#35-page-faults缺页)
    - [3.6. Allocating Page](#36-allocating-page)
    - [3.7. Locality Rescue](#37-locality-rescue)
- [4. VM as a Tool for Memory Management](#4-vm-as-a-tool-for-memory-management)
- [5. VM as a Tool for Memory Protection](#5-vm-as-a-tool-for-memory-protection)
- [6. Address Translation(地址翻译)](#6-address-translation地址翻译)
    - [6.1. Combining Cache and VM](#61-combining-cache-and-vm)
    - [6.2. Exploiting TLB to Speed Up Address Translation](#62-exploiting-tlb-to-speed-up-address-translation)
    - [6.3. Multilevel Page Table](#63-multilevel-page-table)

---

## 1. Physical and Virtual Addressing(物理和虚拟寻址)

the main memory in the CS is organized as a linear array  
composed of M contiguous byte units  

every byte has a unique address, called  
**physical address(PA, 物理地址)**  

### 1.1. Physical Addressing(物理寻址)

when we think about the memory,

we may naturally think up the easiest way  
how the CPU access the memory:  
use the PA to access the data it needs in the memory  

this way is called  
**physical addressing(物理寻址)**  

when the CPU needs to access a data,  
it generates a PA and send it to the memory  
then the memory returns the data needed to the CPU  

early PC and some special systems use this way  
modern processors use another way:  
**virtual addressing(虚拟寻址)**  

### 1.2. Virtual Addressing(虚拟寻址)

in this way,  
CPU generates a **virtual address(VA)** to access the main memory  
which will by converted to the corresponding PA before sent to the memory  

this conversion is called  
**address translation(地址翻译)**  
it needs the tight cooperation between the hardware and the OS  

**MMU(Memory Management Unit)** is very important in this process  
the MMU is a special hardware unit in the CPU chip  
it makes use of the retrieving table in the memory to dynamically translate the VA to PA  
and the table is managed by the OS  

## 2. Address Space(地址空间)

address space, the set of addresses  
consisting of a contiguous set of non-negative integers  

if the integers in the address space is contiguous  
we call the address space **linear**  
and here we suppose the address space used below is linear  

just like PA and VA  
the address spaces can be virtual or physical  

modern OS usually supports 32-bits or 64-bits virtual address space  

we should clearly distinguish the data object(byte) from their property(address)  
don's get mixed up!  

## 3. VM as a Tool for Caching

we have mentioned above that  
VM is organized as a linear array  
consists of N contiguous byte units stores in the disk  

every byte has a unique VP as the reference to the array  
the content in the array can be cached in the main memory  

disk(lower level)'s data is cut into fixed-size blocks  
which is the unit to be transferred between the disk and the main memory(higher level)  
and this block is called  
**page(页)**  

in virtual memory, it's **VP(virtual page)**  
with the fixed size of $P = 2^p$  
*it's usually 4KB in modern system*  

and in the physical memory, it's **PP(physical page)**  
with the same size as the VP  
*it's also called page frame*  

at any time, the VP's set can be divided into three disjoint subsets:  

1. unallocated  
    the pages haven't been allocated(or created) by the VM system  
    in other words, it's not associated with any data  
    so it of course doesn't occupy any space in the disk  
2. cached  
    the pages have been allocated and already cached in the main memory  
3. uncached  
    the pages have been allocated but not cached in the main memory  

in other words,  
unallocated pages can't be found anywhere in the physical system  
cached pages can be found in the main memory  
uncached pages can be found in the disk but not in the main memory  

### 3.1. DRAM Cache Hierarchy

we need to know briefly about the Cache Hierarchy in the CS  

in Modern CS, there are usually L1, L2 and L3 caches  
which are between the CPU and the main memory  
we call them **SRAM**  
and the main memory is **DRAM**  

**SRAM** is 10 times faster than **DRAM**  
while **DRAM** is almost 100000 times faster than the disk  
so if we don't hit the cache in the DRAM  
it will cost a lot of time to access the disk  
we can call it punishment  

so we decide to access larger data block once so that  
the possibility of missing the cache can be reduced  
this is the page  
which usually takes 4KB~2MB in size, very large  

and this is related to more conventional algorithms  
we don't mention here  

we just need to know that  
the DRAM cache hierarchy is driven by the need to reduce the penalty  

### 3.2. Page Table(页表)

VM system needs a way to judge whether a VP iss cached in somewhere in the DRAM  
if it is, which PP is it cached in?  
otherwise, it should choose a PP as sacrifice to cache the VP  

### 3.3. PT(页表)

we use a data structure called **page table** to do this  
which is stored in physical memory  

#### 3.3.1. PTE(页表条目)

PT is actually an array of **PTE(page table entry)**  
which projects the VP to the corresponding PP  

#### 3.3.2. Working Principles

every VP has a PTE in the PT at the fixed offset position  
so the order the PTE in PT actually implies it's corresponding VP  

how to understand PTE?  
we can have a understanding now as below  
every PTE constructed by:  

1. 1 valid bit  
    which indicates whether the VP is cached in the DRAM  
    *in other words, if is 0: 1. the VP is uncached; 2. the VP is unallocated*  
2. n bits of address  
    which indicates the VPN(virtual page number)  
    or the address of data on the disk  
    *if valid bit not set, null means unallocated, or it's the address of the data on the disk*  

### 3.4. Page Hits(页命中)

if the CPU want to access a word in some VP(e.g. VP 2)  
*the address translation hardware can use the VA to locate the PTE2*  
and the VP 2 is cached in the DRAM  
*valid bit set to 1*  
then the hardware can use the address in the PTE to construct the PA  

*here the details are not mentioned*  
*we'll talk about it later*  

### 3.5. Page Faults(缺页)

just take the above example,  
suppose that the data in VP 2 is not cached  
*valid bit set to 0*  
then the hardware will raise a **page fault exception**  

this will call the handler in the kernel  
which will choose a sacrificial PP(e.g. PP 1) to cache the VP 2  
if there is a VP(e.g. VP 4) cached in PP 1, VP 4 will be write back to disk at first  
*don't forget the PTE 4 will also be modified here*  
and then the VP 2 will be copied from the corresponding disk address to the PP 1  
after that, the PTE2 will be updated  

then kernel will pass control back to the user program  
the instruction that caused the page fault will be restarted  
now it can hit the page required  

### 3.6. Allocating Page

### 3.7. Locality Rescue

## 4. VM as a Tool for Memory Management

## 5. VM as a Tool for Memory Protection

## 6. Address Translation(地址翻译)

### 6.1. Combining Cache and VM

### 6.2. Exploiting TLB to Speed Up Address Translation

### 6.3. Multilevel Page Table
