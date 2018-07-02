section .text
	global _ft_isalnum

_ft_isalnum:
	mov rax, rdi
	cmp rax, 48
	jl exit
	cmp rax, 57
	jg upper
	mov rax, 1
	ret
upper:
	cmp rax, 65
	jl exit
	cmp rax, 90
	jg lower
	mov rax, 1
	ret
lower:
	cmp rax, 97
	jl exit
	cmp rax, 122
	jg exit
	mov rax, 1
	ret
exit:
	mov rax, 0
	ret


