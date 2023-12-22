
#include	<stdio.h>

int	main()
{
	int a = 10;
	short b;
	long c;
	double d;
	float e;
	char f = 'x';

	b = a;
	c = b;
	d = c;
	e = d;
	
	int g;
	g = f + e + d;

	float fl = 66.6;
	int ires = fl;
	double dub = 10 / 3;
	unsigned long ul = 0;
	ul--;
	ul = (ul / 2) / 2;
	int ires2 = ul;

	printf("%d\n", b);
	printf("%ld\n", c);
	printf("%f\n", d);
	printf("%f\n", e);
	printf("%d\n", f);
	printf("%d\n", g);
	printf("%d\n", ires);
	printf("%f\n", dub);
	printf("%lu\n", ul);
	printf("%d\n", ires2);


	return(0);
}
/*
 *Compiler changes the datatype in a order that follows until type matches:
 char -> int -> unsigned int -> long int -> unsigned long int -> ll ->
 ull -> float -> double -> long double
 */
