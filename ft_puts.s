section .data
	str_nul: db "(null)", 10
	new_line db 10
section    .text
global _ft_puts
_ft_puts:
    cmp rdi, 0
    je null
    mov rdx, 0
length:
    cmp [rdi + rdx], byte 0
    je put
    inc rdx
    jmp length
put:
    mov r9, rdi
    mov rdi, 1
    mov rsi, r9
    mov rax, 0x2000004
    syscall
    mov rax, 0x2000004
    lea rsi, [rel new_line]
    mov rdx, 1
    syscall
    ret
null:
    mov rax, 0x2000004
    mov rdi, 1
    lea rsi, [rel str_nul]
    mov rdx, 7
    syscall
    ret
