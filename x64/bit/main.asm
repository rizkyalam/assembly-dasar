extern print_bit
extern printf

section .data
    fmtn1   db  "Num 1", 0xa, 0
    fmtn2   db  "Num 2", 0xa, 0
    fmt1    db  "XOR", 0xa, 0
    fmt2    db  "OR", 0xa, 0
    fmt3    db  "AND", 0xa, 0
    fmt4    db  "NOT Num 1", 0xa, 0
    fmt5    db  "Shift Left 2 byte Num 1", 0xa, 0
    fmt6    db  "Shift Right 2 byte Num 1", 0xa, 0
    fmt7    db  "Shift Arithmetic Left 2 byte Num 1", 0xa, 0
    fmt8    db  "Shift Arithmetic Right 2 byte Num 1", 0xa, 0
    fmt9    db  "Rotate Left 2 byte Num 1", 0xa, 0
    fmt10   db  "Rotate Left 2 byte Num 2", 0xa, 0
    fmt11   db  "Rotate Right 2 byte Num 1", 0xa, 0
    fmt12   db  "Rotate Right 2 byte Num 2", 0xa, 0
    num1    dq  -72
    num2    dq  1064

section .bss
section .text
    global _start

_start:
    ; cetak angka pertama
    mov     rsi, fmtn1
    call    printmsg
    mov     rdi, [num1]
    call    print_bit

    ; cetak angka kedua
    mov     rsi, fmtn2
    call    printmsg
    mov     rdi, [num2]
    call    print_bit

    ; xor
    mov     rsi, fmt1
    call    printmsg
    mov     rax, [num1]
    xor     rax, [num2]
    mov     rdi, rax
    call    print_bit

    ; or
    mov     rsi, fmt2
    call    printmsg
    mov     rax, [num1]
    or      rax, [num2]
    mov     rdi, rax
    call    print_bit

    ; and
    mov     rsi, fmt3
    call    printmsg
    mov     rax, [num1]
    and     rax, [num2]
    mov     rdi, rax
    call    print_bit

    ; not
    mov     rsi, fmt4
    call    printmsg
    mov     rax, [num1]
    not     rax
    mov     rdi, rax
    call    print_bit

    ; shift left
    mov     rsi, fmt5
    call    printmsg
    mov     rax, [num1]
    shl     al, 2
    mov     rdi, rax
    call    print_bit

    ; shift right
    mov     rsi, fmt6
    call    printmsg
    mov     rax, [num1]
    shr     al, 2
    mov     rdi, rax
    call    print_bit

    ; shift arithmetic left
    mov     rsi, fmt7
    call    printmsg
    mov     rax, [num1]
    sal     al, 2
    mov     rdi, rax
    call    print_bit

    ; shift arithmetic right
    mov     rsi, fmt8
    call    printmsg
    mov     rax, [num1]
    sar     al, 2
    mov     rdi, rax
    call    print_bit

    ; rotate left num 1
    mov     rsi, fmt9
    call    printmsg
    mov     rax, [num1]
    rol     al, 2
    mov     rdi, rax
    call    print_bit

    ; rotate left num 2
    mov     rsi, fmt10
    call    printmsg
    mov     rax, [num2]
    rol     al, 2
    mov     rdi, rax
    call    print_bit

    ; rotate right num 1
    mov     rsi, fmt11
    call    printmsg
    mov     rax, [num1]
    ror     al, 2
    mov     rdi, rax
    call    print_bit

    ; rotate right num 2
    mov     rsi, fmt12
    call    printmsg
    mov     rax, [num2]
    ror     al, 2
    mov     rdi, rax
    call    print_bit

    ; system exit
    xor rdi, rdi
    mov rax, 0x3c
    syscall
    
printmsg:
    section .data
        .fmtstr db "%s", 0

    section .text
        push    rbp
        mov     rbp, rsp

        mov     rdi, .fmtstr
        mov     rax, 0
        call    printf

        mov rsp, rbp
        pop rbp
        ret
