# Class 3 Note : Float(浮点数)

---

## Fractional Binary Numbers

first we look at general decimal numbers:  
$$ d_{m}d_{m-1}...d_{1}d_{0}.d_{-1}d_{-2}...d_{-n} $$  
$$ d = \sum_{i=-n}^{m}d_{i} \times 2^{i} $$  

- `i` represents the power of 10  
    - nonnegative `i` represents the integer part
    - negative `i` represents the fractional part  

we then try the similar form in binary:  
$$ b_{m}b_{m-1}...b_{1}b_{0}.b_{-1}b_{-2}...b_{-n} $$  
$$ b = \sum_{i=-n}^{m}b_{i} \times 2^{i} $$  

---

## IEEE 754 Floating Point Standard

use the form like scientific notation:  
$$V = (-1)^{s} \times M \times 2^{E}$$  

three important parts:  

- `sign(符号)` bit `s`  
    - 0 for positive  
    - 1 for negative
- `significand(尾数)` `M`  
    - a fractional binary number  
    - with range $1 \leq M < 2$ or $0 \leq M < 1$  
- `exponent(阶码)` `E`  
    - an integer represents the wight of the floating point number  
    - with range $E_{min} \leq E \leq E_{max}$  

binary form:  
$$ s \quad e_{k-1}e_{k-2}...e_{1}e_{0} \quad f_{n-1}f_{n-2}...f_{1}f_{0} $$  

- `s` is the sign bit
- `e` is the exponent  
    `k` bits wide of **exp field**  
- `f` is the significand  
    `n` bits wide of **frac field**
    $frac = \sum_{i=1}^{n}f_{i} \times 2^{-i}$  

**sign:**  
easy to understand  
1 bit wide in the front end to represent the sign of the number  

**exponent(E) and significand(M):**  
very important in the floating point number  
there are three types:  

**通过`exponent`部份的二进制位区分:**  

1. 规格化的值(normalized): `exponent`不全为`0`or`1`  
    - $M = 1 + frac$  
    - $e = \sum_{i=0}^{k-1}e_{i} \times 2^{i} (0 < e < 2^{k} -1)$  
        注意 : `exponent`的值域是 $(0, 2^{k} -1)$ ，因为其位表示不全为`0`(值为 $0$ ) or `1`(值为 $2^{k} -1$ )  
    - $bias = 2^{k-1} - 1$  
    - $E = e - bias$  
2. 非规格化的值(denormalized): `exponent`全为`0`  
    - $M = frac$  
    - $E = 1 - bias$  
        注意 : 此处`E`取的并非是`-bias`，而是`1 - bias`  
3. 特殊值(special): `exponent`全为`1`  
    表示 $NaN$ (Not a Number) or $\infty$  
    - `f`部分全为0，表示 $\infty$，根据`s`的值确定正负  
    - `f`部分不全为0，表示 $NaN$

**理解及性质:**  

1. `frac`区域与`M`的关系  
    `frac`正如其名，只包含所表示的binary fraction的小数部分  
    对于normalized value, 整数部分为1  
    对于denormalized value, 整数部分为0  
    *因为考虑到这个位上总是1，因此不存储在`frac`中，省出了一个bit*  
2. `bias`  
    表示偏移量  
    *个人认为其作用之一同样是为了省出表示`E`的bit*  
    此外，对于normalized number, $E = e - bias$  
    对于denormalized number, $E = 1 - bias$  
    这里为denormalized number增加了一个偏移量，主要是使得denormalized number可以与normalized number的值更平滑地衔接  
3. **denormalized number**  
    **两个用途**：
    1. 表示0  
        因为normalized number中`M`的范围是 $1 \leq M < 2$  
        无法表示0  
    2. 表示非常接近0.0的值  
        其具有一种属性，逐渐下溢(gradual underflow)  
        可以预见地，因为`E`的固定，会随着`frac`的减小，`M`的值逐渐均匀的接近于0.0  
4. float number的大小比较  
    不难证明，在`s`为0的情况下(即正数)  
    float的binary表示的整数部分越大，其值越大  
    而复数则正好相反  
    *这也是设计的一环，使得float number相当容易进行比较*  

Addition:  

||float|double|
|---|---|---|
|s(ign)|1|1|
|exp(onent)|8|11|
|frac(tion)|23|52|

## Rounding, Addition, Multiplication

## Floating Point in C

## Summary
