.globl sumOfPowers
sumOfPowers:
    push %rbp
    mov %rsp, %rbp

    mov %rdi, %rcx
    cmp $0, %rcx
    jle Done

    mov $0, %rax
    mov $1, %rbx

Loop:
    mov %rbx, %rdx
    imul %rbx, %rdx 
    add %rdx, %rax

    inc %rbx
    cmp %rcx, %rbx 
    jle Loop

Done:
    pop %rbp
    ret