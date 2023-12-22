
#include	<stdio.h>

int	main()
{
	int a = 10;
	int b = 10;
	float c;

	int res;
	res = a / 3;
	printf("int 10 / 3 == %d\n", res); //3

	res = (float) a / 3;
	printf("%d\n%f\n", res, res); //3 
				//0.0000

	c = 10 / 3;
	printf("float c = int 10 / 3 == %f\n%d\n", c, c); //3.00000
							//-2021551520
	c = (float) 10 / 3;
	printf("float c = (float) 10 / 3 == %f\n%d\n", c, c); //3.33333
							//-2021551520


	return(0);
}

//Integers even if not used in variables, are still integers
//and act as ones. Compiler gives warnings, but its good for
//practise.
