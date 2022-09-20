global main
extern printf  
extern scanf

section .data 
    line: db "please enter yout input: "
    s times 100 db 0
    formatStr: db "%s" , 0
    formatInt: db "%d" , 0
    line2: db "please enter your integer: "

section .text 
    
section .bss
    loda resb 4

main:

    push rbp
    mov rbp, rsp
    sub rsp, 16

    xor eax, eax 
    lea rdi, [line]
    call printf

    lea rdi, [formatStr]
    lea rsi, [s]
    xor eax, eax     
    call scanf   

    lea rdi, [formatStr]
    lea rsi, [s]
    xor eax, eax
    call printf

    xor eax, eax 
    lea rdi, [line2]
    call printf

    lea rdi, [formatInt]
    lea rsi, [loda]
    xor eax, eax     
    call scanf   

    lea rdi, [formatInt]
    mov edx, [loda]
    xor eax, eax
    call printf

    add rsp, 16
    leave
    ret


