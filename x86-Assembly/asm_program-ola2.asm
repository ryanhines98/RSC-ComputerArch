/*
Ryan Hines
CSCI 3130
Ola 2
2/5/19
*/
.global main
.text
main:

    mov $0, %r10 /* %r10 will act as an iterator until it reaches four, for each time */
                 /* it loops through a shift of elements */
    mov $0, %r11 /* %r11 acts as an iterator until it reaches 12 for the amount of shifts */
                 /* needed before it passes the array

/* Loops through Array four elements at a time shifing the elements over one every time it loops. */
/* Every loop also sends the four elements to 'calc_function', where it executes the function */
/* '(W - X) * (Y + Z)' and then returns it back to %rax. The equation and result is displayed */
/* everytime it loops. */
loop:

    /* First Entry */
    mov arr(,%r10,8), %rdi

    inc %r10

    /* Second Entry */
    mov arr(,%r10,8), %rsi

    inc %r10

    /* Third Entry */
    mov arr(,%r10,8), %rdx

    inc %r10

    /* Fourth Entry */
    mov arr(,%r10,8), %rcx

    push %r11 /* Needs to push these registers to stack so they */
    push %rdi /* are preserved over the function call */
    push %rsi
    push %rdx
    push %rcx

    call calc_function

    pop %rcx
    pop %rdx
    pop %rsi
    pop %rdi
    pop %r11

    mov %rdi, %r8
    mov %rsi, %r9

    push %r11 /* Pushes to stack in order to preserve */

    mov $calc, %rdi 
    mov %r8, %rsi   /* Registers are shifted over to the next */
    mov %rdx, %r8   /* register in the convention order for paramater */
    mov %r9, %rdx   /* functionc calls */
    mov %rcx, %r9
    mov %r8, %rcx
    mov %r9, %r8
    mov %rax, %r9   /* result from 'calc_function' */
    mov $0, %rax    
    call printf     /* prints the equation with used numbers from array elements and result */

    pop %r11

    cmp $12, %r11   /* compares %r11 with '12' to make sure the array doesn go beyond element 16 */
    je  done        /* jumps to done if true */

    inc %r11        /* increments %r11 if it is taking another loop, and then adds to %r10 */
    mov $0, %r10    /* to give a base of where to start in the next shift of 4 elements */
    add %r11, %r10

    jmp loop

/* performs the equation (w - x) * (y + z) */
calc_function:

    sub %rsi, %rdi
    add %rcx, %rdx
    mov %rdi, %rax
    mul %rdx
    ret

done:


.data
arr:    .quad   1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16
calc:           .ascii  "(%ld - %ld) * (%ld + %ld) = %ld\n\0"
