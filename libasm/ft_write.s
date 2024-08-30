section .text 
        global ft_write

ft_write:
        xor rax, rax
        mov rax, 1
        mov rdi, rdi
        mov rsi, rsi
        mov rdx, rdx
        syscall
        ret

section .note.GNU-stack noalloc progbits
