extern printf

section .data
    nums    dq  3.14159265358979
    fmt     db  "Angka: %.14f", 0xa, 0

section .text
    global _start

_start:
    call subroutine1

    ; Exit the program
    xor rdi, rdi
    mov rax, 0x3c
    syscall

subroutine3:
    push    rbp
    mov     rbp, rsp

    mov     rax, qword [nums]
    movq    xmm0, rax

    mov     rdi, fmt
    call    printf

    mov rsp, rbp
    pop rbp
    ret

subroutine2:
    push rbp
    mov rbp, rsp

    call subroutine3

    mov rsp, rbp
    pop rbp
    ret

subroutine1:
    push rbp
    mov rbp, rsp

    call subroutine2

    mov rsp, rbp
    pop rbp
    ret
