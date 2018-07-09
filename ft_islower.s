section .text
	global _ft_islower

_ft_islower:
	mov rax, rdi
	cmp rax, 97
	jl exit
	cmp rax, 122
	jg exit
	mov rax, 1
	ret
exit:
	mov rax, 0
