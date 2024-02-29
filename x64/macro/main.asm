extern printf

%define tambah10(nums) add nums, 10

%macro prntf 2  ; 2 = total parameter
    section .data
        %%param1    db  %1, 0
        %%fmt       db  "%s %ld", 0xa, 0

    section .text
        mov     rdi, %%fmt
        mov     rsi, %%param1
        mov     rdx, [%2]
        mov     rax, 0
        call    printf
%endmacro

section .data
    number dq 7

section .text
    global _start

_start:
    prntf   "Nomor awal:", number

    mov     rax, [number]
    tambah10(rax)
    mov     [number], rax

    prntf   "Nomor di tambah 10: ", number

    ; exit program
    xor rdi, rdi    
    mov rax, 0x3c
    syscall
