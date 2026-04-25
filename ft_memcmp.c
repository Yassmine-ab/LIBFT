/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcmp.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yassabda <yassabda@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2026/04/21 15:33:42 by yassabda          #+#    #+#             */
/*   Updated: 2026/04/21 20:38:15 by yassabda         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_memcmp(const void *s1, const void *s2, size_t n)
{
	unsigned char	*s1_c;
	unsigned char	*s2_c;

	if (!n)
		return (0);
	s1_c = (unsigned char *)s1;
	s2_c = (unsigned char *)s2;
	while (n-- > 1 && *s1_c == *s2_c)
	{
		s1_c++;
		s2_c++;
	}
	return (*s1_c - *s2_c);
}
