# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ale-naou <ale-naou@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/11/30 14:16:11 by ale-naou          #+#    #+#              #
#    Updated: 2015/12/07 12:51:15 by ale-naou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = gcc
CFLAGS = -Werror -Wextra -Wall
SRC = `ls | grep "\.c" | grep "ft_"`
OBJ = `ls | grep "\.o" | grep "ft_"`

all : $(NAME)

$(NAME):
	$(CC) $(CFLAGS) -I/libft.h -c $(SRC)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)


clean :
	rm -rf $(OBJ)

fclean : clean
	rm -rf $(NAME)

re : fclean all


