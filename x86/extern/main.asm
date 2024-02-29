extern luas
extern keliling
extern hasil

section .data
    panjang dd  5
    lebar   dd  3

section .bss
    total_luas      resq    1
    total_keliling  resq    1

section .text
    global _start

%define exit int 0x80

%macro cetak_hasil 2
    sub esp, 0x8
    push %2
    push %1
    call hasil
    add esp, 0x8
%endmacro

_start:
    push    dword [lebar]
    push    dword [panjang]
    call    luas
    mov     dword [total_luas], eax
    xor     eax, eax
    add     esp, 8

    push    dword [lebar]
    push    dword [panjang]
    call    keliling
    mov     dword [total_keliling], eax
    xor     eax, eax
    add     esp, 8

    mov     eax, dword [total_luas]
    mov     ebx, dword [total_keliling]
    cetak_hasil eax, ebx

    mov     eax, 1
    xor     ebx, ebx
    exit
