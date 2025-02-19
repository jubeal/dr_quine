;colleen exercise
section .data
code db ";colleen exercise%1$csection .data%1$ccode db %2$c%3$s%2$c, 0%1$c%1$csection .text%1$cglobal main%1$cextern dprintf%1$c%1$cmain:%1$c  mov rdi, 1%1$c  lea rsi, [code]%1$c  mov rdx, 0xa%1$c  mov rcx, 0x22%1$c  lea r8, [code]%1$c  call dprintf%1$c  mov rax, 60%1$c  xor rdi, rdi%1$c  syscall ;inside main com", 0

section .text
global main
extern dprintf

main:
  mov rdi, 1
  lea rsi, [code]
  mov rdx, 0xa
  mov rcx, 0x22
  lea r8, [code]
  call dprintf
  mov rax, 60
  xor rdi, rdi
  syscall ;inside main com