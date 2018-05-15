# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: qhonore <qhonore@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/01/30 11:30:21 by qhonore           #+#    #+#              #
#    Updated: 2018/02/14 14:14:56 by qhonore          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC_PATH = ./src/
OBJ_PATH = ./obj/
INC_PATH = ./inc/

SRC_NAME = ft_bzero.s
TEST_SRC_NAME = main.cpp
OBJ_NAME = $(SRC_NAME:.s=.o)
NAME = libfts.a
TEST_NAME = test

SRC = $(addprefix $(SRC_PATH),$(SRC_NAME))
OBJ = $(addprefix $(OBJ_PATH),$(OBJ_NAME))
INC = $(addprefix -I ,$(INC_PATH))

LIB = -L . -lfts

CC = g++
ASM = nasm

AFLAGS = -f macho64
CFLAGS = -MMD -Wall -Wextra -Werror

all:
	@echo "\033[32;44m Make $(NAME) \033[0m"
	@make $(NAME)

$(NAME): $(OBJ)
	ar rc $@ $^
	ranlib $@

$(OBJ_PATH)%.o: $(SRC_PATH)%.s
	@mkdir -p $(OBJ_PATH)
	$(ASM) $(AFLAGS) -o $@ $<

$(TEST_NAME): $(OBJ) $(TEST_SRC_NAME)
	$(CC) $(CFLAGS) $(INC) $(LIB) $(TEST_SRC_NAME) -o $@

clean:
	@echo "\033[31;44m Make clean $(NAME) \033[0m"
	rm -rf $(OBJ_PATH)

fclean: clean
	@echo "\033[31;44m Make fclean $(NAME) \033[0m"
	rm -f $(NAME)
	rm -f $(TEST_NAME)

re: fclean all

-include $(OBJ:.o=.d)

.PHONY: lib clean fclean re