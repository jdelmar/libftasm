global				_ft_strchr
extern				_ft_strlen

section				.text

_ft_strchr:
			call	_ft_strlen
			
			mov		rcx, rax
			mov		rax, rsi
			cld
			repne	scasb
			test	rcx, rcx
			jz		not_found
			mov		rax, rdi
			dec		rax
			ret
not_found:
			mov		rax, 0
			ret
