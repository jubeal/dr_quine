%define GLOBAL global main
%define CODE "%3$cdefine GLOBAL global main%1$c%3$cdefine CODE %2$c%4$s%2$c, 0%1$c%3$cdefine MAIN main%1$c%1$csection .data%1$c  filename db %2$cGrace_kid.s%2$c, 0%1$c  format db CODE%1$c%1$csection .text%1$c  extern dprintf%1$c  GLOBAL%1$c%1$c%3$cmacro GRACE 0%1$cMAIN%1$c  mov rax, 2%1$c  lea rdi, [filename]%1$c  mov rsi, 0x241%1$c  mov rdx, 0x1b6%1$c  syscall%1$c  test rax, rax%1$c  jz exit%1$c  mov rdi, rax%1$c%1$c  lea rsi, [format]%1$c  mov rdx, 0xa%1$c  mov rcx, 0x22%1$c  mov r8, 0x25%1$c  lea r9, [format]%1$c  call dprintf%1$c%1$c  mov rax, 3%1$c  syscall%1$c%1$cexit:%1$c  mov rax, 60%1$c  xor rdi, rdi%1$c  syscall%1$c%3$cendmacro%1$cGRACE ;using the Grace macro", 0
%define MAIN main

section .data
  filename db "Grace_kid.s", 0
  format db CODE

section .text
  extern dprintf
  GLOBAL

%macro GRACE 0
MAIN
  mov rax, 2
  lea rdi, [filename]
  mov rsi, 0x241
  mov rdx, 0x1b6
  syscall
  test rax, rax
  jz exit
  mov rdi, rax

  lea rsi, [format]
  mov rdx, 0xa
  mov rcx, 0x22
  mov r8, 0x25
  lea r9, [format]
  call dprintf

  mov rax, 3
  syscall

exit:
  mov rax, 60
  xor rdi, rdi
  syscall
%endmacro
GRACE ;using the Grace macro