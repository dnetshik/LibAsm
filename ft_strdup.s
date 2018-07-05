extern _malloc
extern _ft_strlen
extern _ft_memcpy
section .text
	global _ft_strdup

_ft_strdup:
	push rbp
	mov rbp, rsp
	mov r14, rdi
	call _ft_strlen 
	mov r13, rax
	mov rdi, rax
	inc rdi
	call _malloc
	cmp rax, 0
	je exit
	mov rsi, r14
	mov rdi, rax
	mov rdx, r13
	call _ft_memcpy
	
exit:
	leave
	ret
	

