# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memset.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdelmar <jdelmar@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/20 14:42:44 by jdelmar           #+#    #+#              #
#    Updated: 2015/04/20 14:43:09 by jdelmar          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global					_ft_memset

section					.text

_ft_memset:
			lea	r8, [rdi]
			cmp	rdx, 0
			je	end
			lea	rax, [rsi]
			lea	rcx, [rdx]
			rep stosb
	end:
			lea	rax, [r8]
			ret
