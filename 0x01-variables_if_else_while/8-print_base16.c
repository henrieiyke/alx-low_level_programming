#include <stdio.h>

/**
 * main - Entry point for function
 *
 * Return: 0
 * and non-zero if error
 */
int main(void)
{
	int i;
	char hexvalues[] = "0123456789abcdef";

	for (i = 0; i < 16; i++)
		putchar(hexvalues[i]);
	putchar('\n');
	return (0);
}
