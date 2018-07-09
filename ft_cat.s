section .data
	buf times 1024 db 0
section .text
	global _ft_cat

_ft_cat:
	mov r9, rdi
read:
	mov rax, 0X2000003
	mov rdi, r9
	lea rsi, [rel buf]
	mov rdx, 1024
	syscall
	jc out
	mov r8, rax
	cmp r8, 0
	je out
write:
	mov rax, 0X2000004
	mov rdi, 1
	lea rsi, [rel buf]
	mov rdx, 1024
	syscall
	jmp read
out:
	ret

