#include <stdio.h>
#include <limits.h>

int allOddBits(int x) {
  int r = 0xAA ;
  r = r + (r << 8) ;
  r = r + (r << 16) ;
  return !((x & r) ^ r) ;
}

int main()
{
  printf("%d\n" , allOddBits(-2));
}