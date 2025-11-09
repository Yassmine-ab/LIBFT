/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_striteri.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yaabdall <yaabdall@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/26 01:07:00 by yaabdall          #+#    #+#             */
/*   Updated: 2024/06/04 11:54:15 by yaabdall         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
The ft_striteri function applies a function (*f) to
each character of a string (*s).
*/
#include "libft.h"

void	ft_striteri(char *s, void (*f)(unsigned int, char *))
{
	size_t	i;

	i = -1;
	if (!s || !f)
		return ;
	while (s[++i])
		f(i, s + i);
}
