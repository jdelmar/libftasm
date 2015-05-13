# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdelmar <jdelmar@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/20 14:42:36 by jdelmar           #+#    #+#              #
#    Updated: 2015/04/20 14:43:09 by jdelmar          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global					_ft_memcpy

section					.text

_ft_memcpy:
			cmp	rdx, 0
			je	end
			mov	rcx, rdx
			rep	movsb
			ret
	end:
		mov	rax, rdi
		ret
