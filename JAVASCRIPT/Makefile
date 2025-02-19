# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jubeal <jubeal@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/02/17 16:03:31 by jubeal            #+#    #+#              #
#    Updated: 2025/02/17 16:07:52 by jubeal           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#Src

SRC_COLLEEN = Colleen.js
SRC_GRACE = Grace.js
SRC_SULLY = Sully.js

#Execution fog

RESULTS_FILES = Grace_kid.js\
								Sully_5.js\
								Sully_4.js\
								Sully_3.js\
								Sully_2.js\
								Sully_1.js\
								Sully_0.js\

#Rules

all: $(COLLEEN) $(GRACE) $(SULLY)

Colleen:
	@echo "\033[34mColleen execution\033[0m"
	@node $(SRC_COLLEEN)

Grace:
	@echo "\033[34mGrace execution\033[0m"
	@node $(SRC_GRACE)

Sully:
	@echo "\033[34mSully execution\033[0m"
	@node $(SRC_SULLY)

$(SULLY)%.c:
	@echo $@

clean:
	@echo "\033[33mRemoval of execution files ...\033[0m"
	@rm -f $(RESULTS_FILES)
	@echo "\033[31mExecution files deleted\n\033[0m"

fclean: clean

re: fclean all

.PHONY: all, clean, fclean, re