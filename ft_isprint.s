# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdelmar <jdelmar@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/09 15:12:04 by jdelmar           #+#    #+#              #
#    Updated: 2015/04/09 15:12:19 by jdelmar          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global			_ft_isprint

section			.text

_ft_isprint:
			cmp	rdi, ' '
			jl	false
			cmp	rdi, '~'
			jg	false
true:
			mov	rax, 1
			ret
false:
			mov	rax, 0
			ret
