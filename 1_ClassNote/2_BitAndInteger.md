# Class 2 Note : Bits and Integers

after [Class 1 Note](./1_Introduction.md)  

- [1. Integers](#1-integers)
    - [1.1. Address and Byte Order](#11-address-and-byte-order)
    - [1.2. Unsigned and Signed](#12-unsigned-and-signed)
    - [1.3. Mapping](#13-mapping)
    - [1.4. Expanding and Truncating](#14-expanding-and-truncating)
    - [1.5. Addition, Negation, Multiplication, Shifting](#15-addition-negation-multiplication-shifting)

## 1. Integers

**types for C and Bytes for systems**  

|type|32-bits system|64-bits system|
|:---:|:---:|:---:|
|char|1|1|
|short|2|2|
|int|4|4|
|long|4|8|
|long long|8|8|
|pointer|4|8|

**attention:**  
What is the `bits` above ?  
word size(字长), the nominal size(标称大小) of the pointer data type  

### 1.1. Address and Byte Order

most of the systems, the multi-byte objects are stored in contiguous bytes in memory.  

then there are two ways to store the multi-byte objects:

- **little endian**  
    little address first
- **big endian**
    big address first  

### 1.2. Unsigned and Signed

**Basic Conceptions:**  

- **signed**  
    sign bit: 0 for positive, 1 for negative  
    the top bit is the sign bit  
- **unsigned**  
    no sign bit, all bits are used to represent the value  

**Numeric Ranges:**  

- **unsigned**  
    - $UMin = 0$  
        00...0
    - $UMax = 2^{w} - 1$  
        11...1
- **signed**  
    **Two's Complement Values**  
    - $TMin = -2^{w-1}$  
        10...0
    - $TMax = 2^{w-1} - 1$  
        01...1  
    - $-1$  
        11...1

### 1.3. Mapping

leave the bits unchanged, but interpret them differently
so we can know:

1. for nonnegative values  
    the same  
2. when come to the biggest bit(sign bit for signed)  
    $U - T = 2^w$  

**Conversion in Calculation in C:**  

No matter the number is signed or unsigned, the calculation is the same for the bits.

Attention!  
When signed and unsigned are mixed in the calculation  
signed will be implicitly(隐式地) converted to unsigned  

### 1.4. Expanding and Truncating

**Extend the Bits Without Changing the Values:**  
(拓展一个数字的位表示)  
For too short bytes to represent the values, this is not possible.  
However if we want to change a smaller type to a bigger type, we can do this.

How?  

- **unsigned**  
    - **zero extension**  
        add 0s to the left  
- **signed**  
    - **sign extension**  
        add the sign bit to the left

How to understand?

- **unsigned**  
    - **zero extension**  
        it's easy to understand  
        just add 0s and according to the definition of unsigned the value is the same  
- **signed**
    - **sign extension**  
        for nonnegative values, the sign bit is 0  
        the same with **zero extension**  
        for negative values, the sign bit is 1  
        we can try to prove it by math  
        (seen in page 55 in CSAPP)  

        直观理解：原本负权为 $-2^{w-1}$ 的符号位变成了正权为 $2^{w-1}$ 的位  
        相当于加上了 $2^w$  
        再根据等差数列的基础知识，加上后面补上的其他位和符号位的值是相等的，所以不会改变原来的值  

**Cut Numbers:**  

for cast from bigger type to smaller type  
We just cut the bits and reinterpret the value  

seen test in [cut_test](../4_TestCode/2_week2/cut_test.c)  

### 1.5. Addition, Negation, Multiplication, Shifting

**Idea:**  
First of all, all these calculations are based on the bits.  
So no matter operate on signed or unsigned, the bits are the same.  
And to computer, what we should pay attention is how the calculation is different with real numbers : **overflow**

**Addition:**  

- **unsigned**  
    use the modulo operation to get rid of the overflow  
    $$x +^{u}_{w} y = (x + y) mod 2^w$$  
    - `x` and `y` are unsigned
    - `u` means unsigned
    - `w` means the word size
- **signed**  
    first calculate as unsigned  
    then interpret the result as signed  
    $$x +^{t}_{w} y = U2T_{w}(U2T_{w}(x) +^{u}_{w} U2T_{w}(y))\\=U2T_{w}[(x+y) mod 2^w]$$  

**Multiplication:**  

similar to addition, but the overflow is more complex  
