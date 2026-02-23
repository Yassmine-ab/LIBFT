### LAYOUT ###

DEFAULT			= \033[0m
RED				= \033[1;31m
GREEN			= \033[1;32m
CYAN			= \033[1;36m

define PROGRESS_BAR
	@TOTAL_STEPS=20; CURRENT_STEP=0; \
	while [ $$CURRENT_STEP -lt $$TOTAL_STEPS ]; do \
		CURRENT_STEP=$$(($$CURRENT_STEP + 1)); \
		echo -n "$(GREEN)▰$(DEFAULT)"; \
		sleep 0.01; \
	done; \
	echo " ✔️";
endef

### VARIABLES ###

NAME =			libft.a
CC =			cc
CFLAGS =		-Wall -Wextra -Werror

SRC_PATH =		./src/
OBJ_PATH =		./obj/
INC_PATH =		./include/

SRC_FILES =		ft_isalpha.c \
				ft_isdigit.c \
				ft_isalnum.c \
				ft_isascii.c \
				ft_isprint.c \
				ft_strlen.c \
				ft_memset.c \
				ft_bzero.c \
				ft_memcpy.c \
				ft_memmove.c \
				ft_strlcpy.c \
				ft_strlcat.c \
				ft_toupper.c \
				ft_tolower.c \
				ft_strchr.c \
				ft_strrchr.c \
				ft_strncmp.c \
				ft_memchr.c \
				ft_memcmp.c \
				ft_strnstr.c \
				ft_atoi.c \
				ft_calloc.c \
				ft_strdup.c \
				ft_strjoin.c \
				ft_strtrim.c \
				ft_split.c \
				ft_itoa.c \
				ft_strmapi.c \
				ft_striteri.c \
				ft_putchar_fd.c \
				ft_putstr_fd.c \
				ft_putendl_fd.c \
				ft_putnbr_fd.c \
				ft_substr.c

SRC_FILES_BONUS =	ft_lstnew_bonus.c \
				ft_lstadd_front_bonus.c \
				ft_lstsize_bonus.c \
				ft_lstlast_bonus.c \
				ft_lstadd_back_bonus.c \
				ft_lstdelone_bonus.c \
				ft_lstclear_bonus.c \
				ft_lstiter_bonus.c \
				ft_lstmap_bonus.c

SRC =			$(addprefix $(SRC_PATH), $(SRC_FILES))
OBJ =			$(addprefix $(OBJ_PATH), $(SRC_FILES:.c=.o))
SRC_BONUS =		$(addprefix $(SRC_PATH), $(SRC_FILES_BONUS))
OBJ_BONUS =		$(addprefix $(OBJ_PATH), $(SRC_FILES_BONUS:.c=.o))

### RULES ###

$(OBJ_PATH)%.o:	$(SRC_PATH)%.c
				@mkdir -p $(dir $@)
				@$(CC) $(CFLAGS) -I$(INC_PATH) -c $< -o $@

$(NAME):		$(OBJ)
				@echo -n "\n🛠️  Building $(CYAN)$(NAME)$(DEFAULT) library\t\t\t"
				@ar rcs $(NAME) $(OBJ)
				$(PROGRESS_BAR)
				@echo ""

all:			$(NAME)

bonus:			$(OBJ) $(OBJ_BONUS)
				@echo -n "\n🎁 Creating $(CYAN)$(NAME)$(DEFAULT) with bonus\t\t"
				@ar rcs $(NAME) $(OBJ) $(OBJ_BONUS)
				$(PROGRESS_BAR)
				@echo ""

clean:
				@echo -n "\n🧹 $(RED)Cleaning up $(CYAN)project $(DEFAULT)object files\t\t"
				@rm -rf $(OBJ)
				$(PROGRESS_BAR)
				@echo ""

fclean:			clean
				@echo -n "\n🗑️  $(RED)Deleting $(CYAN)$(NAME)$(DEFAULT) library\t\t\t"
				@rm -f $(NAME)
				$(PROGRESS_BAR)
				@echo ""

re:				fclean all

help:
				@echo "\n$(CYAN)all$(DEFAULT)		- Build the library $(NAME)"
				@echo "$(CYAN)bonus$(DEFAULT)		- Build the library with bonus functions"
				@echo "$(CYAN)clean$(DEFAULT)		- Clean up object files"
				@echo "$(CYAN)fclean$(DEFAULT)		- Clean up all object files and library"
				@echo "$(CYAN)re$(DEFAULT)		- Rebuild the entire project"

.PHONY:			all clean fclean re bonus help
