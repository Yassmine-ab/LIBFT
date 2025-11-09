/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr_fd.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yaabdall <yaabdall@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/26 01:08:34 by yaabdall          #+#    #+#             */
/*   Updated: 2025/11/09 17:14:33 by yaabdall         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
The ft_putstr_fd function is used to write a string (*s)
to a file descriptor (fd).
*/

#include "libft.h"

void	ft_putstr_fd(char *s, int fd)
{
	size_t	i;

	if (!s)
		return ;
	i = -1;
	while (s[++i])
		ft_putchar_fd(s[i], fd);
}
