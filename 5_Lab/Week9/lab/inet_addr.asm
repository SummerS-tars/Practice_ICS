Dump of assembler code for function inet_addr@got.plt:
   0x0000000000604080 <+0>:     xchg   %eax,%esi
   0x0000000000604081 <+1>:     or     $0x40,%al
   0x0000000000604083 <+3>:     add    %al,(%rax)
   0x0000000000604085 <+5>:     add    %al,(%rax)
   0x0000000000604087 <+7>:     add    %ah,0x400c(%rsi)