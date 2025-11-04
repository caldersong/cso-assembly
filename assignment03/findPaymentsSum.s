.globl findPaymentsSum
findPaymentsSum:
    push %rbp
    mov %rsp, %rbp

    mov %rsi, %rcx 
    cmp $0, %rcx
    jle Done

    lea 8(%rdi), %rdx 

    mov $0, %rax 

Loop:
    mov (%rdx), %rbx
    add %rbx, %rax 
    add $4, %rdx 
    dec %rcx 
    jne Loop 

Done:
    pop %rbp
    ret