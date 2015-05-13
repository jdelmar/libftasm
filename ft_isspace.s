# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isspace.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdelmar <jdelmar@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/05 14:22:22 by jdelmar           #+#    #+#              #
#    Updated: 2015/05/05 14:22:24 by jdelmar          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global					_ft_isspace

section					.text

_ft_isspace:
			cmp	rdi, 32
			je	true
			cmp	rdi, 9
			jl	false
			cmp	rdi, 13
			jg	false
true:
			mov	rax, 1
			ret
false:
			mov	rax, 0
			ret
