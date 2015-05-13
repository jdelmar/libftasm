# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdelmar <jdelmar@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/20 14:42:50 by jdelmar           #+#    #+#              #
#    Updated: 2015/04/20 14:43:09 by jdelmar          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global				_ft_puts
extern				_ft_strlen

section				.text

_ft_puts:
			cmp		rdi, 0
			je		nullptr

			lea		rsi, [rdi]
			call	_ft_strlen
			mov		rdx, rax
			mov		rdi, 1
			mov		rax, 0x2000004
			syscall

			mov		rdi, 1
			lea		rsi, [rel nl]
			mov		rdx, 1
			mov		rax, 0x2000004
			syscall
			ret

	nullptr:
			mov		rdi, 1
			lea		rsi, [rel null]
			mov		rdx, 7
			mov		rax, 0x2000004
			syscall
			ret

section				.data

null:				db "(null)", 0xA
nl:					db 0xA
