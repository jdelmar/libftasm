# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdelmar <jdelmar@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/09 15:11:56 by jdelmar           #+#    #+#              #
#    Updated: 2015/04/09 15:12:18 by jdelmar          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global			_ft_isascii

section			.text

_ft_isascii:
			cmp	rdi, 0
			jl	false
			cmp	rdi, 127
			jg	false
true:
			mov	rax, 1
			ret
false:
			mov	rax, 0
			ret
