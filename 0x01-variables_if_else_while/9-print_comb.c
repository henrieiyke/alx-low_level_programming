#include <stdio.h>

/**
 * main - Entry point for function
 *
 * Return: 0
 * if error, return non-zero
 */
int main(void)
{
	int num;


	for (num = '0'; num <= '9'; num++)
	{
		putchar(num);


		if (num == '9')
		{
			break;
		}
		else
		{
			putchar(',');
			putchar(' ');
		}
	}
	putchar('\n');
	return (0);
}
