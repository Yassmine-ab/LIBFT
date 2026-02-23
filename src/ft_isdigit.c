/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isdigit.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yaabdall <yaabdall@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/24 19:10:39 by yaabdall          #+#    #+#             */
/*   Updated: 2024/05/24 19:10:49 by yaabdall         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
The isdigit libc function is used to check if a given character (c) is a digit.
*/
#include "libft.h"

int	ft_isdigit(int c)
{
	return (c >= '0' && c <= '9');
}
