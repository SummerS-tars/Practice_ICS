# VScode使用Remote SSH拓展连接到远程主机

- [1. Intro](#1-intro)
- [2. Process](#2-process)
    - [2.1. Background](#21-background)
    - [2.2. Software Prepare](#22-software-prepare)
    - [2.3. Extension](#23-extension)
- [3. Reference](#3-reference)

## 1. Intro

SSH(Secure Shell)，安全外壳协议  
大部分Linux的远程连接都是基于SSH协议  
本教程介绍通过VScode的Remote SSH插件连接到远程主机（虚拟机也同理）  

## 2. Process

### 2.1. Background

Remote Host OS: Ubuntu24.04LTS  
Local Host OS: Windows11  
本地主机与远程主机运行在同一局域网下  

大部分其他操作系统也类似  

### 2.2. Software Prepare

由于Ubuntu24.04的Linux发行版中，默认没有`ssh-server`，因此需要先准备下载软件  

1. Ubuntu端准备：  
    1. 登入到Remote Host的terminal中  
    2. 下载`ssh`  

        ```bash
        sudo apt install ssh
        ```

    3. 开启`ssh`系统服务自动重启  

        ```bash
        sudo systemctl enable ssh
        ```

    4. 查询本机IP地址  

        ```bash
        ifconfig
        ```

        出现结果大概率类似`192.168.1.1`  
        这就是你的远程主机的内网IP地址  
        如果是虚拟机则是你虚拟机使用的本机IP地址  

        P.S. 如果显示没有`ifconfig`命令，请先下载`net-tools`软件包

        ```bash
        sudo apt install net-tools
        ```

2. VScode运行端上准备  
    1. VScode中下载`Remote-SSH`拓展  
        *推荐直接下载`Remote Development`拓展包*  
    2. 连接到远程主机  

        ```mermaid
        flowchart LR
            A[状态栏远程连接按钮<br>屏幕最左下角]-->B[搜索栏<br>连接到主机]-->C[添加新的主机]-->D[输入ssh user@IPofRemoteHost]
            D-->E[输入密码]
            E-->F[连接成功]
        ```

    3. 连接成功后，VScode会自动在远程主机上安装`VScode Server`，并且会在远程主机上打开一个新的VScode窗口  

### 2.3. Extension

1. 通过ssh-key连接到远程主机，实现免密登录  
    1. 生成ssh-key  

        ```bash
        ssh-keygen -t rsa -b 4096
        ```

        此处选择的是RSA加密方式，4096位的密钥长度  

    2. 生成步骤介绍  

        ```mermaid
        flowchart LR
            A[生成密钥对]-->B[输入密钥保存路径]-->C[输入密码]
            C-->D[再次输入密码]
            D-->E[生成成功]
        ```

        P.S. 其中，如果觉得麻烦，可以使用默认路径，不设置密码，一路Enter即可  
        此处的路径是你的SSH私钥(不带`.pub`)和公钥(带`.pub`)的保存路径即名称  
        密码是使用SSH私钥使用时的密码，但因为我们本来就是为了免密，因此一般不设  

    3. 导入公钥到Remote Host  

        ```mermaid
        flowchart LR
            A[查看公钥]-->B[复制公钥内容]
            B-->C[在远程主机/home/user/上<br>进入或创建.ssh文件夹]
            C-->D[在.ssh文件夹中<br>创建authorized_keys文件]
            D-->E[将公钥内容粘贴到<br>authorized_keys文件中]
        ```

        关于不方便复制时，将公钥上传到Remote Host的方法：(通过SSH传输)  

        ```bash
        ssh-copy-id -i ~/.ssh/id_rsa.pub user@IPofRemoteHost
        ```

    4. VScode中指定私钥路径  

        ```mermaid
        flowchart LR
            A[打开Remote SSH配置文件]-->B[添加配置项<br>Host RemoteHost<br>IdentityFile ~/.ssh/id_rsa]
        ```

        在VScode中，打开Remote SSH配置文件，在你刚刚导入的主机配置下添加如下配置项  

        ```config
        IdentityFile ~/.ssh/id_rsa
        ```

        其中，`~/.ssh/id_rsa`是你的私钥路径，一般在`C:\Users\username\.ssh\id_rsa`  

    5. 此时，一般情况下，你已经可以通过ssh-key连接到Remote Host了  

2. 以下推荐一些工具  
    1. Termius辅助导入公钥
        Termius是一个很好的SSH CLI 和 SFTP Client  
        支持多平台使用  
        如果有Github学生认证可以免费使用Pro版  
        1. 生成密钥对(以rsa为例)  

            ```mermaid
            flowchart LR
                A[Keychain]-->B[Key<br>Generate Key]-->C[rsa<br>4096]
            ```

        2. 创建Host，先通过密码登入

            ```mermaid
            flowchart LR
                A[Host]-->B[New Host]-->C1[IP or Hostname<br>填入IP]
                B-->C2[Credentials from ...<br>Username and Password]  
                C1-->D[Connect]
                C2-->D
            ```

        3. 导入公钥  

            ```mermaid
            flowchart LR
                A[Keychain]-->B[选中创建的Key<br>Import Key]-->C[选择公钥文件]-->D[Export to host]-->E[Select Host]
            ```

        4. Host编辑添加密钥登入项  

            ```mermaid
            flowchart LR
                A[Host]-->B[选中Host<br>Edit Host]-->C[Credentials from ...<br> + Key...]-->D[Private Key<br>选择刚刚导入的私钥]
            ```

            此时已经可以在Termius通过ssh-key登入到Remote Host了  
        5. 将Termius托管的私钥保存到本地  

            Termius是直接将私钥托管在软件中，如果我们需要通过Windows Terminal、VScode等其他软件连接到远程主机，我们需要将私钥保存到本地  

            ```mermaid
            flowchart LR
                A[Keychain]-->B[选中创建的Key<br>Export Key]-->C[COPY Private Key]-->D[在上文所说的.ssh文件夹中<br>创建一个文本文件（无后缀）]-->E[粘贴保存]
            ```

            我们就手动保存了私私钥  

    2. FinalShell  
        另外一个比较好用的SSH Client  
        支持实时数据监控  
        此处不多赘述

## 3. Reference

1. [SSH basic](https://blog.csdn.net/li528405176/article/details/82810342)
2. [SSH key](https://zhuanlan.zhihu.com/p/587082161)
3. [VScode Remote development over SSH](https://code.visualstudio.com/docs/remote/ssh-tutorial)
4. [Termius Official](https://termius.com/)
5. [FinalShell Download](https://www.hostbuf.com/t/988.html)
