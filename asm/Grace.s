; I must clone myself, spawning my kid
%define SELF "; I must clone myself, spawning my kid%1$c%3$cdefine SELF %2$c%4$s%2$c%1$c%3$cdefine GLOBAL_MAIN global _main%1$c%3$cdefine MAIN _main:%1$c%1$csection .data%1$cself db SELF, 0%1$ckidsname db %2$cGrace_kid.s%2$c, 0%1$c%1$csection .text%1$cextern _dprintf%1$cGLOBAL_MAIN%1$c%1$c%%macro GRACE 0%1$cMAIN%1$cpush rbp%1$cmov rbp, rsp%1$clea rdi, [rel kidsname]%1$cmov rsi, 03001o%1$cmov rdx, 0644o%1$cmov rax, 0x2000005%1$csyscall%1$ccmp rax, 0%1$cjb .ret%1$c%1$cmov rdi, rax%1$clea rsi, [rel self]%1$cmov rdx, 10%1$cmov rcx, 34%1$cmov r8, 37%1$clea r9, [rel self]%1$ccall _dprintf%1$c.ret:%1$cleave%1$cret%1$c%%endmacro%1$cGRACE"
%define GLOBAL global main
%define MAIN main:

section .data
self db SELF, 0
kidsname db "Grace_kid.s", 0
openType db "w", 0

section .bss
fileptr resq 1

section .text
extern  dprintf, fopen, fileno, fclose
GLOBAL

%macro GRACE 0
MAIN
push    rbx
mov     rdi, [kidsname]
mov     rsi, [openType]
call    fopen
mov     [fileptr], rax
mov     rdi, [fileptr]
call    fileno
mov     rdi, rax
mov     rsi, self
mov     rdx, 10
mov     rcx, 34
mov     r8, self
call    dprintf
mov     rdi, [fileptr]
call    fclose
pop     rbx
ret
%endmacro
GRACE