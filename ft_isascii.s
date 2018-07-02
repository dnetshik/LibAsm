section .text
	global _ft_isascii

_ft_isascii:
	mov rax, rdi
	cmp rax, 0
	jl test
	cmp rax, 127
	jg test
	mov rax, 1
	ret

test:
	mov rax, 0
	ret
