# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gansard <gansard@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/07 13:44:04 by ymehlil           #+#    #+#              #
#    Updated: 2023/01/04 15:32:16 by gansard          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME			= libftprintf.a

SRCS			= ft_atoi.c ft_itoa.c ft_strchr.c ft_strdup.c  ft_strlen.c\
					 ft_strjoin.c ft_printf.c ft_strlcpy.c\
					 ft_print_d.c ft_print_p.c ft_print_s.c\
					ft_print_u.c\
					ft_print_x.c ft_print_X.c\
					ft_atoi_hex.c

OBJS			= $(SRCS:.c=.o)
CC				= gcc
RM				= rm -f
CFLAGS			= -Wall -Wextra -Werror -I.

all:			$(NAME)

$(NAME):		$(OBJS)
				ar rcs $(NAME) $(OBJS)

clean:
				$(RM) $(OBJS) 

fclean:			clean
				$(RM) $(NAME)

re:				fclean $(NAME)

.PHONY: all clean fclean re