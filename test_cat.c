#include "libasm.h"

void 	ft_cat(int fd);
int 	main(int argc, char **argv)
{
	int fd;
	
	(void)argc;
	fd = open(argv[1],O_RDONLY);
	ft_cat(fd);
	close(fd);
	return (0);
}
