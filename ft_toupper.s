# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdelmar <jdelmar@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/09 15:12:13 by jdelmar           #+#    #+#              #
#    Updated: 2015/04/09 15:12:19 by jdelmar          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global				_ft_toupper

section				.text

_ft_toupper:
			cmp		rdi, 'a'
			jl		end
			cmp		rdi, 'z'
			jg		end
			sub		rdi, 32
end:
			mov		rax, rdi
			ret
