section .data
    fmt_plus            db  "Angka yang dimasukan positif", 0xa, 0x0
    plus_length         equ  $ - fmt_plus

    fmt_minus           db  "Angka yang dimasukan negatif", 0xa, 0x0
    minus_length        equ  $ - fmt_minus

    fmt_netral          db  "Angka yang dimasukan netral / 0", 0xa, 0x0
    netral_length       equ  $ - fmt_netral

    fmt_user_input      db  "Masukan angka: ", 0x0
    user_input_length   equ $ - fmt_user_input

section .bss
    nums    resb    0x0

section .text
    global _start

_start:
    mov     eax, 0x4
    mov     ebx, 0x1
    mov     ecx, fmt_user_input
    mov     edx, user_input_length
    int     0x80

    ; read input
    mov     eax, 0x3    ; syscall read
    mov     ebx, 0x2
    mov     ecx, nums
    mov     edx, 0x5
    int     0x80

    ; convert ASCII into integer value
    mov     al, [nums]
    sub     al, '0'

    cmp     al, 0x0
    jg      positif

    cmp     al, 0x0
    jl      negatif

    mov     eax, 0x4
    mov     ebx, 0x1
    mov     ecx, fmt_netral
    mov     edx, netral_length
    int     0x80

   ; Exit code
   mov eax, 0x1
   mov ebx, 0x0
   int 0x80

positif:
    mov     eax, 0x4
    mov     ebx, 0x1
    mov     ecx, fmt_plus
    mov     edx, plus_length
    int     0x80

    mov eax, 0x1
    mov ebx, 0x0
    int 0x80

negatif:
    mov     eax, 0x4
    mov     ebx, 0x1
    mov     ecx, fmt_minus
    mov     edx, minus_length
    int     0x80

    mov eax, 0x1
    mov ebx, 0x0
    int 0x80
