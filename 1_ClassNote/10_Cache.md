# Class 15-16 : Storage Hierarchy and Cache

---

- [1. Storage Technology](#1-storage-technology)
    - [1.1. RAM(Random Access Memory, 随机访问存储器)](#11-ramrandom-access-memory-随机访问存储器)
    - [1.2. Magnetic Disk Storage](#12-magnetic-disk-storage)
    - [1.3. SSD(Solid State Disk)](#13-ssdsolid-state-disk)
- [2. Locality(局部性)](#2-locality局部性)
- [3. Hierarchy of Storage](#3-hierarchy-of-storage)
    - [3.1. Cache in Storage Hierarchy](#31-cache-in-storage-hierarchy)
- [4. Cache](#4-cache)
    - [4.1. Universal Cache Organization structure(通用高速缓存存储器组织结构)](#41-universal-cache-organization-structure通用高速缓存存储器组织结构)
    - [4.2. Direct-Mapped Cache(直接映射高速缓存)](#42-direct-mapped-cache直接映射高速缓存)
    - [4.3. Set-Associative Cache(组相联高速缓存)](#43-set-associative-cache组相联高速缓存)
    - [4.4. Fully Associative Cache(全相联高速缓存)](#44-fully-associative-cache全相联高速缓存)
    - [4.5. Problem about Writing](#45-problem-about-writing)
    - [4.6. An Real Example](#46-an-real-example)
    - [4.7. Cache Arguments' Influence on Performance](#47-cache-arguments-influence-on-performance)
- [5. Write Cache Friendly Code](#5-write-cache-friendly-code)
- [6. Complex: How the Cache Influences the Performance of the Program](#6-complex-how-the-cache-influences-the-performance-of-the-program)
    - [6.1. Storage Mountain](#61-storage-mountain)

---

## 1. Storage Technology

- [ ] this part is not detailed now, just a brief introduction

### 1.1. RAM(Random Access Memory, 随机访问存储器)

1. SRAM
2. DRAM
3. Non-volatile storage  
    RAM is volatile(will lose data after power off)  
    - ROM  
        - PROM  
        - EPROM  
        - EEPROM  
            flash memory is based on this  
            and SSD is based on flash memory  

firmware: the software stored in ROM  

### 1.2. Magnetic Disk Storage

about 100,000 times slower than DRAM  

### 1.3. SSD(Solid State Disk)

## 2. Locality(局部性)

locality: the tendency that a program will access the data close to or just the same as the other data which it has accessed recently  

two forms:  

- temporal locality  
    for one position in memory  
- spatial locality  
    for the positions close to the referenced position in memory  

## 3. Hierarchy of Storage

### 3.1. Cache in Storage Hierarchy

## 4. Cache

### 4.1. Universal Cache Organization structure(通用高速缓存存储器组织结构)

### 4.2. Direct-Mapped Cache(直接映射高速缓存)

### 4.3. Set-Associative Cache(组相联高速缓存)

### 4.4. Fully Associative Cache(全相联高速缓存)

### 4.5. Problem about Writing

### 4.6. An Real Example

### 4.7. Cache Arguments' Influence on Performance

## 5. Write Cache Friendly Code

## 6. Complex: How the Cache Influences the Performance of the Program

### 6.1. Storage Mountain
