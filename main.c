#include <stdio.h>
#include <string.h>
int ft_toupper();
int ft_tolower();
int	ft_isascii();
int ft_isprint();
int ft_isdigit();
int ft_isalpha();
int ft_isalnum();
char *ft_strcat(char * s1,char *s2);
size_t ft_strlen(const char *s);
void *ft_memcpy(void *restrict dst1, const void *restrict src1, size_t n);
void *ft_memset(void *b, int c, size_t len);

int	main(void)
{
	printf("To Lower: %c\n", ft_tolower('A'));
	printf("To Upper: %c\n", ft_toupper('a'));
	printf("Is Ascii: %c %d\n", 'g',ft_isascii('g'));
	printf("Is print: %c %d\n", '\t', ft_isprint('\t'));
	printf("Is digit: %c %d\n", '0', ft_isdigit('0'));
	printf("Is Alpha: %c %d\n", '[', ft_isalpha('['));
	printf("Is Alpha Numeric: %c %d\n", '[', ft_isalnum('['));

	//for ft_strcat
	char src[50], dest[50];
   	strcpy(src,  "Netshikulwe");
   	strcpy(dest, "Donald");
   	ft_strcat(dest, src);
   	printf("String Concatinate : |%s|\n", dest);
	printf("The length of string is: %zu\n",ft_strlen("DONALD123"));

	//for memcpy
	const char src1[50] = "http://www.tutorialspoint.com";
   	char dest1[50];
   	strcpy(dest1,"Heloooo!!");
  	//printf("Before memcpy dest = %s\n", dest1);
  	ft_memcpy(dest1, src1, strlen(src1)+1);
  	printf("After memcpy dest = %s\n", dest1);


	//for memset
	char str[50];
   	strcpy(str,"This is string.h library function");
   	puts(str);
   	ft_memset(str,'$',7);
  	puts(str);

	return (0);
}
