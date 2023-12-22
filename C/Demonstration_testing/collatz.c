
#include	<stdio.h>

int	col(int n);

int	col(int n)
{
	int i = 0;
	while(n != 1)
	{
	    printf("%d\n", n);
		if(n % 2 == 0)
		{
			n = n/2;
		}
		else
		{
			n = (n * 3) + 1;
		}
		i++;
		
	}
	return(i);
}

int	main()
{
	int input = 97;
	int res = 0;
	res = col(input);
	printf("%d steps done with input of %d\n", res, input);
	return(0);
}

/*
 *https://en.wikipedia.org/wiki/Collatz_conjecture
 Rabbithole warning. Leads to nowhere but is captivating
 check the reverse stuff. How to make the tree in reverse
 Other cool stuff can be derived from this guy also
 */
 
