;colleen exercise
global main
extern printf

section .data
code db ";colleen exercise%1$cglobal main%1$cextern printf%1$c%1$csection .data%1$ccode db %3$c%2$s%3$c, 0x0%1$c%1$csection .text%1$c%1$cmain:%1$c  push rbx%1$c  mov rdi, code%1$c  mov rsi, 0xa%1$c  mov rcx, 0x22%1$c  mov rdx, code%1$c  call printf%1$c  pop rsi%1$c  ret ;inside main com", 0x0

section .text

main:
  push rbx
  mov rdi, code
  mov rsi, 0xa
  mov rcx, 0x22
  mov rdx, code
  call printf
  pop rsi
  ret ;inside main com