# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ LAYOUT ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

DEFAULT			= \033[0m
GREEN			= \033[1;32m
CYAN			= \033[1;36m

define ANIMATION_FRAME
				@for frame in ⠋ ⠙ ⠹ ⠸ ⠼ ⠴ ⠦ ⠧ ⠇ ⠏; do \
				printf "\033[2K$$frame $(1)...\r"; \
				sleep 0.02; \
				done; \
				printf "\n"
endef

define ANIMATION_COMPILE
				@COMPILED=$$(wc -l < $(FILES_COUNT) 2>/dev/null || echo 0); \
				TOTAL=$(TOTAL_FILES); \
				PERCENT=$$(($$COMPILED * 100 / $$TOTAL)); \
				SPINNER_STATE=$$(($$COMPILED % 10)); \
				case $$SPINNER_STATE in \
				0) SPINNER="⠋" ;; 1) SPINNER="⠙" ;; 2) SPINNER="⠹" ;; 3) SPINNER="⠸" ;; \
				4) SPINNER="⠼" ;; 5) SPINNER="⠴" ;; 6) SPINNER="⠦" ;; 7) SPINNER="⠧" ;; \
				8) SPINNER="⠇" ;; 9) SPINNER="⠏" ;; \
				esac; \
				printf "$$SPINNER $(CYAN)Compiling$(DEFAULT) $$PERCENT%%\r"
endef


# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ VARIABLES ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

NAME =			libft.a
CC =			cc
CFLAGS =		-Wall -Wextra -Werror

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
				ft_substr.c \
				ft_lstnew.c \
				ft_lstadd_front.c \
				ft_lstsize.c \
				ft_lstlast.c \
				ft_lstadd_back.c \
				ft_lstdelone.c \
				ft_lstclear.c \
				ft_lstiter.c \
				ft_lstmap.c

OBJ =			$(SRC_FILES:.c=.o)

TOTAL_FILES =	$(words $(SRC_FILES))
FILES_COUNT =	.tmp


# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ RULES ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%.o:			%.c
				@echo 1 >> $(FILES_COUNT)
				@$(CC) $(CFLAGS) -c $< -o $@
				$(ANIMATION_COMPILE)

$(NAME):		$(OBJ)
				@ar rcs $(NAME) $(OBJ)
				@COMPILED=$$(wc -l < $(FILES_COUNT) 2>/dev/null || echo 0); \
				printf "\n$(GREEN)✓$(DEFAULT) Built successfully ($$COMPILED/$(TOTAL_FILES) files recompiled)\n"
				@rm -f $(FILES_COUNT)

all:			$(NAME)

clean:
				$(call ANIMATION_FRAME,Cleaning objects)
				@rm -rf $(OBJ) $(FILES_COUNT)
				@printf "$(GREEN)✓$(DEFAULT) Cleaned\n"

fclean:			clean
				$(call ANIMATION_FRAME,Removing library)
				@rm -f $(NAME)
				@printf "$(GREEN)✓$(DEFAULT) Removed\n"

re:				fclean all

help:
				@echo ""
				@echo "Usage: make [target]"
				@echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
				@echo "$(CYAN)all$(DEFAULT)		- Build the library $(NAME)"
				@echo "$(CYAN)clean$(DEFAULT)		- Clean up object files"
				@echo "$(CYAN)fclean$(DEFAULT)		- Clean up all object files and library"
				@echo "$(CYAN)re$(DEFAULT)		- Rebuild the entire project"
				@echo ""

.PHONY:			all clean fclean re help
