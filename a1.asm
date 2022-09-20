extern printf
extern scanf

section .data 
    line: db "Please enter your input "
    s times 100 0
    formatStr: db "%s", 0

section .text
    global main

main:
    lea rdi, [formatStr]
    lea rdx , [s]
    xor eax, eax
    call scanf
    lea rdi, [formatStr]
    lea rdx , [s]
    xor eax, eax
    call printf

