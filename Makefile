# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ielouazz <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/04/14 17:37:10 by ielouazz          #+#    #+#              #
#    Updated: 2019/04/14 18:47:21 by ielouazz         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SOURCES = *.c
OBJECTS = *.o
CC = gcc -Wall -Werror -Wextra

all : $(NAME)

$(NAME) :
	$(CC) -c $(SOURCES) 
	ar rc $(NAME) $(OBJECTS)
	ranlib $(NAME)

clean :
	/bin/rm -f $(OBJECTS)

fclean : clean
	/bin/rm -f $(NAME)

re : fclean all
