;colleen exercise
section .data
code db ";colleen exercise%1$csection .data%1$c   code db %2$c%3$s%2$c, 0%1$c%1$csection .text%1$cglobal main%1$cextern printf%1$c%1$cmain:%1$c  lea rdi, [code]%1$c  mov rsi, 0xa%1$c  mov rdx, 0x22%1$c  lea rcx, [code]%1$c  call printf%1$c  mov rax, 60%1$c  xor rdi, rdi%1$c  syscall ;inside main com", 0

section .text
global main
extern printf

main:
  lea rdi, [code]
  mov rsi, 0xa
  mov rdx, 0x22
  lea rcx, [code]
  call printf
  mov rax, 60
  xor rdi, rdi
  syscall ;inside main com