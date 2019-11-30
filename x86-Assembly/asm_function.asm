/*
Ola1
C Program to Assembly Function
*/

.text
.global asm_function
asm_function:
    mov     %rsi, %rdx
    mov     %rdi, %rsi
    mov     $1, %rax
    mov     $1, %rdi
    syscall
    ret

