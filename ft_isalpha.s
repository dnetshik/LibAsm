section .text
	global _ft_isalpha
_ft_isalpha:
	mov rax, rdi
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


