# Usage of Vim

本文档使用Vim编辑，用于记录Vim基础操作

## basic vim

1. command and insert mode  
    点击`i`进入插入模式  
    再点击`Esc`返回命令模式  
2. basic command  
    Vim在命令模式下使用`:`进入命令输入  
    1. `:w`保存
    2. `:q`退出编辑
    3. `:wq`保存并退出编辑
    4. 可以在以上命令后加上`!`表示强制执行
3. move cursor  
    1. command mode  
        1. `h`左 `j`下 `k`上 `l`右  
        2. `w`下一个单词 `b`当前或上个单词开头
        3. `0`行开头 `$`行尾
    2. insert mode
        1. 箭头移动
        2. read-only mode
        3. 和编辑模式一样
4. basic operation: del or cp char/word  
    以下均在命令模式下的操作
    1. 删除
        - `x` 删除光标所在字符(line表现为其后的字符)
        - `dw` 删除光标位置到下一个单词的开始
        - `dd` 删除当前行
    2. 复制(Yank)
        - `yy` 复制当前行
        - `yw` 复制光标位置到下一个单词的内容
    3. 粘贴(Put)
        - `p` 将复制的内容粘贴到光标后
        - `P` 将复制的内容粘贴到光标前
    4. 撤销与重做
        - `u` 撤销上一个操作
        - `Ctrl + r` 重做上一个操作
