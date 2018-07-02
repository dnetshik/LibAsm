#include <stdio.h>

int ft_toupper();
int ft_tolower();
int	ft_isascii();
int ft_isprint();
int ft_isdigit();
int ft_isalpha();
int ft_isalnum();
char *ft_strcat(char * s1,char *s2);

int	main(void)
{
	printf("To Lower: %c\n", ft_tolower('A'));
	printf("To Upper: %c\n", ft_toupper('a'));
	printf("Is Ascii: %c %d\n", 'g',ft_isascii('g'));
	printf("Is print: %c %d\n", '\t', ft_isprint('\t'));
	printf("Is digit: %c %d\n", '0', ft_isdigit('0'));
	printf("Is Alpha: %c %d\n", '[', ft_isalpha('['));
	printf("Is Alpha Numeric: %c %d", '[', ft_isalnum('['));

	//for ft_strcat
	char src[50], dest[50];
   	strcpy(src,  "This is source");
   	strcpy(dest, "This is destination");
   	ft_strcat(dest, src);
   	printf("Final destination string : |%s|", dest);

/*	
	for (int i = -5; i < 130; i++)
		printf("IsAscii: %d %d\n", i, ft_isascii(i));*/

	return (0);
}
