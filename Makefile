NAME		=	libasm.a

T_NAME		=	test_libft

SRCS		=	./ft_read.s \
				./ft_write.s \
				./ft_strcmp.s \
				./ft_strcpy.s \
				./ft_strdup.s \
				./ft_strlen.s

OBJS		=	${SRCS:.s=.o}

CC			= 	nasm

FLAGS		= 	-felf64

${NAME}:		${OBJS}
				ar rc ${NAME} ${OBJS}

.s.o:			${SRCS}
				${CC} ${FLAGS} $< 

all:			${NAME}

clean:		
				rm -f ${OBJS}

fclean:			clean
				rm -f ${NAME}

re:				fclean all

test:			re
				gcc main.c *.o && ./a.out
