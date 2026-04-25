/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yassabda <yassabda@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2026/04/21 15:33:48 by yassabda          #+#    #+#             */
/*   Updated: 2026/04/26 00:29:46 by yassabda         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memmove(void *dest, const void *src, size_t n)
{
	char	*dest_c;
	char	*src_c;

	dest_c = (char *)dest;
	src_c = (char *)src;
	if (dest_c > src_c)
	{
		while (n-- > 0)
			dest_c[n] = src_c[n];
	}
	else
		ft_memcpy(dest, src, n);
	return (dest);
}

