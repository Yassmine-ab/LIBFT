################################################################################
#                                     COLORS                                   #
################################################################################

DEFAULT			= \033[0m
RED				= \033[1;31m
GREEN			= \033[1;32m
YELLOW			= \033[1;33m
BLUE			= \033[1;34m
MAGENTA			= \033[1;35m
CYAN			= \033[1;36m
WHITE			= \033[1;37m

################################################################################
#                                 PROGRESS BAR                                 #
################################################################################

define PROGRESS_BAR
	@TOTAL_STEPS=20; CURRENT_STEP=0; \
	while [ $$CURRENT_STEP -lt $$TOTAL_STEPS ]; do \
		CURRENT_STEP=$$(($$CURRENT_STEP + 1)); \
		echo -n "$(GREEN)▰$(DEFAULT)"; \
		sleep 0.01; \
	done; \
	echo " ✔️";
endef

################################################################################
#                                     CONFIG                                   #
################################################################################

NAME =			libft.a
CC =			cc
CFLAGS =		-Wall -Wextra -Werror
AR =			ar rcs
RM =			rm -f
HEADER =		libft.h

################################################################################
#                                PROGRAM'S SOURCES                             #
################################################################################

# Source files
SRCS =			ft_isalpha.c \
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

# Converts source file paths to object file paths
OBJS =			$(SRCS:.c=.o)

# Bonus files
BONUS =			ft_lstnew_bonus.c \
				ft_lstadd_front_bonus.c \
				ft_lstsize_bonus.c \
				ft_lstlast_bonus.c \
				ft_lstadd_back_bonus.c \
				ft_lstdelone_bonus.c \
				ft_lstclear_bonus.c \
				ft_lstiter_bonus.c \
				ft_lstmap_bonus.c

BONUS_OBJS =	$(BONUS:.c=.o)

################################################################################
#                                     RULES                                    #
################################################################################

# Rule for compiling source files into object files
%.o:			%.c $(HEADER)
				@$(CC) $(CFLAGS) -c $< -o $@

# Rule for creating the library
$(NAME):		$(OBJS)
				@echo -n "\n🛠️  $(WHITE)Building $(CYAN)$(NAME)$(DEFAULT) library\t\t\t"
				@$(AR) $(NAME) $(OBJS)
				$(PROGRESS_BAR)
				@echo ""

# Default rule
all:			$(NAME)

# Rule for cleaning up object files
clean:
				@echo -n "\n🧹 $(RED)Cleaning up $(CYAN)libft $(DEFAULT)object files\t\t"
				@$(RM) $(OBJS) $(BONUS_OBJS)
				$(PROGRESS_BAR)

# Full clean rule (objects files, executable and libraries)
fclean:			clean
				@echo -n "\n🗑️  $(RED)Deleting $(CYAN)$(NAME)$(DEFAULT) library\t\t\t"
				@$(RM) $(NAME)
				$(PROGRESS_BAR)
				@echo ""

# Rebuild rule
re:				fclean all

# Rule to compile bonus files
bonus:			$(OBJS) $(BONUS_OBJS)
				@echo -n "\n🎁 $(WHITE)Creating $(CYAN)$(NAME)$(DEFAULT) with bonus\t\t"
				@$(AR) $(NAME) $(OBJS) $(BONUS_OBJS)
				$(PROGRESS_BAR)
				@echo ""

# Rule to compile the program with debugging flags
debug:			$(OBJS)
				@echo -n "\n🔗 Compiling in $(CYAN)debug$(DEFAULT) mode\t\t\t"
				@$(AR) $(NAME) $(OBJS)
				$(PROGRESS_BAR)

# Rule to display help
help:
				@echo "\n$(CYAN)all$(DEFAULT)		- Build the library $(NAME)"
				@echo "$(CYAN)bonus$(DEFAULT)		- Build the library with bonus functions"
				@echo "$(CYAN)clean$(DEFAULT)		- Clean up object files"
				@echo "$(CYAN)fclean$(DEFAULT)		- Clean up all object files and library"
				@echo "$(CYAN)re$(DEFAULT)		- Rebuild the entire project"
				@echo "$(CYAN)debug$(DEFAULT)		- Compile with debugging information\n"

# Rule to ensure that these targets are always executed as intended, even if there are files with the same name
.PHONY:			all clean fclean re debug help bonus