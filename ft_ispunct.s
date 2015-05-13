# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_ispunct.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdelmar <jdelmar@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/05 14:22:28 by jdelmar           #+#    #+#              #
#    Updated: 2015/05/05 14:22:30 by jdelmar          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global			_ft_ispunct
extern			_ft_isalnum

section			.text

_ft_ispunct:
				cmp		rdi, '!'
				jl		false
				call	_ft_isalnum
				cmp		rax, 1
				je		false
				cmp		rdi, '/'
				jle		true
				cmp		rdi, '@'
				jle		true
				cmp		rdi, '`'
				jle		true
				cmp		rdi, '~'
				jle		true
false:
				mov	rax, 0
				ret
true:
				mov	rax, 1
				ret
