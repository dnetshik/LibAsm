section .text
	global _ft_isprint

_ft_isprint:
	mov rax, rdi
	cmp rax, 32
	jl test
	cmp rax, 126
	jg test
	mov rax, 1
	ret

test:
	mov rax, 0
	ret
