; hello.asm - программа "Hello world!"

SECTION .data               ; Секция данных
hello:      db 'Shnyrkova Anna!', 10   ; строка + перевод строки
hello_len   equ $ - hello           ; длина строки

SECTION .text               ; Секция кода
GLOBAL _start               ; Точка входа

_start:
    ; sys_write (номер 4)
    mov eax, 4
    mov ebx, 1
    mov ecx, hello
    mov edx, hello_len
    int 80h

    ; sys_exit (номер 1)
    mov eax, 1
    mov ebx, 0
    int 80h
