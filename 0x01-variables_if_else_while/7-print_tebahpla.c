#include <stdio.h>

/**
 * main - Entry point for function
 *
 * Return: 0
 */
int main(void)
{
	char i;

	for (i = 'z'; i >= 'a'; i--)
		putchar(i);
	putchar('\n');
	return (0);
}
