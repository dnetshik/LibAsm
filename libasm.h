#ifndef LIBASM_H
# define LIBASM_H
#include <unistd.h>
#include <fcntl.h>
#include <string.h>
#include <stdio.h>


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
void ft_bzero(void *s, size_t n);
char *ft_strdup(const char *s1);
int	ft_puts(const char *s);
void ft_cat(int fd);
int ft_isupper();
int ft_islower();

#endif
