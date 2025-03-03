#include<stdio.h>
#include<Windows.h>//暂停函数 Sleep() 的头文件
int main()
{
	int r = 255;
	int g = 0;
	int b = 0;
	printf("\n\n\n\n");//美化显示格式
	printf("\t\t r\t g\t b\n");//美化显示格式
	
    for (;;)//关键循环
	{
		if (255 == r && g < 255 && 0 == b)//多个分支实现渐变色的循环
		{
			g++;
		}
		else if (255 == g && r > 0 && 0 == b)
		{
			r--;
		}
		else if (0 == r && b < 255 && 255 == g)
		{
			b++;
		}
		else if (0 == r && g > 0 && 255 == b)
		{
			g--;
		}
		else if (0 == g && r < 255 && 255 == b)
		{
			r++;
		}
		else if (255 == r && 0 == g && b > 0)
		{
			b--;
		}
 
		printf("\033[?25l\033[38;2;%d;%d;%dmBLZ\033[0m\033[?25l\t\033[48;2;%d;%d;%dm    \033[0m\033[?25l\t%3d\t%3d\t%3d\n\033[1A", r, g, b, r, g, b, r, g, b);//分析详见下文
		Sleep(1);//暂停1ms，详见下文
	}
 
 
 
	return 0;
}