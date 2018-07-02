section .text
	global _ft_isdigit

_ft_isdigit:
	mov rax, rdi
	cmp rax, 48
	jl test
	cmp rax, 57
	jg test
	mov rax, 1
	ret

test:
	mov rax, 0
	ret
