# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalpha.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdelmar <jdelmar@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/09 15:11:53 by jdelmar           #+#    #+#              #
#    Updated: 2015/04/09 15:12:18 by jdelmar          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global			_ft_isalpha

section			.text

_ft_isalpha:
		cmp	rdi, 'A'
		jl	false
		cmp	rdi, 'z'
		jg	false
		cmp	rdi, 'Z'
		jle	true
		cmp	rdi, 'a'
		jge	true
false:
		mov	rax, 0
		ret
true:
		mov	rax, 1
		ret
