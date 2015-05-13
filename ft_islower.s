# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_islower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdelmar <jdelmar@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/11 18:30:58 by jdelmar           #+#    #+#              #
#    Updated: 2015/05/11 18:30:59 by jdelmar          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global			_ft_islower

section			.text

_ft_islower:
				cmp	rdi, 'a'
				jl	false
				cmp	rdi, 'z'
				jg	false
true:
				mov	rax, 1
				ret
false:
				mov	rax, 0
				ret
