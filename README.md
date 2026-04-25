*This activity has been created as part of the 42 curriculum by yassabda.*

# libft

> This project follows the 42 Norme coding standard. Some implementation choices are intentional: no `for`, no `do...while`, no `switch`, etc.

## Description
`libft` is a custom C library developed in the 42 curriculum. Its goal is to rebuild a core set of standard C utility functions, then extend them with additional helper routines (string/memory utilities, conversions, output helpers, and linked-list tools).

This project is designed to:
- Practice low-level C programming and pointer manipulation.
- Build reliable, reusable functions with strict coding standards.
- Create a static library (`libft.a`) that can be reused in future 42 projects.

## Detailed Library Overview
The library currently provides 43 functions:

| Function | Category | Description |
| --- | --- | --- |
| `ft_isalpha` | Character checks | Checks if a character is alphabetic. |
| `ft_isdigit` | Character checks | Checks if a character is a decimal digit. |
| `ft_isalnum` | Character checks | Checks if a character is alphanumeric. |
| `ft_isascii` | Character checks | Checks if a value is in the ASCII range. |
| `ft_isprint` | Character checks | Checks if a character is printable. |
| `ft_strlen` | String utilities | Returns the length of a string. |
| `ft_strlcpy` | String utilities | Copies a string into a bounded buffer (size-aware copy). |
| `ft_strlcat` | String utilities | Concatenates strings into a bounded buffer (size-aware append). |
| `ft_strchr` | String utilities | Finds the first occurrence of a character in a string. |
| `ft_strrchr` | String utilities | Finds the last occurrence of a character in a string. |
| `ft_strncmp` | String utilities | Compares two strings up to `n` characters. |
| `ft_strnstr` | String utilities | Finds a substring within a bounded length. |
| `ft_strdup` | String utilities | Allocates and returns a duplicate of a string. |
| `ft_substr` | String utilities | Extracts a substring from a string. |
| `ft_strjoin` | String utilities | Allocates and returns the concatenation of two strings. |
| `ft_strtrim` | String utilities | Trims a set of characters from both ends of a string. |
| `ft_split` | String utilities | Splits a string into an array using a delimiter. |
| `ft_strmapi` | String utilities | Applies a function to each character and returns a new string. |
| `ft_striteri` | String utilities | Applies a function to each character in place. |
| `ft_memset` | Memory utilities | Fills a memory area with a byte value. |
| `ft_bzero` | Memory utilities | Sets a memory area to zero. |
| `ft_memcpy` | Memory utilities | Copies bytes between non-overlapping memory areas. |
| `ft_memmove` | Memory utilities | Copies bytes safely between possibly overlapping memory areas. |
| `ft_memchr` | Memory utilities | Scans memory for the first occurrence of a byte. |
| `ft_memcmp` | Memory utilities | Compares two memory areas byte by byte. |
| `ft_calloc` | Memory utilities | Allocates zero-initialized memory. |
| `ft_atoi` | Conversions | Converts a string to an integer. |
| `ft_itoa` | Conversions | Converts an integer to a string. |
| `ft_toupper` | Character transform | Converts a lowercase letter to uppercase. |
| `ft_tolower` | Character transform | Converts an uppercase letter to lowercase. |
| `ft_putchar_fd` | FD output | Writes a character to a file descriptor. |
| `ft_putstr_fd` | FD output | Writes a string to a file descriptor. |
| `ft_putendl_fd` | FD output | Writes a string followed by a newline to a file descriptor. |
| `ft_putnbr_fd` | FD output | Writes an integer to a file descriptor. |
| `ft_lstnew` | Linked-list | Creates a new list node. |
| `ft_lstadd_front` | Linked-list | Adds a node at the beginning of a list. |
| `ft_lstadd_back` | Linked-list | Adds a node at the end of a list. |
| `ft_lstsize` | Linked-list | Counts the number of nodes in a list. |
| `ft_lstlast` | Linked-list | Returns the last node of a list. |
| `ft_lstdelone` | Linked-list | Deletes one node using a provided delete function. |
| `ft_lstclear` | Linked-list | Deletes and frees all nodes in a list. |
| `ft_lstiter` | Linked-list | Iterates over a list and applies a function to each node content. |
| `ft_lstmap` | Linked-list | Creates a new list by applying a function to each node content. |

The public API is declared in `libft.h` (at the repository root) and compiled into a static archive (`libft.a`).

## Instructions

### Requirements
- A C compiler (`cc`)
- `make`
- Standard Unix environment

### Build
From the repository root:

```bash
make
```

This compiles object files into `obj/` and creates `libft.a`.

### Clean build artifacts

```bash
make clean
```

Removes object files.

```bash
make fclean
```

Removes object files and `libft.a`.

```bash
make re
```

Performs a full rebuild (`fclean` then `all`).

## Resources
References used for this project:
- Manual pages (`man`) for function behavior and edge cases.
- Linked-list fundamentals and patterns:
	- https://www.geeksforgeeks.org/data-structures/linked-list/

### AI Usage Disclosure
AI assistance was used for:
- Reviewing and improving project documentation structure and wording.
- Debugging support for a Makefile shell macro issue (compile animation syntax).

AI assistance was not used to replace manual implementation work for the core C functions in this library.
