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
$$ s \quad e_{k-1}e_{k-2}...e_{1}e_{0} \quad f_{k-1}f_{k-2}...f_{1}f_{0} $$  

- `s` is the sign bit
- `e` is the exponent
- `f` is the significand  
    $frac = \sum_{i=1}^{k}f_{i} \times 2^{-i}$  

**sign:**  
easy to understand  
1 bit wide in the front end to represent the sign of the number  

**exponent(E) and significand(M):**  
very important in the floating point number  
there are three types:  

**通过`exponent`部份的二进制位区分:**  

1. 规格化的值: `exponent`不全为`0`or`1`  
    - $M = 1 + frac$  
    - $e = \sum_{i=0}^{k-1}e_{i} \times 2^{i} (0 \leq e < 2^{k-1})$  
        注意 : `exponent`的值域是`0`到`2^{k-1}-1`，因为其位表示不全为`0`or`1`  
    - $bias = 2^{k-1} - 1$  
    - $E = e - bias$  
2. 非规格化的值: `exponent`全为`0`  
    - $M = frac$  
    - $E = 1 - bias$  
        注意 : 此处`E`取的并非是`-bias`，而是`1 - bias`  
3. 特殊值: `exponent`全为`1`  
    表示 $NaN$ or $\infty$  
    - `f`部分全为0，表示 $\infty$，根据`s`的值确定正负  
    - `f`部分不全为0，表示 $NaN$

---

## Rounding, Addition, Multiplication



## Floating Point in C

## Summary