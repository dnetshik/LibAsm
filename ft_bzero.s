section .text
	global _ft_bzero
_ft_bzero:
	push rdi
	mov rcx, 0
loop:
	cmp rcx, rsi
	je exit
	mov [rdi + rcx], byte 0
	inc rcx
	jmp loop
exit:
	pop rdi
	ret
