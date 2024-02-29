extern printf

section .data
    char            db      "ABCDE", 0
    char_length     equ     $ - char - 1
    fmt2            db      "Original: %s", 10, 0
    fmt3            db      "Reverse: %s", 10, 0

section .text
    global _start

_start:
    ; cetak original
    mov     rdi, fmt2
    mov     rsi, char
    mov     rax, 0
    call    printf

    ; cetak yang telah di reverse
    xor     rax, rax
    mov     rbx, char
    mov     rcx, char_length
    mov     r12, 0

pushLoop:
    mov     al, byte [rbx + r12]
    push    rax
    inc     r12
    loop    pushLoop

    mov     rbx, char
    mov     rcx, char_length
    mov     r12, 0

popLoop:
    pop     rax
    mov     byte [rbx + r12], al
    inc     r12
    loop    popLoop
    mov     byte [rbx + r12], 0

    mov     rdi, fmt3
    mov     rsi, char
    mov     rax, 0
    call    printf

    ; exit program
    xor rdi, rdi    
    mov rax, 0x3c
    syscall
