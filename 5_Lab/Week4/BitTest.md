# Bit Test

## XOR

~0 & ~0 --> 1  
~0 & ~1 --> 0  
~1 & ~0 --> 0  
~1 & ~1 --> 0  

~(0 & 0) --> 1  
~(0 & 1) --> 1  
~(1 & 0) --> 1  
~(1 & 1) --> 0  

## Tmin

1 << 31 --> 1000...0000

## isTmax

01...111 + 1 --> 1...000  
1...000 + 1...000 --> 0  
and exclude -1(1...111) by x + 1  

## allOddBits

0xAAAAAAAA --> 1010...1010  
0xAAAAAAAA << 1 --> 0101...0100  
0xAAAAAAAA + 0101...0100 --> 1111...1110  
1111...1110 + 2 --> 0...0  

## isAsciiDigit

use ~x + 1 to denote minus x  

but there will be a question : some bit number may overflow after calculation  
so use `drop = !(x & ~0x3F)` to drop the overflowed bit  
then use `x - 0x30` and `0x39 - x` to check there sign bits' & then ! and right shift to the rightmost bit  
only when the sign bits are 0(x between 0x30 and 0x39) and the drop is 0, the result is 1

## conditional

boolize x to 0 or 1, called `boolization`  
`~boolization + 1`  --> 1 to -1 and 0 to 0
`boolization + ~1 + 1`  --> 1 to 0 and 0 to -1

and use -1 or 0 to & with x and y to get the result  

## isLessOrEqual

y - x <= 0(with sign bit 1) solve most normal cases  
and mark the cases that may overflow(one neg and one pos and big enough)  

## logicalNeg

non-zero number and its negation always have different sign bits  
(0 and 1)  
only 0 and -0 have the same sign bit  

## howManyBits

use binary search to find the leftmost bit which is 1  

## floatScale2

1 8 23

1. general case : e plus 1  
2. e = 0 :  
   2.1. general case : (without 1) << 1  
   2.2. f = 0 : return uf(can be done by 2.1 too)  
   2.3. f << 1 overflow : e = 1, f << 1 and drop the first bit(actually can by done by 2.1 too)  
3. e = 0xFF , f = 0(infinite) : return uf
4. e = 0xFF , f != 0(NaN) : return uf
5. e = 0xFF - 1 , f is close full : return infinite

## floatFloat2Int

1 8 23  
e = 127 , f = 0 : 1  
e = 126 , f = 0 : 0.5  
e = 157 , f = 1...1 : 01...1100..0 total 24 1s  

1. e < 127 : return 0
2. e > 157 , return 0x80000000u
3. 126 <= e <= 157 :  
   3.0. count s
   3.1. count E = e - 127
   3.2. count M = f + 1 ahead  
   3.3. 1.f << E
     3.3.1. E <= 23 : M >> (23 - E) and drop the last bits
     3.3.2. E > 23 : M << (E - 23)

## floatPower2

1.0 \* 2^(x) = 1.0 \* 2^(e - 127) \* 2^23  
smallest : 2^(-126)  
biggest : 2^(127)  
x = e - 127  
x min : -126  
x max : 127  
e min : 1  
e max : 254  

## test result

```shell
coder@399cc0ca0454:~/project/5_Practice_ICS/5_Lab/Week4/datalab-handout$ ./dlc -e bits.c
dlc:bits.c:154:bitXor: 7 operators
dlc:bits.c:166:tmin: 1 operators
dlc:bits.c:183:isTmax: 7 operators
dlc:bits.c:197:allOddBits: 7 operators
dlc:bits.c:207:negate: 2 operators
dlc:bits.c:235:isAsciiDigit: 13 operators
dlc:bits.c:248:conditional: 10 operators
dlc:bits.c:274:isLessOrEqual: 18 operators
dlc:bits.c:290:logicalNeg: 5 operators
dlc:bits.c:323:howManyBits: 32 operators
dlc:bits.c:367:floatScale2: 17 operators
dlc:bits.c:412:floatFloat2Int: 18 operators
dlc:bits.c:438:floatPower2: 6 operators

coder@399cc0ca0454:~/project/5_Practice_ICS/5_Lab/Week4/datalab-handout$ ./btest
Score   Rating  Errors  Function
 1      1       0       bitXor
 1      1       0       tmin
 1      1       0       isTmax
 2      2       0       allOddBits
 2      2       0       negate
 3      3       0       isAsciiDigit
 3      3       0       conditional
 3      3       0       isLessOrEqual
 4      4       0       logicalNeg
 4      4       0       howManyBits
 4      4       0       floatScale2
 4      4       0       floatFloat2Int
 4      4       0       floatPower2
Total points: 36/36
```