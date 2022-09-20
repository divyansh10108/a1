extern scanf,printf
section .data
        line db "Please enter input: "
        formatStr db "%s", 0
        str times 64 db 0  


section .bss
    name resb 32


section .text
    global main

main:
    push rbp
    xor rax, rax
    call _printText1
    call _getName
    call _printName
    pop rbp
    mov rax, 0
    ret
    


_getName:
    mov rdi, formatStr
    mov rsi, str
    xor rax, rax
    call scanf
    ret


_printText1:
    mov rdi, 1
    mov rsi, line
    xor rax,rax
    call printf
    ret

_printName:
    mov rdi, formatStr
    mov rsi, str
    xor rax, rax
    call printf
    ret
