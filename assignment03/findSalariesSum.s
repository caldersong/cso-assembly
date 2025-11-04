.globl findSalariesSum
findSalariesSum:
    push %rbp
    mov %rsp, %rbp

    mov %rsi, %rcx
    xor %eax, %eax 
    cmp $0, %rcx 
    jle Done

    mov %rdi, %rdx 

Loop:
    mov 8(%rdx), %r8d
    add %r8d, %eax 
    add $12, %rdx
    dec %rcx 
    jne Loop 

Done:
    pop %rbp
    ret