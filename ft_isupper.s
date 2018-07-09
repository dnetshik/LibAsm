section .text
	global _ft_isupper

_ft_isupper:
	mov rax, rdi
	cmp rdi, 65
	jl exit
	cmp rdi, 90
	jg exit
	mov rax, 1
	ret
exit:
	mov rax, 0
