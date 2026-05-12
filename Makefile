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
				@COMPILED=$$(wc -l < .tmp 2>/dev/null || echo 0); \
				TOTAL=$(FILE_COUNT); \
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

SRC =			$(wildcard *.c)
OBJ =			$(SRC:.c=.o)

FILE_COUNT =	$(words $(SRC))


# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ RULES ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

%.o:			%.c
				@echo 1 >> .tmp
				@$(CC) $(CFLAGS) -c $< -o $@
				$(ANIMATION_COMPILE)

$(NAME):		$(OBJ)
				@ar rcs $(NAME) $(OBJ)
				@COMPILED=$$(wc -l < .tmp 2>/dev/null || echo 0); \
				printf "\n$(GREEN)✓$(DEFAULT) Built successfully ($$COMPILED/$(FILE_COUNT) files recompiled)\n"
				@rm -f .tmp

all:			$(NAME)

clean:
				$(call ANIMATION_FRAME,Cleaning objects)
				@rm -f $(OBJ) .tmp
				@printf "$(GREEN)✓$(DEFAULT) Cleaned\n"

fclean:			clean
				$(call ANIMATION_FRAME,Removing library)
				@rm -f $(NAME)
				@printf "$(GREEN)✓$(DEFAULT) Removed\n"

re:				fclean all

help:
				@printf "Usage: make [target]\n"
				@printf "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n"
				@printf "$(CYAN)all$(DEFAULT)		- Build the executable $(NAME)\n"
				@printf "$(CYAN)clean$(DEFAULT)		- Clean up object files\n"
				@printf "$(CYAN)fclean$(DEFAULT)		- Clean up all object files and executable\n"
				@printf "$(CYAN)re$(DEFAULT)		- Rebuild the entire project\n"
				@printf "$(CYAN)help$(DEFAULT)		- Show this help message\n"

.PHONY:			all clean fclean re help
