# Data Lab

## Introduction

**What to do?**  

do the work in `bits.c`  

**How to use?**  

1. Compile  

    ```bash
    ./dlc bits.c
    ```

    we can add arg `-e` to count the number of operators for each function.  

2. Test

    ```bash
    make btest
    ./btest args
    ```

## Conclusion

Important numbers in two's complement system:  

`-1` : `0xFFFFFFFF`  
`0` : `0x00000000`  
`1` : `0x00000001`  
`-2147483648`(`Tmin`) : `0x80000000`  
`2147483647`(`Tmax`) : `0x7FFFFFFF`

Important natures of bit manipulation:  

- `~0 = -1`  
- `~x + 1 = -x`
- `x ^ x = 0`
- `x & (-1) = x`  
- `x | 0 = x`  
- `x ^ 0 = x`  
- `x & 0 = 0`  
- `Tmax + 1 = ~Tmax = Tmin`  
