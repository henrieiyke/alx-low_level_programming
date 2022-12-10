#include <stdio.h>
#include <stdlib.h>
#include <time.h>
/**
 * main - Entry
 *
 * Description: function prints \"Programming is positive, zero, or negative
 * returns zero otherwise
 * Return: 0
 */
int main(void)
{
	int n; 

	srand(time(0));
	n = rand() - RAND_MAX / 2;

	if (n > 0)
	{
		printf("%d is positive\n", n);
	}
	else if (n == 0)
	{
		printf("%d is zero\n", n);
	}
	else if (n < 0)
	{
		printf("%d is negative\n", n);
	}
	return (0);
}
