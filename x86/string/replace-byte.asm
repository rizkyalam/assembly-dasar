global _start

section .data
    color db "Yellow", 0xa ; 0xa or new line

section .text
_start:
    mov [color], byte 'H'   ; replace first byte with 'H'
    mov [color + 0x5], byte '!' ; replace last byte with '!'

    mov eax, 0x4
    mov ebx, 0x1
    mov ecx, color      ; bytes to write
    mov edx, 0x7        ; number of bytes to write
    int 0x80

    mov eax, 0x1
    mov ebx, 0x0
    int 0x80
