section .text
	global _ft_memcpy
_ft_memcpy:
	push rdi
	mov rcx, rdx
	rep movsb
	pop rdi
	ret
