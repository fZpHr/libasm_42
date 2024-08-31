# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hbelle <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/05 17:52:23 by hbelle            #+#    #+#              #
#    Updated: 2023/11/07 11:57:47 by hbelle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libasm.a

SRCS	=	ft_strlen.s \
			ft_strcpy.s \
			ft_strcmp.s \
			ft_write.s \
			ft_read.s \
			ft_strdup.s
	
OBJTS	=	${SRCS:.s=.o}
OBJ_DIR = .o

NASM	=	nasm
RM	=	rm -f

NASMFLAGS = -f elf64

.s.o:
	${NASM} ${NASMFLAGS} $< -o ${<:.s=.o}

$(NAME): ${OBJTS}
	ar rcs ${NAME} ${OBJTS}

all:	${NAME}

clean:
	${RM} ${OBJTS}

fclean:	clean
	${RM} ${NAME}

re:	fclean all

.PHONY: all clean fclean re