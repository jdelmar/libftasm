# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_tolower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jdelmar <jdelmar@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/09 15:12:10 by jdelmar           #+#    #+#              #
#    Updated: 2015/04/09 15:12:19 by jdelmar          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global				_ft_tolower

section				.text

_ft_tolower:
			cmp		rdi, 'A'
			jl		end
			cmp		rdi, 'Z'
			jg		end
			add		rdi, 32
end:
			mov		rax, rdi
			ret
