# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdelmar <jdelmar@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/20 14:42:56 by jdelmar           #+#    #+#              #
#    Updated: 2015/04/21 21:16:36 by jdelmar          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global				_ft_strdup
extern				_ft_strlen
extern				_ft_memcpy
extern				_malloc

section				.text

_ft_strdup:
			push	rbp
			lea		rbp, [rsp]

			lea		r14, [rdi]
			call	_ft_strlen
			lea		r15, [rax]
			lea		rdi, [rax]
			inc		rdi

			call	_malloc
			cmp		rax, 0
			je		end
			lea		rdi, [rax]
			lea		rsi, [r14]
			lea		rdx, [r15]

			call	_ft_memcpy
			mov		[rax + r15], byte 0
end:
			leave
			ret
