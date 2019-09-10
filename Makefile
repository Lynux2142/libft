# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lguiller <lguiller@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/07 11:15:29 by lguiller          #+#    #+#              #
#    Updated: 2019/09/10 12:18:12 by lguiller         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

##################
##  VARIABLES   ##
##################

NAME		= libft.a

SRCS1		= ft_memset
SRCS1		+= ft_bzero
SRCS1		+= ft_memcpy
SRCS1		+= ft_memccpy
SRCS1		+= ft_memmove
SRCS1		+= ft_memchr
SRCS1		+= ft_memcmp
SRCS1		+= ft_strlen
SRCS1		+= ft_strdup
SRCS1		+= ft_strcpy
SRCS1		+= ft_strncpy
SRCS1		+= ft_strcat
SRCS1		+= ft_strncat
SRCS1		+= ft_strlcat
SRCS1		+= ft_strchr
SRCS1		+= ft_strrchr
SRCS1		+= ft_strstr
SRCS1		+= ft_strnstr
SRCS1		+= ft_strcmp
SRCS1		+= ft_strncmp
SRCS1		+= ft_atoi
SRCS1		+= ft_isalpha
SRCS1		+= ft_isdigit
SRCS1		+= ft_isalnum
SRCS1		+= ft_isascii
SRCS1		+= ft_isprint
SRCS1		+= ft_toupper
SRCS1		+= ft_tolower
SRCS1		+= ft_memalloc
SRCS1		+= ft_memdel
SRCS1		+= ft_strnew
SRCS1		+= ft_strdel
SRCS1		+= ft_putchar
SRCS1		+= ft_putstr
SRCS1		+= ft_putendl
SRCS1		+= ft_putchar_fd
SRCS1		+= ft_putnbr
SRCS1		+= ft_strclr
SRCS1		+= ft_striter
SRCS1		+= ft_striteri
SRCS1		+= ft_strmap
SRCS1		+= ft_strmapi
SRCS1		+= ft_strequ
SRCS1		+= ft_strnequ
SRCS1		+= ft_strsub
SRCS1		+= ft_strjoin
SRCS1		+= ft_strtrim
SRCS1		+= ft_strsplit
SRCS1		+= ft_itoa
SRCS1		+= ft_putstr_fd
SRCS1		+= ft_putendl_fd
SRCS1		+= ft_putnbr_base
SRCS1		+= ft_lstnew
SRCS1		+= ft_lstdelone
SRCS1		+= ft_lstdel
SRCS1		+= ft_lstadd
SRCS1		+= ft_lstiter
SRCS1		+= ft_lstmap
SRCS1		+= ft_putaddr
SRCS1		+= ft_putaddr_fd
SRCS1		+= ft_itoa_base
SRCS1		+= ft_brackets
SRCS1		+= ft_isprime
SRCS1		+= ft_abs
SRCS1		+= ft_strcspn
SRCS1		+= ft_pgcd
SRCS1		+= ft_ppcm
SRCS1		+= ft_putnbr_fd
SRCS1		+= ft_realloc
SRCS1		+= ft_sqrt
SRCS1		+= get_next_line
SRCS1		+= ft_isspace
SRCS1		+= print_memory
SRCS1		+= ft_atoi_base
SRCS1		+= power
SRCS1		+= ft_split_whitespaces
SRCS1		+= ft_error
SRCS1		+= ft_puterror
SRCS1		+= ft_fabs
SRCS1		+= ft_rounded_to_mult
SRCS1		+= ft_rgba
SRCS1		+= ft_rad
SRCS1		+= ft_remove_whitespaces
SRCS1		+= ft_deg
SRCS1		+= change_case
SRCS1		+= ft_pointdef
SRCS1		+= ft_signe

SRCS		= $(addsuffix .c, $(SRCS1))
OBJS		= $(SRCS:.c=.o)

CFLAGS		= -Wall -Wextra -Werror -g
CC			= clang

##################
##    COLORS    ##
##################

_GREY		= "\033[30m"
_RED		= "\033[31m"
_GREEN		= "\033[32m"
_YELLOW		= "\033[33m"
_BLUE		= "\033[34m"
_PURPLE		= "\033[35m"
_CYAN		= "\033[36m"
_WHITE		= "\033[37m"
_END		= "\033[0m"
_BOLD		= "\033[1m"
_CLEAR		= "\033[2K"
_SAVE		= "\033[7"
_BACK		= "\033[8"
_HIDE_CURS	= "\033[?25l"
_SHOW_CURS	= "\033[?25h"
_UP			= "\033[A"
_CUT		= "\033[k"

##################
##   TARGETS    ##
##################

.PHONY: all clean fclean re norme
.SILENT:

all: launch

launch:
	echo $(_CLEAR)$(_YELLOW)"Building - "$(_GREEN)$(NAME)$(_END)
	$(MAKE) $(NAME)
	echo $(_GREEN)"\nDone."$(_END)$(_SHOW_CURS)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

$(OBJS): %.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@
	printf $<

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re:
	$(MAKE) fclean
	$(MAKE)

norme:
	norminette *.[c,h]
