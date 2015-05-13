# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalnum.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdelmar <jdelmar@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/09 15:11:48 by jdelmar           #+#    #+#              #
#    Updated: 2015/04/09 15:12:18 by jdelmar          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global			_ft_isalnum
extern			_ft_isalpha
extern			_ft_isdigit

section			.text

_ft_isalnum:
			call	_ft_isdigit
			cmp		rax, 1
			je		true
			call	_ft_isalpha
			cmp		rax, 1
			je		true
false:
			mov		rax, 0
			ret
true:
			ret
