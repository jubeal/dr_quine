# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jubeal <jubeal@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/02/15 16:40:05 by jubeal            #+#    #+#              #
#    Updated: 2025/02/17 17:07:19 by jubeal           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#Binary

COLLEEN = Colleen
GRACE = Grace
SULLY = Sully

#Src

SRC_COLLEEN = Colleen.c
SRC_GRACE = Grace.c
SRC_SULLY = Sully.c

#Obj

OBJ_COLLEEN = $(SRC_COLLEEN:.c=.o)
OBJ_GRACE = $(SRC_GRACE:.c=.o)
OBJ_SULLY = $(SRC_SULLY:.c=.o)

#Execution fog

RESULTS_FILES = Grace_kid.c\
								Sully_5.c\
								Sully_4.c\
								Sully_3.c\
								Sully_2.c\
								Sully_1.c\
								Sully_0.c\
								Sully_5\
								Sully_4\
								Sully_3\
								Sully_2\
								Sully_1\
								Sully_0

#Flags

CC = gcc $(CFLAGS)

CFLAGS = -Wall -Wextra -Werror

#Rules

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN): $(SRC_COLLEEN)
	@echo "\033[34mCreation of $(COLLEEN) ...\033[0m"
	@$(CC) -c $<
	@$(CC) -o $@ $(OBJ_COLLEEN)
	@echo "\033[34m$(COLLEEN) created ...\033[0m"

$(GRACE): $(SRC_GRACE)
	@echo "\033[34mCreation of $(GRACE) ...\033[0m"
	@$(CC) -c $<
	@$(CC) -o $@ $(OBJ_GRACE)
	@echo "\033[34m$(GRACE) created ...\033[0m"

$(SULLY): $(SRC_SULLY)
	@echo "\033[34mCreation of $(SULLY) ...\033[0m"
	@$(CC) -c $<
	@$(CC) -o $@ $(OBJ_SULLY)
	@echo "\033[34m$(SULLY) created ...\033[0m"

clean:
	@echo "\033[33mRemoval of .o files ...\033[0m"
	@rm -f $(OBJ_COLLEEN) $(OBJ_GRACE) $(OBJ_SULLY)
	@echo "\033[31mFiles .o deleted\n\033[0m"

fclean: clean
	@echo "\033[33mRemoval of binaries and execution files...\033[0m"
	@rm -f $(COLLEEN) $(GRACE) $(SULLY) $(RESULTS_FILES)
	@echo "\033[31mBinaries and execution files deleted\n\033[0m"

re: fclean all

.PHONY: all, clean, fclean, re