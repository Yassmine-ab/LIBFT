/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlen.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yaabdall <yaabdall@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/24 19:11:09 by yaabdall          #+#    #+#             */
/*   Updated: 2024/05/31 01:43:56 by yaabdall         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
The strlen libc function is used to calculate the length (i) of a string (*s).
*/
#include "libft.h"

size_t	ft_strlen(const char *s)
{
	size_t	i;

	i = 0;
	while (s[i])
		i++;
	return (i);
}
