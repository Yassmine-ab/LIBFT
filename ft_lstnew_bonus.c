/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstnew.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yaabdall <yaabdall@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/29 03:19:34 by yaabdall          #+#    #+#             */
/*   Updated: 2024/05/31 03:37:31 by yaabdall         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
The ft_lstnew function allocates (with malloc) and returns a new node.
*new is the pointer to the new node.
The variable *content is initialized with the value of the parameter
*content, which is the content to create the node with.
The variable *next is initialized to NULL.
*/
#include "libft.h"

t_list	*ft_lstnew(void *content)
{
	t_list	*new;

	new = (t_list *)malloc(sizeof(t_list));
	if (!new)
		return (NULL);
	new->content = content;
	new->next = NULL;
	return (new);
}
