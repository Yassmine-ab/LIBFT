/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_toupper.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yaabdall <yaabdall@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/25 14:17:23 by yaabdall          #+#    #+#             */
/*   Updated: 2024/05/31 03:29:37 by yaabdall         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
The toupper libc function is used to convert a lowercase letter (c)
to its corresponding uppercase letter.
*/
#include "libft.h"

int	ft_toupper(int c)
{
	if (c >= 'a' && c <= 'z')
		c -= ('a' - 'A');
	return (c);
}
/*
#include <stdio.h>

int main(void)
{
	printf("toupper: %d\n", toupper('A'));
	printf("ft_toupper: %d\n", ft_toupper('A'));
	return (0);
}
*/
