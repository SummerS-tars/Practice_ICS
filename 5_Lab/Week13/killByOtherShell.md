# kill

now we try to use kill to terminate the process, process group run by other shell

## run multiple processes in shell A

now we at shell A  

we type the following cmd for 3 times:

```bash
ping localhost
```

## get pid in other shell

we use `ps` to get the PID  
type following cmd in shell B:  

```bash
ps -a | grep ping
```

attention the `-a` arg is needed  
or it only represents the processes in the current shell  

and we use `grep` to filter the process  

we get output:  

```txt
❯ ps -a | grep ping
1840182 pts/0    00:00:00 ping
1840219 pts/0    00:00:00 ping
1840223 pts/0    00:00:00 ping
```

## use `kill` to terminate the process

we type the following cmd in shell B:  

```bash
kill -9 1840182
```

and we can get the output(in shell A):

```txt
[1]    1840182 killed     ping localhost
```

which means the process 1840182 is killed  

and then we try to kill the process group  

```bash
kill -9 -1840219
```

we kill the processes in the process group of the PGID 1840219  

here the `-9` args  
means the signal `SIGKILL`  
which corresponds to the ID 9  
