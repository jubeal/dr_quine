# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jubeal <jubeal@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/02/17 16:31:09 by jubeal            #+#    #+#              #
#    Updated: 2025/02/19 08:19:17 by jubeal           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


#Binary

COLLEEN = Colleen
GRACE = Grace
SULLY = Sully

#Src

SRC_COLLEEN = Colleen.s
SRC_GRACE = Grace.s
SRC_SULLY = Sully.s

#Obj

OBJ_COLLEEN = $(SRC_COLLEEN:.s=.o)
OBJ_GRACE = $(SRC_GRACE:.s=.o)
OBJ_SULLY = $(SRC_SULLY:.s=.o)

#Execution fog

RESULTS_FILES = Grace_kid.s\
								Sully_5.s\
								Sully_4.s\
								Sully_3.s\
								Sully_2.s\
								Sully_1.s\
								Sully_0.s\
								Sully_5\
								Sully_4\
								Sully_3\
								Sully_2\
								Sully_1\
								Sully_0

#Compilers

N = nasm
CC = gcc

#Flags

LINUX = -f elf64
CCFLAGS = -no-pie -z noexecstack -e main

#Rules

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN): $(SRC_COLLEEN)
	@echo "\033[34mCreation of $(COLLEEN) ...\033[0m"
	@$(N) $(LINUX) $<
	@$(CC) $(CCFLAGS) $(OBJ_COLLEEN) -o $@
	@echo "\033[34m$(COLLEEN) created ...\033[0m"

$(GRACE): $(SRC_GRACE)
	@echo "\033[34mCreation of $(GRACE) ...\033[0m"
	@$(N) $(LINUX) -w-label-orphan $<
	@$(CC) $(CCFLAGS) -o $@ $(OBJ_GRACE)
	@echo "\033[34m$(GRACE) created ...\033[0m"

$(SULLY): $(SRC_SULLY)
	@echo "\033[34mCreation of $(SULLY) ...\033[0m"
	@$(N) $(LINUX) $<
	@$(CC) $(CCFLAGS) -o $@ $(OBJ_SULLY)
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