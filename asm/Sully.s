section .data
  formatFilename db "Sully_%d.s", 0
  filename times 100 db 0
  testFilename db "Sully_5.s", 0
  format db "section .data%1$c  formatFilename db %2$cSully_%%d.s%2$c, 0%1$c  filename times 100 db 0%1$c  testFilename db %2$cSully_5.s%2$c, 0%1$c  format db %2$c%3$s%2$c, 0%1$c  formatExecute db %2$cnasm -f elf64 -F dwarf Sully_%%1$d.s && gcc -no-pie -z noexecstack -e main -o Sully_%%1$d Sully_%%1$d.o && ./Sully_%%1$d%2$c, 0%1$c  execute times 100 db 0%1$csection .text%1$c  extern dprintf, sprintf, system%1$c  global main%1$c%1$cmain:%1$c  mov r12, %4$d%1$c  mov rax, 2%1$c  lea rdi, [testFilename]%1$c  mov rsi, 0%1$c  syscall%1$c%1$c  cmp rax, 0%1$c  js  create_file%1$c  dec r12%1$c%1$c  mov rax, 3%1$c  syscall%1$c%1$ccreate_file:%1$c  lea rdi, [filename]%1$c  lea rsi, [formatFilename]%1$c  mov rdx, r12%1$c  call sprintf%1$c%1$c  mov rax, 2%1$c  lea rdi, [filename]%1$c  mov rsi, 0x241%1$c  mov rdx, 0x1b6%1$c  syscall%1$c  test rax, rax%1$c  jz exit%1$c  mov rdi, rax%1$c%1$c  lea rsi, [format]%1$c  mov rdx, 0xa%1$c  mov rcx, 0x22%1$c  lea r8, [format]%1$c  mov r9, r12%1$c  call dprintf%1$c%1$c  mov rax, 3%1$c  syscall%1$c%1$c  test r12, r12%1$c  je exit%1$c%1$c  lea rdi, [execute]%1$c  lea rsi, [formatExecute]%1$c  mov rdx, r12%1$c  call sprintf%1$c  lea rdi, [execute]%1$c  call system%1$c%1$cexit:%1$c  mov rax, 60%1$c  xor rdi, rdi%1$c  syscall", 0
  formatExecute db "nasm -f elf64 -F dwarf Sully_%1$d.s && gcc -no-pie -z noexecstack -e main -o Sully_%1$d Sully_%1$d.o && ./Sully_%1$d", 0
  execute times 100 db 0

section .text
  extern dprintf, sprintf, system
  global main

main:
  mov r12, 5
  mov rax, 2
  lea rdi, [testFilename]
  mov rsi, 0
  syscall

  cmp rax, 0
  js  create_file
  dec r12

  mov rax, 3
  syscall

create_file:
  lea rdi, [filename]
  lea rsi, [formatFilename]
  mov rdx, r12
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
  lea r8, [format]
  mov r9, r12
  call dprintf

  mov rax, 3
  syscall

  test r12, r12
  je exit

  lea rdi, [execute]
  lea rsi, [formatExecute]
  mov rdx, r12
  call sprintf
  lea rdi, [execute]
  call system

exit:
  mov rax, 60
  xor rdi, rdi
  syscall