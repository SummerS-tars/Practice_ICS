# Lab 3

## Completion of Lab 3

以下为对于程序的说明

### Unsigned And Signed Test  

[UnsignedAndSigned](./unsignedAndSigned.c)  

测试有符号和无符号整数的转换  
通过二进制形式表现  
说明 Unsigned 与 Signed 之间的隐式强制转换本质：  
reinterpret这个数的二进制形式  

### Expanding And Truncating Test

[ExpendingAndTruncating](./ExpandingAndTruncating.c)

测试有符号和无符号整数的扩展和截断  
通过二进制形式输出  
直截了当地展示了三种情况  

1. Unsigned Expending  
    直接在高位补0
2. Signed Expending  
    在高位补符号位
3. Truncating  
    直接截断高位

### Integer Calculation Operation

[IntegerCalculationOperation](./OverflowTest.c)

测试加和乘的性质  
即表现他们的溢出截断机制  

### Bit Move

[BitMove](./BitMove.c)

测试左移和右移的性质  

1. Unsigned  
    左移和右移都很直接，都是直接移动加补零  
    超出直接舍弃  
2. Signed  
    左移也很直接，和Unsigned类似  
    右移则在高位补充符号位  

### Mixed Expression

[MixedExpression](./MixedCalculation.c)
[unsignedTest1](./unsigned_Test.c)
[unsignedTest2](./unsigned_Test2.c)
[unsignedTest3](./unsigned_Test3.c)

测试混合表达式的性质  
主要是表示Signed在表达式中会被强制转换为Unsigned  
在实际开发中需要避免  

### Endian Test

[bytePointer](./byte_pointer.c)  
