# `top`

## 'h'

type `top` in the terminal:  

```txt
top - 14:13:43 up 4 days,  9:42,  0 user,  load average: 0.18, 0.16, 0.08
Tasks:  12 total,   1 running,  11 sleeping,   0 stopped,   0 zombie
%Cpu(s):  0.2 us,  0.4 sy,  0.0 ni, 99.5 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st 
MiB Mem :  15892.3 total,  13165.0 free,   2522.8 used,    481.3 buff/cache     
MiB Swap:   4096.0 total,   4096.0 free,      0.0 used.  13369.5 avail Mem 

  PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND                                                                                                                                                       
 3064 coder     20   0   73.8g 979.6m  53668 S   3.0   6.2   5:01.21 node                                                                                                                                                          
   31 coder     20   0   11.4g 166944  47828 S   0.7   1.0   1:39.11 node                                                                                                                                                          
 2365 coder     20   0   11.2g  68164  42768 S   0.7   0.4   0:07.40 node                                                                                                                                                          
    1 coder     20   0    2328    884    792 S   0.0   0.0   0:00.01 dumb-init                                                                                                                                                     
   13 coder     20   0 1097980  61040  39864 S   0.0   0.4   0:00.53 node                                                                                                                                                          
 3082 coder     20   0   11.1g  58312  42244 S   0.0   0.4   0:01.70 node                                                                                                                                                          
 3115 coder     20   0  102212  39844  17312 S   0.0   0.2   0:04.94 cpptools                                                                                                                                                      
 3147 coder     20   0  994096  56760  39864 S   0.0   0.3   0:00.89 node                                                                                                                                                          
 3185 coder     20   0 1422660 193980  42688 S   0.0   1.2   0:07.74 node                                                                                                                                                          
 6947 coder     20   0  994340  56120  39920 S   0.0   0.3   0:01.07 node                                                                                                                                                          
49073 coder     20   0    7328   4176   3424 S   0.0   0.0   0:00.00 bash                                                                                                                                                          
50108 coder     20   0   11592   4788   2900 R   0.0   0.0   0:00.03 top     
```

and then type `h` to get help  

```txt
Help for Interactive Commands - procps-ng 4.0.2
Window 1:Def: Cumulative mode Off.  System: Delay 3.0 secs; Secure mode Off.

  Z,B,E,e   Global: 'Z' colors; 'B' bold; 'E'/'e' summary/task memory scale
  l,t,m,I   Toggle: 'l' load avg; 't' task/cpu; 'm' memory; 'I' Irix mode
  0,1,2,3,4 Toggle: '0' zeros; '1/2/3' cpu/numa views; '4' cpus two abreast
  f,X       Fields: 'f' add/remove/order/sort; 'X' increase fixed-width fields

  L,&,<,> . Locate: 'L'/'&' find/again; Move sort column: '<'/'>' left/right
  R,H,J,C . Toggle: 'R' Sort; 'H' Threads; 'J' Num justify; 'C' Coordinates
  c,i,S,j . Toggle: 'c' Cmd name/line; 'i' Idle; 'S' Time; 'j' Str justify
  x,y     . Toggle highlights: 'x' sort field; 'y' running tasks
  z,b     . Toggle: 'z' color/mono; 'b' bold/reverse (only if 'x' or 'y')
  u,U,o,O . Filter by: 'u'/'U' effective/any user; 'o'/'O' other criteria
  n,#,^O  . Set: 'n'/'#' max tasks displayed; Show: Ctrl+'O' other filter(s)
  V,v,F   . Toggle: 'V' forest view; 'v' hide/show children; 'F' keep focused

  d,k,r,^R 'd' set delay; 'k' kill; 'r' renice; Ctrl+'R' renice autogroup
  ^G,K,N,U  View: ctl groups ^G; cmdline ^K; environment ^N; supp groups ^U
  W,Y,!,^E  Write cfg 'W'; Inspect 'Y'; Combine Cpus '!'; Scale time ^E'
  q         Quit
          ( commands shown with '.' require a visible task display window ) 
Press 'h' or '?' for help with Windows,
Type 'q' or <Esc> to continue 
```

## get processes of specific program

for example, `top` itself  
in `top` program, type:  

```bash
O
# then type
COMMAND=top
```

get the output belike  

```txt
  PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND                                                                                                                                                       
53023 coder     20   0   11608   5064   3172 R   0.0   0.0   0:00.01 top 
```

we can type

```bash
=
```

to simply cancel the filter  

## sort by memory usage

to sort by memory usage(descending)  
type in `top`  

```bash
M
```

and then get: 

```txt
  PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND                                                                                                                                                       
 3064 coder     20   0   73.8g   1.0g  53668 S   3.7   6.4   6:28.60 node                                                                                                                                                          
 3185 coder     20   0 1402180 183036  42748 S   0.0   1.1   0:26.54 node                                                                                                                                                          
   31 coder     20   0   11.4g 167096  47828 S   2.0   1.0   1:44.19 node                                                                                                                                                          
 2365 coder     20   0   11.2g  73032  42768 S   0.0   0.4   0:09.86 node                                                                                                                                                          
   13 coder     20   0 1097980  61040  39864 S   0.0   0.4   0:00.53 node                                                                                                                                                          
 6947 coder     20   0  995364  59000  39980 S   0.0   0.4   0:02.05 node                                                                                                                                                          
 3082 coder     20   0   11.1g  58312  42244 S   0.0   0.4   0:01.79 node                                                                                                                                                          
 3147 coder     20   0  994096  57024  39864 S   0.0   0.4   0:00.93 node                                                                                                                                                          
 3115 coder     20   0  102212  39844  17312 S   0.0   0.2   0:05.18 cpptools                                                                                                                                                      
54330 coder     20   0   11608   4816   2928 R   0.0   0.0   0:00.19 top                                                                                                                                                           
49073 coder     20   0    7328   4184   3424 S   0.0   0.0   0:00.01 bash                                                                                                                                                          
    1 coder     20   0    2328    884    792 S   0.0   0.0   0:00.01 dumb-init 
```
