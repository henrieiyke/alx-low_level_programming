#include <stdio.h>
/**
 * main - print lowervase a-z
 *
 * Description: using the main function
 * Return: 0
 */
int main(void)
{
	char alpha = 'a';

	while (alpha <= 'z')
	{
		putchar(alpha);
		alpha++;
	}
	{
		putchar('\n');
	}
	return (0);
}
