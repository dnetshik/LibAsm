section .text
	global _ft_strcat
_ft_strcat:
	mov r10, 0
	mov r9, 0
len:
	cmp [rdi + r10], byte 0
	je cat
	inc r10
	jmp len


cat:
	cmp [rsi + r9], byte 0
	je exit
	mov r8, [rsi + r9]
	mov [rdi + r10], r8
	inc r9
	inc r10
	jmp cat

exit:
	mov [rdi + r10], byte 0
	mov rax, rdi
	ret

