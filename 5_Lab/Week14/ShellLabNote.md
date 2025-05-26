# Lab 4 : Shell Lab Note

## 1. Shell Lab

complete a Unix shell program based on the existing part  

### Specific Goals

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

### Overview

what should the command be like?  

either the name of a built-in command  
or the pathname of an executable file  

args  
argc, argv[]  

fg and bg  

### Specification

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

### Check Work

1. `tshref` python program  
2. `sdriver.pl` shell driver program  
    - we can use arg `-h` to get some help  
    - trace files can help  
    - `Makefile` can also help  

### Goal Evaluation

1. trave files 16 * 5 points  
2. good comments 5 points  
3. good check for system call 5 points  

### Hand in Instructions

- name and Id in the header comment of `tsh.c`  
- `tsh.c` type:  

    ```bash
    make handin STUID=student_id
    ```
