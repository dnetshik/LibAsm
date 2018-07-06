NAME = libfts.a
AS = nasm
ASFLAGS = -f macho64
SRC = ft_toupper.s ft_tolower.s ft_isascii.s ft_isdigit.s ft_isprint.s ft_isalpha.s ft_isalnum.s \
	  ft_strlen.s ft_strcat.s ft_strdup.s ft_bzero.s ft_memcpy.s ft_memset.s ft_puts.s
OBJECT = $(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJECT)
	ar rc $(NAME) $(OBJECT)
	ranlib $(NAME)

clean:
	/bin/rm -rf *.o

fclean: clean
	/bin/rm -rf $(NAME)

re: fclean all


		
