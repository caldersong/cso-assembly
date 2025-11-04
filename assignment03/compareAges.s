.globl compareAges
compareAges:
    push %rbp
    mov %rsp, %rbp

    mov (%rdi), %rax
    mov (%rsi), %rbx
    cmp %rbx, %rax
    jne Not_Equal

    mov $1, %rax
    jmp Done

Not_Equal:
    mov $0, %rax

Done:
    pop %rbp
    ret