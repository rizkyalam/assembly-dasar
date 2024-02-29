global _start

_start:
    sub esp, 0x5  ; initiate register stack pointer
    mov dword [esp], 'euy!'
    mov byte [esp + 0x4], 0xa

    mov eax, 0x4
    mov ebx, 0x1
    mov ecx, esp
    mov edx, 0x5
    int 0x80

    mov eax, 0x1
    mov ebx, 0x0
    int 0x80
