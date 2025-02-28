# Linux练习

## 填空题

1. ls  
    `ls`命令用于列出目录内容。以下是一些常用参数的详细解释：

    - `-a`：`--all` 显示所有文件，包括隐藏文件（以`.`开头的文件）。
    - `-l`：`--long` 使用长格式列出文件的详细信息，包括权限、所有者、文件大小和修改时间等。
    - `-h`：`--human-readable` 与`-l`一起使用，以人类可读的格式显示文件大小（例如，1K，234M，2G）。
    - `-t`：`--time` 按修改时间排序，最近修改的文件排在最前面。
    - `-r`：`--reverse` 反转排序顺序，与其他排序选项（如`-t`）结合使用。
    - `-R`：`--recursive` 递归列出子目录中的内容。
    - `-d`：`--directory` 仅显示目录本身，而不是其内容。
    - `-i`：`--inode` 显示文件的inode号。
    - `-s`：`--size` 显示每个文件的块大小。
    - `-S`：`--sort=size` 按文件大小排序，最大的文件排在最前面。
2. touch example.txt
3. catch
4. Super User Do
5. chmod +x script.sh  
    chmod 设置权限时的数字含义：

    - 权限分为三类：用户 (User)、组 (Group)、其他 (Others)。
    - 每类权限有三种：读 (Read)、写 (Write)、执行 (Execute)。
    - 数字表示法：
        - 读 (r) = 4
        - 写 (w) = 2
        - 执行 (x) = 1

    - 组合权限的数字表示法：
        - 7 = 4 + 2 + 1 (rwx)
        - 6 = 4 + 2 (rw-)
        - 5 = 4 + 1 (r-x)
        - 4 = 4 (r--)
        - 3 = 2 + 1 (wx)
        - 2 = 2 (w-)
        - 1 = 1 (x\-)
        - 0 = 0 (---)
6. date
7. example.txt
    grep : "Global Regular Expression Print"  
    grep 常用参数：  
        - `-i`：忽略大小写。
        - `-v`：反转匹配，显示不匹配的行。
        - `-r`：递归搜索目录中的文件。
        - `-l`：只显示包含匹配文本的文件名。
        - `-n`：显示匹配行的行号。
        - `-c`：只显示匹配的行数。
        - `-A NUM`：显示匹配行及其后 NUM 行。
        - `-B NUM`：显示匹配行及其前 NUM 行。
        - `-C NUM`：显示匹配行及其前后 NUM 行
8. ps/top/free
9. wc
10. file
11. chown
12. file1.txt file2.txt
13. diff
14. find
    `find dir -name "filename"`递归搜索`dir`目录下所有文件名为`filename`的文件并显示相对路径  
15. tar -cvf archive.tar file1 file2 ...  
    tar 命令用于创建和解压缩归档文件。常用参数包括：  

    - `-c`：创建新的归档文件。
    - `-v`：显示处理过程中的详细信息。
    - `-f`：指定归档文件的名称。
    - `-x`：解压缩归档文件。
    - `-t`：列出归档文件的内容。
16. tar -xvf archive.tar -C /path/to/extract  
17. pwd  
18. wget  
    `wget -P /path/to/dir URL`下载文件到指定目录  
19. printenv
20. locate/find  
    `locate filename`快速查找文件  
    注意使用前要先运行`updatedb`命令更新数据库  
    `find`见上  
21. kill/killall/pkill  
    - `kill` + :
        - `PID`：杀死指定进程ID的进程。
        - `-9 PID`: 强制杀死指定进程ID的进程。
    - `killall` + :
        - `process_name`：杀死指定名称的所有进程。
        - `-9 process_name`：强制杀死指定名称的所有进程。
    - `pkill` + :
        - `process_name`：杀死指定名称的进程。
        - `-9 process_name`：强制杀死指定名称的进程。
        - `-u username`：杀死指定用户的所有进程。
22. vi/vim/nano
23. mount
24. find
25. nohup
26. user
27. crontab -e
28. 忽略大小写

## 选择题

1. C
2. B
3. A
4. A
5. B
6. B
7. B
8. B
9. A
10. C
11. C
12. A
13. A
14. A
15. C  
    `find / -name "config"`这才是对的  
16. B
17. C
18. B  
    `Debian Package`  
19. A
20. A
    `df`即`Disk Free`  
21. B
22. A
23. B
24. A  
    `dmesg`即`display message`  
25. A
    - `ifconfig`：主要用于显示和配置网络接口的信息，如 IP 地址、子网掩码、广播地址等。需要安装 `net-tools` 包。
    - `netstat`：用于显示网络连接、路由表、接口统计、伪装连接和多播成员等信息。它提供了更广泛的网络状态信息。  
