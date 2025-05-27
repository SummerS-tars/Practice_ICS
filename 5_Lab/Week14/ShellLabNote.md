# Lab 4 : Shell Lab Note

writer: 朱文凯
ID: 23307110192

---

- [1. Shell Lab](#1-shell-lab)
    - [1.1. Specific Goals](#11-specific-goals)
    - [1.2. Overview](#12-overview)
    - [1.3. Specification](#13-specification)
    - [1.4. Check Work](#14-check-work)
    - [1.5. Goal Evaluation](#15-goal-evaluation)
    - [1.6. Hand in Instructions](#16-hand-in-instructions)
- [2. Hand In Result](#2-hand-in-result)
    - [2.1. Script Test](#21-script-test)
    - [2.2. Files](#22-files)

---

## 1. Shell Lab

complete a Unix shell program based on the existing part  

### 1.1. Specific Goals

most important : tsh.c (tiny shell)  

```c
/* Here are the functions that you will implement */
void eval(char *cmdline);
int builtin_cmd(char **argv);
void do_bgfg(char **argv);
void waitfg(pid_t pid);

void sigchld_handler(int sig);
void sigtstp_handler(int sig);
void sigint_handler(int sig);
```

### 1.2. Overview

what should the command be like?  

either the name of a built-in command  
or the pathname of an executable file  

args  
argc, argv[]  

fg and bg  

### 1.3. Specification

- prompt: ` tsh> `  
- command handle:  
    - built-in command  
        handle it immediately  
        and wait for next command line  
    - assume it's a path to an executable file  
- ctrl-c(ctrl-z): SIGINT(SIGTSTP)
    - only take effect on the foreground process  
    - shell and bg processes excluded  
- `&`: bg symbol  
- PID and JID(job ID):  
    - positive integer given by `tsh`  
    - can identify a job  
    - JID should be prefixed by `%`  
- built-in commands required:  
    - `quit`  
    - `jobs`  
    - `bg <job>`  
    - `fg <job>`  
- reap zombie processes:  
    - `tsh` should reap all zombie processes  
    - ?

### 1.4. Check Work

1. `tshref` python program  
2. `sdriver.pl` shell driver program  
    - we can use arg `-h` to get some help  
    - trace files can help  
    - `Makefile` can also help  

### 1.5. Goal Evaluation

1. trave files 16 * 5 points  
2. good comments 5 points  
3. good check for system call 5 points  

### 1.6. Hand in Instructions

- name and Id in the header comment of `tsh.c`  
- `tsh.c` type:  

    ```bash
    make handin STUID=student_id
    ```

## 2. Hand In Result

### 2.1. Script Test

all trace passed:  

```txt
❯ make clean && make all && python3 checker.py
rm -f ./tsh ./myspin ./mysplit ./mystop ./myint *.o *~
gcc -Wall -O2 -g    tsh.c   -o tsh
gcc -Wall -O2 -g    myspin.c   -o myspin
gcc -Wall -O2 -g    mysplit.c   -o mysplit
gcc -Wall -O2 -g    mystop.c   -o mystop
gcc -Wall -O2 -g    myint.c   -o myint
Passed test 01
Passed test 02
Passed test 03
Passed test 04
Passed test 05
Passed test 06
Passed test 07
Passed test 08
Passed test 09
Passed test 10
Passed test 11
mysplit entries in 'ps a':
  PID   TT  STAT      TIME COMMAND
tsh's:
2263652 pts/0    T      0:00 ./mysplit 4
2263653 pts/0    T      0:00 ./mysplit 4
2263654 pts/0    T      0:00 ./mysplit 4
2263655 pts/0    T      0:00 ./mysplit 4
tshref's:
2263652 pts/0    T      0:00 ./mysplit 4
2263653 pts/0    T      0:00 ./mysplit 4
2263654 pts/0    T      0:00 ./mysplit 4
2263655 pts/0    T      0:00 ./mysplit 4
Passed test 12
mysplit entries in 'ps a':
  PID   TT  STAT      TIME COMMAND
tsh's:
2263670 pts/0    T      0:00 ./mysplit 4
2263671 pts/0    T      0:00 ./mysplit 4
2263672 pts/0    T      0:00 ./mysplit 4
2263673 pts/0    T      0:00 ./mysplit 4
tshref's:
2263670 pts/0    T      0:00 ./mysplit 4
2263671 pts/0    T      0:00 ./mysplit 4
2263672 pts/0    T      0:00 ./mysplit 4
2263673 pts/0    T      0:00 ./mysplit 4
Passed test 13
Passed test 14
Passed test 15
Passed test 16
```

### 2.2. Files

1. `ShellLabNote.md`
2. `23307110192-tsh.c`
