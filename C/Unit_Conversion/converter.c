
#include	<stdio.h>
#include	<unistd.h>

int	decimal_to_binary();	//3
int	binary_to_decimal();	//4
int	binary();	//2
int	hex();		//5
int	integer_to_hex();	//6
int	hex_to_integer();	//7

int	power(int input, int p);    //x to the power of y

int	power(int input, int p)
{
	int result = input;
	if(p < 1)
		return(1);
	while(p != 1)
	{
		result *= input;
		p--;
	}
	return(result);
}

int	hex_to_integer()
{
	char input[30];
	int i = 0;
	int len;
	int number;
	int result = 0;

	puts("Punch in a hexadecimal");
	scanf("%s", &input[0]);

	while(input[i] != 0)
		i++;
	len = i - 1;
	i = 0;
	while(input[i] != 0)
	{
		if(input[i] == 'x' || input[i] == 'X')
		{
			len--;
			i++;
		}
		if(input[i] < 71 && input[i] > 64)
			number = input[i] - 55;
		else if(input[i] < 103 && input[i] > 96)
			number = input[i] - 87;
		else
			number = input[i] - 48;
		result += number * power(16, len);
		i++;
		len--;
	}
	printf("As a number: %d\n", result);
	return(88);
}

int	integer_to_hex()
{
	int input;
	int reminder;
	int i = 0;
	int j = 0;
	char temp[30];
	char result[30];
	puts("Enter a number to convert");
	scanf("%d", &input);

	while(input > 0)
	{
		reminder = input % 16;
		if(reminder <= 9 && reminder >= 0)
			temp[i] = reminder + 48;
		else if(reminder <= 15 && reminder >= 10)
			temp[i] = reminder + 87;
		else
		{
			puts("Error in integer_to_hex");
			return(6);
		}
		input /= 16;
		i++;
	}
	while(i >= 0)
	{
		i--;
		result[j] = temp[i];
		j++;
	}
	printf("in hex:\n0x%s\n", result);
	return(88);
}

int	hex()
{
	int options;
	while(options != 666)
	{
		puts("\nPress 1 for decimal to hex");
		puts("Press 2 for hex to decimal");
		puts("Punch 88 to go back");
		puts("Punch 666 to exit");

		scanf("%d", &options);
		puts("");
		if(options == 88)
			return(88);
		else if(options == 666)
			return(666);
		else if(options == 1)
			options = integer_to_hex();
		else if(options == 2)
			options = hex_to_integer();
		else
		{
			puts("Error in hex");
			return(5);
		}
	}
	return(0);
}

int	binary()
{
	int options;
	while(options != 666)
	{
		puts("\nPress 1 for decimal to binary");
		puts("Press 2 for binary to decimal");
		puts("88 to go back");
		puts("666 to exit");

		scanf("%d", &options);
		puts("");
		if(options == 88)
			return(88);
		else if(options == 666)
			return(666);
		else if(options == 1)
			options = decimal_to_binary();
		else if(options == 2)
			options = binary_to_decimal();
		else
		{
			puts("Error in binary");
			return(2);
		}
		if(options == 666)
			return(666);
	}
	return(2);
}

int	binary_to_decimal()
{
	puts("Punch in a binary number:");
	char in_array[40];
	char *cp = &in_array[0];
	scanf("%s", cp);
	int i = 0;
	int multi = 1;
	int result = 0;

	while(cp[i] != 0)
		i++;
	while(--i >= 0)
	{
		result += (cp[i] - 48) * multi;
		multi *= 2;
	}
	printf("In decimal: %d\n\n", result);

	return(88);
}

int	decimal_to_binary()
{
	int i = 0;
	int j = 0;
	int in;
	char temp[50];
	char result[50];
	int option;
	while(option != 666)
	{
		puts("Punch in a decimal:");
		scanf("%d", &in);
		while(in > 0)
		{
			if(in % 2 == 1)
				temp[i] = '1';
			else
				temp[i] = '0';
			i++;
			in /= 2;
		}
		while(--i >= 0)
			result[j++] = temp[i]; //should use pointers
		result[j] = 0;
		printf("In binary: %s\n\n", result);
		return(88);
	}
	puts("Error in decimal_to_binary");
	return(88);
}

int	main()
{
	int option;
	while(option != 666)
	{
		puts("Press 1 for binary converters");
		puts("Press 2 for hex converters");
		puts("Punch 666 to exit");
		scanf("%d", &option);

		if(option == 666)
			return(0);
		if(option == 1)
			option = binary();
		else if(option == 2)
			option = hex();
		else if(option != 666)
		{
			puts("Error in main");
			option = 666;
		}
	}

	return(0);
}

/*
 *See gets and fgets. Maybe override is done or something why doesnt work.
 -All sorts of troubles with bad input and too long numbers
 -Correct bugs when you feel like it
 */
