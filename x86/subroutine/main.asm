global _start

_start:
    call subroutine ; invoke a function/subroutine
    mov eax, 0x1
    int 0x80

subroutine:
    ; prologue subroutine
    push ebp        ; save previous base pointer value to stack
    mov ebp, esp    ; setup frame pointer
    sub esp, 0x4

    mov [esp], byte 0x4
    mov word [esp], "eu"
    mov byte [esp + 0x2], 'y'
    mov byte [esp + 0x3], 0xA

    mov eax, 0x4  ; syscall write
    mov ebx, 0x1  ; stdout
    mov ecx, esp
    mov edx, 0x4
    int 0x80

    ; epilogue subroutine
    mov esp, ebp
    pop ebp         ; restore previous base pointer value from stack
    ret
