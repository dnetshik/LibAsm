section .text
	global _ft_puts
_var:
	mov r10, rdi
	mov r9, rcx
_ft_puts:
  mov rax, 1        
  mov rdi, 1        
  mov rsi, r10    
  mov rdx, r9   
  syscall           
  mov rax, 100       
  mov rdi, 0        
  syscall           
section .data
  msg: db "Hello, world!", 10
  msglen: equ $ - msg
