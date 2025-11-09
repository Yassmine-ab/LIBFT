/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstlast.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yaabdall <yaabdall@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/29 03:18:58 by yaabdall          #+#    #+#             */
/*   Updated: 2024/05/31 03:03:19 by yaabdall         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
The ft_lstlast function returns the last node of a linked list.
**lst is the pointer to the first link of the list
*/
#include "libft.h"

t_list	*ft_lstlast(t_list *lst)
{
	while (lst && lst->next)
		lst = lst->next;
	return (lst);
}
