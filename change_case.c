/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   change_case.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lguiller <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/09/12 13:00:16 by lguiller          #+#    #+#             */
/*   Updated: 2018/09/12 13:26:41 by lguiller         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_lowercase(const char *str)
{
	char	*tmp;
	int		i;

	if (!str || !(tmp = ft_strnew(ft_strlen(str))))
		return (NULL);
	i = -1;
	while (str[++i])
	{
		if (str[i] >= 'A' && str[i] <= 'Z')
			tmp[i] = ft_tolower(str[i]);
		else
			tmp[i] = str[i];
	}
	return (tmp);
}

char	*ft_uppercase(const char *str)
{
	char	*tmp;
	int		i;

	if (!str || !(tmp = ft_strnew(ft_strlen(str))))
		return (NULL);
	i = -1;
	while (str[++i])
	{
		if (str[i] >= 'A' && str[i] <= 'Z')
			tmp[i] = ft_toupper(str[i]);
		else
			tmp[i] = str[i];
	}
	return (tmp);
}
