section .data
    limit   db  5

section .bss
    number resb    1

section .text
    global _start

_start: 
    mov     ecx, [limit]
    mov     eax, '1'

print_number:
    mov     [number], eax
    mov     eax, 4          ; syscall write
    mov     ebx, 1          ; stdout
    push    ecx             ; push loop counter into stack

    ; print the number
    mov     ecx, number
    mov     edx, 1
    int     0x80

    mov     eax, [number]
    sub     eax, '0'        ; convert ASCII to integer value
    inc     eax
    add     eax, '0'        ; convert back integer value to ASCII
    
    pop     ecx
    loop    print_number

    mov     eax, 1          ; syscall exit
    int     0x80
