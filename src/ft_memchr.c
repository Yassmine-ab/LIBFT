/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yaabdall <yaabdall@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/25 01:34:01 by yaabdall          #+#    #+#             */
/*   Updated: 2024/06/04 12:06:42 by yaabdall         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
The memchr libc function is used to search for the first occurrence
of a character (c) in the first n bytes (size) of a given string (*s).
*/
#include "libft.h"

void	*ft_memchr(const void *s, int c, size_t size)
{
	size_t	i;
	char	*s_c;

	i = -1;
	s_c = (char *)s;
	while (++i < size)
	{
		if (s_c[i] == (char)c)
			return ((void *)(s + i));
	}
	return (NULL);
}
/*
#include <stdio.h>
#include <string.h>

int	main(void)
{
	printf("memchr: %p\n", memchr("Hello guys", 'l', 7));
	printf("ft_memchr: %p\n", ft_memchr("Hello guys", 'l', 7));
	return (0);
}
*/
