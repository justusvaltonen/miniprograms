/*
To be efficient computers use some methods to calculate that aren't so intuitive to the human mind. Just testing Strassens algorithm if it works in the first place
*/
#include	<stdio.h>

int	main(){
	int a1 = 501;
	int a2 = 823;
	int a3 = 17;
	int a4 = 31;
	int b1 = 400;
	int b2 = 123;
	int b3 = 72;
	int b4 = 200;

	//Math class way
	int c1 = (a1 * b1) + (a2 * b3);
	int c2 = (a1 * b2) + (a2 * b4);
	int c3 = (a3 * b1) + (a4 * b3);
	int c4 = (a3 * b2) + (a4 * b4);

	puts("Old way states that the values of matrix multiplication of 4X4 grid are:");
	printf("C1: %d\nC2: %d\nC3: %d\nC4: %d\n", c1, c2, c3, c4);

	//Strassens algorithm
	int m1 = (a1 + a4) * (b1 + b4);
	int m2 = (a3 + a4) * b1;
	int m3 = a1 * (b2 - b4);
	int m4 = a4 * (b3 - b1);
	int m5 = (a1 + a2) * b4;
	int m6 = (a3 - a1) * (b1 + b2);
	int m7 = (a2 - a4) * (b3 + b4);

	c1 = m1 + m4 - m5 + m7;
	c2 = m3 + m5;
	c3 = m2 + m4;
	c4 = m1 - m2 + m3 + m6;

	puts("Strassens algorithm that should be faster on larger numbers gets us:");
	printf("C1: %d\nC2: %d\nC3: %d\nC4: %d\n", c1, c2, c3, c4);

	puts("Seems like a weird way of calculating. Internet says this is good so I guess I have to believe. Seems to work...");
	puts("The real value of using the latter algorithm should come in play only after we increase the magnitude of our input values. Since I don't have an answer to implement ATM, one needs to google for more");
	return(0);
}

