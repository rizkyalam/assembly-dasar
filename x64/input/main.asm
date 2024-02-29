section .data
    fmt2            db  "Input (only a-z): ", 0
    fmt3            db  "Your input: ", 0
    input_length    equ 0xa
    new_line        db  0xa

section .bss
    input   resb input_length + 1

section .text
    global _start

_start:
    mov     rdi, fmt2
    call    prints

    ; input dari user
    mov     rdi, input
    mov     rsi, input_length
    call    reads

    mov     rdi, fmt3
    call    prints
    mov     rdi, input
    call    prints
    mov     rdi, new_line
    call    prints

    ; exit program
    xor rdi, rdi    
    mov rax, 0x3c
    syscall

prints:
    push    rbp
    mov     rbp, rsp
    push    r12,

    xor     rdx, rdx
    mov     r12, rdi

    .lengthloop:
        cmp byte [r12], 0
        je  .lengthfound
        inc rdx
        inc r12
        jmp .lengthloop
    
    .lengthfound:
        cmp rdx, 0
        je  .done
        mov rsi, rdi
        mov rax, 1
        mov rdi, 1
        syscall

    .done:
        pop r12
        leave
        ret
    
    mov rsp, rbp
    pop rbp
    leave
    ret

reads:
    section .bss
        .inputchar resb 1
   
    section .text
        push    rbp
        mov     rbp, rsp

        push    r12
        push    r13
        push    r14

        mov     r12, rdi
        mov     r13, rsi
        xor     r14, r14

    .readc:
        mov rax, 0
        mov rdi, 0
        lea rsi, [.inputchar]
        mov rdx, 1
        syscall

        ; jika menekan enter program terhenti
        mov al, [.inputchar]
        cmp al, byte [new_line]
        je  .done

        ; 0x61 untuk karakter ASCII 'a'
        cmp al, 0x61
        jl  .readc

        ; 0x7a untuk karakter ASCII 'z'
        cmp al, 0x7a
        jg  .readc

        inc r14
        cmp r14, r13
        ja  .readc

        mov byte[r12], al
        inc r12
        jmp .readc

    .done:
        inc r12
        mov byte[r12], 0
        pop r14
        pop r13
        pop r12
        leave
        ret
