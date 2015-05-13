# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcat.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdelmar <jdelmar@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/20 14:42:53 by jdelmar           #+#    #+#              #
#    Updated: 2015/05/13 20:54:24 by jdelmar          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global				_ft_strcat

section				.text

_ft_strcat:

while:
			mov		rax, rdi
			cmp		[rdi], byte 0
			je		copy
			inc		rdi
			jmp		while
copy:
			cmp		[rsi], byte 0
			je		end
			movsb
			jmp		copy
end:
			ret
