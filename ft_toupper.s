section .text
	global _ft_toupper
_ft_toupper:
	mov rax, rdi
	cmp rax, 97
	jl upr
	cmp rax, 122
	jg upr
	add rax, -32
	ret
upr:
	ret
