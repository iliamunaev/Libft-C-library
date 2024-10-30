# Name of the library
NAME = libft.a

CC = cc

# The CFLAGS variable sets compile flags for cc:
# -Wall   : Give verbose compiler warnings
# -Wextra : Enables extra warning flags that are not enabled by -Wall
# -Werror : Make all warnings into errors
CFLAGS = -Wall -Wextra -Werror

SRC = $(wildcard *.c)

OBJ = $(SRC:.c=.o)

HEADER = libft.h

# Default rule to create the library
all: $(NAME)

# Main target to create the library
#  - 'r': Replace or add files into the archive
#  - 'c': Create the archive if it does not exist
#  - 's': Write an index (symbol table) into the archive for faster linking
$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

# Rule to compile source files into object files
%.o: %.c $(HEADER)
	$(CC) $(CFLAGS) -I. -c $< -o $@

# Phony targets to prevent make from thinking these are files
.PHONY: all clean fclean re

# Clean object files
clean:
	rm -f $(OBJ)

# Clean all generated files (including the library)
fclean: clean
	rm -f $(NAME)

# Clean and rebuild the project
re: fclean all