SECTION .data

msg: db "HelloWorld!", 0x0a
len: equ $-msg

SECTION .text
global _main

_main:
    mov rax, 0x2000004
    mov rdi, 1
    mov rsi, msg
    mov rdx, len
    syscall

    mov rax, 0x20000001
    mov rdi, 0
    syscall


; nasm -f macho64 helloWorld.asm -o helloWorld.o
; ld -macosx_version_min 10.7.0 -o helloWorld -e _main helloWorld.o