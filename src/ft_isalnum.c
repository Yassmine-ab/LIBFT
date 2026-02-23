/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalnum.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yaabdall <yaabdall@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/25 00:42:58 by yaabdall          #+#    #+#             */
/*   Updated: 2024/05/25 00:43:04 by yaabdall         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
The isalnum libc function is used to check if a given character (c)
is alphanumeric, i.e., if it's either a letter or a digit.
*/
#include "libft.h"

int	ft_isalnum(int c)
{
	return (ft_isalpha(c) || ft_isdigit(c));
}
