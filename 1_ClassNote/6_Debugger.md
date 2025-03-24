# Week 6 Lab Note : Debugger(gdb,调试器) & 

## Debugger

集成开发环境一部分：  
VSDebugger  
LLDB  

独立命令行工具：  
GDB  

### 介绍

核心功能：  

1. 执行控制  
    1. 断点  
    2. 单步执行  
    3. 条件断点  
2. 状态监控  
3. 动态修改  
4. 异常处理  

### GDB

GDB(GNU Debugger)  
GUN项目的一款开源命令调试工具  
为C、C++等变成语言设计  
支持在UNIX及类UNIX系统中使用  

### GDB的使用

```shell
gcc -g gdbexample.c -o gdbexample
```

相较于一般编译命令，多了`-g`编译选项  
该符号表示：  
在编译后的可执行文件中嵌入调试信息  
包括变量名、函数名、源代码行号等  

主要功能：  

#### 具体命令

- 启动与加载程序
    - 直接启动

        ```shell
        gdb ./gdbexample
        ```

    - gdb内加载

        ```shell
        gdb
        (gdb) file ./gdbexample
        ```

- 设置断点  
    - 依据行号或函数名设置  

        ```shell
        (gdb) break 10
        (gdb) break main
        ```

        `break`可以缩写为`b`

    - 条件断点  

        ```shell
        (gdb) break 10 if i == 5
        ```

- 运行与调试控制  
    - 启动程序。遇到断点暂停  

        ```shell
        (gdb) run
        ```

        `run`可以缩写为`r`  

    - 执行下一行代码（不进入函数内部）

        ```shell
        (gdb) next
        ```

        `next`可以缩写为`n`

    - 执行下一行代码（进入函数内部）

        ```shell
        (gdb) step
        ```

        `step`可以缩写为`s`

    - 继续执行只下一个断点或程序结束

        ```shell
        (gdb) continue
        ```

        `continue`可以缩写为`c`

- 查看与修改命令
    - `print`  
        打印变量值
    - `display`  
        跟踪查看一个变量，每次停下都显示值
    - `info locals`  
        显示当前函数的局部变量
    - `set var=value`  
        运行时修改变量值
    - `x`  
        从某个位置开始打印储存器的一段内容  
        均视作自介，不区分字节属于哪些变量  
    - `backtrace(bt)`  
        显示函数调用栈  

#### 整体使用流程

1. gdb启动程序  
2. 设置断点  
3. 运行  
4. 单步执行  
5. 修改sum的值
6. 打印sum的值
7. 修改程序代码（`.bdd`段不可修改）  
    暂时不学习  
