section .data
    msg db "Testing euy di 64 bit", 0xa, 0
    msg_length equ $ - msg

section .text
    global _start

_start:
    mov rax, 0x1    ; syscall write
    mov rdi, 0x1    ; stdout
    mov rsi, msg
    mov rdx, msg_length
    syscall

    ; exit program
    xor rdi, rdi    
    mov rax, 0x3c
    syscall
