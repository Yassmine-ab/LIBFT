/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isascii.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yaabdall <yaabdall@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/25 01:02:23 by yaabdall          #+#    #+#             */
/*   Updated: 2024/06/04 12:08:39 by yaabdall         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
The isascii libc function is used to check if a given character (c) is ASCII
(values in the range of 0 to 127).
*/
#include "libft.h"

int	ft_isascii(int c)
{
	return (0 <= c && c <= 127);
}
