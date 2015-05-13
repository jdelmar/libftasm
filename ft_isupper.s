# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdelmar <jdelmar@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/11 18:33:56 by jdelmar           #+#    #+#              #
#    Updated: 2015/05/11 18:35:30 by jdelmar          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global			_ft_isupper

section			.text

_ft_isupper:
				cmp	rdi, 'A'
				jl	false
				cmp	rdi, 'Z'
				jg	false
true:
				mov	rax, 1
				ret
false:
				mov	rax, 0
				ret
