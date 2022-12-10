#include <stdio.h>

/**
 * main - print all combinations of three different digits
 *
 * Return: Always 0 (Success)
 */
int main(void) /*main entrypoint*/
{
	int one;
	int ten;
	int hundred;

	for (hundred = '0'; hundred <= '9'; hundred++)
	{
		for (ten = (hundred + 1); ten <= '9'; ten++) /* hundreds place*/
		{
			for (one = (ten + 1); one <= '9'; one++) /*tens=100s+1*/
			{
				putchar(hundred);
				putchar(ten);
				putchar(one);
				if (hundred != '7' || ten != '8' || one != '9') /*ones*/
				{
					putchar(',');
					putchar(' ');
				}
			}
		}
	}
	putchar('\n');
	return (0);
}
