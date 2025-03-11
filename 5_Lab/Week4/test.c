#include <stdio.h>

int isLessOrEqual(int x, int y) {
  y = y + ~x + 1;   // y = y - x
  int isPositive = !((1<<31) & y) ; // if y < 0 , the sign bit should be 1
  return isPositive ;
}

int main()
{
  printf("%d\n" , (1 << 31)) ;
}