# Class 10 : Exception Control Flow

---

- [1. Exceptions(异常)](#1-exceptions异常)
    - [1.1. Exception Handling(异常处理)](#11-exception-handling异常处理)
    - [1.2. Types of Exceptions(异常类型)](#12-types-of-exceptions异常类型)
        - [1.2.1. Interrupt(中断)](#121-interrupt中断)
        - [1.2.2. Trap(陷阱) and System Call(系统调用)](#122-trap陷阱-and-system-call系统调用)
        - [1.2.3. Fault(故障)](#123-fault故障)
        - [1.2.4. Abort(终止)](#124-abort终止)
    - [1.3. Exceptions In Linux/x86-64 System](#13-exceptions-in-linuxx86-64-system)
        - [1.3.1. Example of Fault and Abort](#131-example-of-fault-and-abort)
        - [1.3.2. System Call](#132-system-call)
- [2. Process(进程)](#2-process进程)
    - [2.1. Logic Control Flow(逻辑控制流)](#21-logic-control-flow逻辑控制流)
    - [2.2. Concurrent Flow(并发流)](#22-concurrent-flow并发流)
    - [2.3. Private Address Space(私有地址空间)](#23-private-address-space私有地址空间)
    - [2.4. User Mode and Kernel Mode(用户模式和内核模式)](#24-user-mode-and-kernel-mode用户模式和内核模式)
    - [2.5. Context Switch(上下文切换)](#25-context-switch上下文切换)
- [3. Error Handling Invoked by OS(系统调用错误处理)](#3-error-handling-invoked-by-os系统调用错误处理)
- [4. Process Control(进程控制)](#4-process-control进程控制)
    - [4.1. Get Process ID](#41-get-process-id)
    - [4.2. Create and Terminate Process](#42-create-and-terminate-process)
        - [4.2.1. `exit`](#421-exit)
        - [4.2.2. `fork`](#422-fork)
        - [4.2.3. `waitpid`](#423-waitpid)
        - [4.2.4. `sleep` and `pause`](#424-sleep-and-pause)
        - [4.2.5. `execve`](#425-execve)
    - [4.3. Use `fork` and `execve` to Run Program](#43-use-fork-and-execve-to-run-program)
        - [4.3.1. Shell](#431-shell)
- [5. Signal](#5-signal)

---

## 1. Exceptions(异常)

### 1.1. Exception Handling(异常处理)

### 1.2. Types of Exceptions(异常类型)

- **interrupt(中断)**  
- **trap(陷阱)**  
- **fault(故障)**  
- **abort(终止)**  

#### 1.2.1. Interrupt(中断)

#### 1.2.2. Trap(陷阱) and System Call(系统调用)

#### 1.2.3. Fault(故障)

#### 1.2.4. Abort(终止)

### 1.3. Exceptions In Linux/x86-64 System

#### 1.3.1. Example of Fault and Abort

#### 1.3.2. System Call

## 2. Process(进程)

Process is one of the most profound and successful concepts in CS  

**context(上下文)**  

### 2.1. Logic Control Flow(逻辑控制流)

one time one process  

### 2.2. Concurrent Flow(并发流)

multi flows are executed at the same time  
this phenomenon is called **concurrency(并发)**  

the concept one and other processes are executed sequentially  
is called **multitasking(多任务)**  

**time slice(时间片)**  
**time slicing(时间分片)**  

understand **parallel flow** and **concurrent flow**  
they are different  

### 2.3. Private Address Space(私有地址空间)

### 2.4. User Mode and Kernel Mode(用户模式和内核模式)

the concept of mode is to strict the privilege of  
executing instructions and accessible address space range  

by default, the process works in **user mode(用户模式)**  

**privileged instruction(特权指令)** is not allowed in user mode  

### 2.5. Context Switch(上下文切换)

A higher-level exception control flow  
which is used to realize the multitasking by OS kernel  

every process has its own **context**  
witch is the status to restart the preempted process  

**scheduling(调度)**  
**scheduler(调度器)**  

## 3. Error Handling Invoked by OS(系统调用错误处理)

## 4. Process Control(进程控制)

A lot of System Calls in C program are provided by UNIX  
here we are going to introduce some of them  

### 4.1. Get Process ID

every process has its own ID(PID)  
witch is a positive number  

we can use `getpid` to get the PID of the process witch uses this function(for convenience, we call it caller)  
and `getppid` to get the PID of caller's parent process  
they return the type `pid_t`
*`pid_t` is actually `int` in `type.h`*  

we introduce these functions by add head file `sys/types.h` and `unistd.h`  

### 4.2. Create and Terminate Process

We can regard that a process is always in one status of the three types below:  

1. running  
    the process is executed on CPU  
    or waits to be executed  
    and eventually it will be scheduled by kernel  
2. stopped  
    the process execution is suspended(挂起) and will not be scheduled  

    process will stop when receiving signals:  
    SIGSTOP, SIGTSTP, SIGTTIN or SIGTTOU  
    and it will be running again when it receives SIGCONT  

3. terminated  
    the process stops, forever  

    for three reasons:  
    1. receive a signal which means terminating the process  
    2. return from main program  
    3. `exit` function is called  

#### 4.2.1. `exit`

as mentioned above, it is a function to terminate a process  

we will use head file `stdlib.h`  

```c
#include <stdlib.h>

void exit(int status)
```

`exit` function uses `status` exit status to terminate the process  
*another way is to return a int type value in main program*  

#### 4.2.2. `fork`

it's a function used by parent process to create a new running subprocess  
with a return value in the `pid_t` type  

```c
#include <sys/types.h>
#include <unistd.h>

pid_t fork(void)
```

the child process(`cp`) is almost the same with its parent process(`pp`)  
it gets a copy of virtual memory address space(at user level and independent from `pp`'s) from `pp`  
and can open any files opened in `pp`  
the biggest difference is that they have different PIDs  

`fork` is very interesting but confusing:  
it is called once but returns twice  

- [ ] more details to be added here

#### 4.2.3. `waitpid`

to wait subprocesses in many ways  

#### 4.2.4. `sleep` and `pause`

`sleep()` suspend a process for a specific period of time  
it accepts a param of type `unsigned int` meaning the number of seconds to sleep  
if it normally returns, it returns 0  
else it returns the left time(secs) to sleep  
*this may happen when a signal is received*  

#### 4.2.5. `execve`

load and run program  

```c
#include <unistd.h>

int execve(const char *filename, const char *argv[], const char *envp[] ) ;
```

- `filename` : exe object file  
- `argv` : arg list  
- `envp` : environment variables list

only when error happens it will return to caller program  

unlike `fork`(called once, returns twice)  
it is called once and doesn't return  

### 4.3. Use `fork` and `execve` to Run Program

Unix shell and Web server uses many `fork` and `execve` to run programs  

#### 4.3.1. Shell

shell is an interactive application-level program  
which runs other programs on behalf of the user  

includes: `sh`(the earliest shell)  
and `csh` `tcsh` `ksh` `bash` and so on  

what it dose:  
execute a series of read/evaluate steps  
and then terminates  

so how it works:  

1. read a command line  
2. parse the command line  
3. run the program  

*if the command line is available*  

## 5. Signal
