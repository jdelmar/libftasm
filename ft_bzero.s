# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdelmar <jdelmar@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/09 15:11:44 by jdelmar           #+#    #+#              #
#    Updated: 2015/04/17 16:41:58 by jdelmar          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global					_ft_bzero

section					.text

_ft_bzero:
		cmp	rsi, 0
		jz	end

while:
		dec rsi
		mov [rdi], byte 0
		inc rdi
		cmp rsi, 0
		jne while
end:
		ret
