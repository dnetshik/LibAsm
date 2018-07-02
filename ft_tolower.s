section .text
	global _ft_tolower

_ft_tolower:
	mov rax, rdi
	cmp rax, 65
	jl lwr
	cmp rax, 90
	jg lwr
	add rax, 32
	ret

lwr:
	ret

