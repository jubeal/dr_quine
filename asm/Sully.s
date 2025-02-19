section .data
  formatFilename db "Sully_%d.s", 0
  filename times 100 db 0
  testFilename db "Sully_5.s", 0
  format db "section .data%1$c  filename db %2$cSully_5.s%2$c, 0%1$c  testFilename db %2$cSully_5.s%2$c, 0%1$c  format db %2$c%3$s%2$c, 0%1$c  i dq %4$d%1$c%1$csection .text%1$c  extern dprintf%1$c  global main%1$c%1$cmain:%1$c  mov rax, 2%1$c  lea rdi, [testFilename]%1$c  mov rsi, 0%1$c  syscall%1$c%1$c  cmp rax, 0%1$c  js  create_file%1$c  dec qword [i]%1$c%1$c  mov rax, 3%1$c  syscall%1$c%1$ccreate_file:%1$c  lea rdi, [filename]%1$c  mov rsi, i%1$c  call dprintf%1$c  mov [filename], rax%1$c%1$c  mov rax, 2%1$c  lea rdi, [filename]%1$c  mov rsi, 0x241%1$c  mov rdx, 0x1b6%1$c  syscall%1$c  test rax, rax%1$c  jz exit%1$c  mov rdi, rax%1$c%1$c  lea rsi, [format]%1$c  mov rdx, 0xa%1$c  mov rcx, 0x22%1$c  mov r8, [format]%1$c  mov r9, [i]%1$c  mov rax, 0x25%1$c  push rax%1$c  call dprintf%1$c%1$c  mov rax, 3%1$c  syscall%1$c%1$cexit:%1$c  mov rax, 60%1$c  xor rdi, rdi%1$c  syscall", 0
  i dq 5
  debug db "debug", 0
  debug_len equ $ - debug  ; Calculate message length

section .text
  extern dprintf, sprintf, printf
  global main

main:
  mov rax, 2
  lea rdi, [testFilename]
  mov rsi, 0
  syscall

  cmp rax, 0
  js  create_file
  dec qword [i]

  mov rax, 3
  syscall

create_file:
  mov rdi, filename
  lea rsi, [formatFilename]
  mov rdx, qword [i]
  call sprintf

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
  mov r8, [format]
  mov r9, qword [i]
  call dprintf

  mov rax, 3
  syscall

exit:
  mov rax, 60
  xor rdi, rdi
  syscall