/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstadd_back.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yaabdall <yaabdall@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/29 03:16:52 by yaabdall          #+#    #+#             */
/*   Updated: 2024/05/31 03:47:23 by yaabdall         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
The ft_lstadd_back function adds a new node to
the end of a linked list. **lst is the pointer to the first link of
the list and *new is the pointer to the node to be added to the list.
*/
#include "libft.h"

void	ft_lstadd_back(t_list **lst, t_list *new)
{
	t_list	*current;

	current = *lst;
	if (current)
	{
		while (current->next)
			current = current->next;
		current->next = new;
	}
	else
		*lst = new;
}
