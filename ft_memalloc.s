# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memalloc.s                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdelmar <jdelmar@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/28 16:29:36 by jdelmar           #+#    #+#              #
#    Updated: 2015/04/28 16:29:37 by jdelmar          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global				_ft_memalloc
extern				_ft_bzero
extern				_malloc

section				.text

_ft_memalloc:
					push	rbp
					lea		rbp, [rsp]

					cmp		rdi, 0
					je		null
					lea		r15, [rdi]
					call	_malloc
					cmp		rax, 0
					je		null
					lea		rdi, [rax]
					lea		rsi, [r15]
					call	_ft_bzero
					lea		rax, [rdi]
					leave
					ret
null:
					mov	rax, 0
					leave
					ret
