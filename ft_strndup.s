# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strndup.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdelmar <jdelmar@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/11 15:26:27 by jdelmar           #+#    #+#              #
#    Updated: 2015/05/11 15:26:29 by jdelmar          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global				_ft_strndup
extern				_ft_strlen
extern				_ft_memcpy
extern				_ft_strdup
extern				_malloc

section				.text

_ft_strndup:
			push	rbp
			lea		rbp, [rsp]

			lea		r14, [rdi]
			lea		r13, [rsi]
			call	_ft_strlen
			cmp		rsi, rax
			jge		strdup
			lea		rdi, [rsi]
			inc		rdi

			call	_malloc
			cmp		rax, 0
			je		end
			lea		rdi, [rax]
			lea		rsi, [r14]
			lea		rdx, [r13]

			call	_ft_memcpy
			mov		[rax + r13], byte 0
			jmp		end
strdup:
			lea     r15, [rax]
			lea		rdi, [rax]
			inc     rdi

			call    _malloc
			cmp     rax, 0
			je      end
			lea     rdi, [rax]
			lea     rsi, [r14]
			lea     rdx, [r15]

			call    _ft_memcpy
			mov     [rax + r15], byte 0
end:
			leave
			ret
