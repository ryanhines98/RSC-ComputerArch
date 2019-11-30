/*
Ola1
Assembly Program to C Function
*/

.text
.global main
main:
    mov     $message, %rdi
    call    haiku_func
    ret

.data
message:    .ascii  "Over the wintry\nForest, winds howl in rage\nWith no leaves to blow\n-Natsume Soseki\n"
