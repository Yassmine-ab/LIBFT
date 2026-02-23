/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_bzero.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yaabdall <yaabdall@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/24 20:00:19 by yaabdall          #+#    #+#             */
/*   Updated: 2024/06/04 10:50:39 by yaabdall         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
The bzero libc function is used to set a number of bytes (n) in
a block of memory (*s) to zero.
*/
#include "libft.h"

void	ft_bzero(void *s, size_t n)
{
	size_t	i;

	i = -1;
	while (++i < n)
		*(char *)(s + i) = '\0';
}
/*
Casting s + i to a char pointer to ensure that the operation is performed
on a byte-by-byte basis, and dereferencing it to assign 0.
*/
