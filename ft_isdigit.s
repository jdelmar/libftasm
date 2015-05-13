# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdelmar <jdelmar@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/09 15:12:00 by jdelmar           #+#    #+#              #
#    Updated: 2015/04/09 15:12:18 by jdelmar          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global			_ft_isdigit

section			.text

_ft_isdigit:
			cmp	rdi, 48
			jl	false
			cmp	rdi, 57
			jg	false
true:
			mov	rax, 1
			ret
false:
			mov	rax, 0
			ret
