section .text
	global _ft_strlen
_ft_strlen:
  push  rbx
  push  rcx
  mov   rbx, rdi
  xor   al, al
  mov   rcx, 0xffffffff
  repne scasb 
  sub   rdi, rbx
  mov   rax, rdi
  pop   rcx
  pop   rbx
  ret

