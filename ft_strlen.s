# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdelmar <jdelmar@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/20 14:43:02 by jdelmar           #+#    #+#              #
#    Updated: 2015/04/20 14:43:09 by jdelmar          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global			_ft_strlen

section			.text

_ft_strlen:
			sub		rcx, rcx
			not		rcx
			sub		al, al
			cld
			repne	scasb
			not		rcx
			lea		rax, [rcx - 1]
			ret
