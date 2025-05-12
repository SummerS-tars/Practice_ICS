# job in shell

## `jobs`

we use the program `ping` to test
type in shell

```bash
ping localhost
```

and then type in `Ctrl+Z`  
we get message:  

```txt
^Z
[1]  + 1833353 suspended  ping localhost
```

witch means the job of `ping` is suspended  
it owns the PID `1833353`  

we can use `jobs` to list the jobs in the shell:  

```bash
jobs -dlp
```

actually, `jobs` has the following args available:  

```txt
-d  -- show directory from which each job was started
-l  -- list process IDs
-p  -- list process groups
-r  -- list only running jobs
-s  -- list only stopped jobs
-Z  -- specify string to replace shell's argument and environment with
```

we get the output:  

```txt
❯ jobs -dlp
[1]  + 1833353 suspended  ping localhost
(pwd : ~)
```

## `fg`

we can use `fg` to send `SIGCONT` to resume the job  

```bash
fg %1
```

actually, `fg` has the syntax as following:

```bash
fg [job_spec]
```

The job_spec is a way to refer to the background jobs that are currently running or suspended. Here are some common ways to specify a job:

- %n: Refers to job number n.
- %str: Refers to a job that was started by a command beginning with str.
- %?str: Refers to a job that was started by a command containing str.
- %% or %+: Refers to the current job (this is the default job operated on by fg if no job_spec is provided).
- %-: Refers to the previous job.

here we type

```bash
fg %ping
```

and we get the output:

```txt
❯ fg %ping
[1]  + 1833353 continued  ping localhost
64 bytes from localhost (127.0.0.1): icmp_seq=4 ttl=64 time=0.051 ms
64 bytes from localhost (127.0.0.1): icmp_seq=5 ttl=64 time=0.040 ms
64 bytes from localhost (127.0.0.1): icmp_seq=6 ttl=64 time=0.057 ms
^C
--- localhost ping statistics ---
6 packets transmitted, 6 received, 0% packet loss, time 477896ms
rtt min/avg/max/mdev = 0.027/0.043/0.057/0.009 ms
```

we can find the `ping` job continues to run at foreground  
then we terminate the job by `Ctrl+C`  
