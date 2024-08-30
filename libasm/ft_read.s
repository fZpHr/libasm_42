section .text 
        global ft_read

ft_read:
        xor rax, rax
        mov rax, 0
        mov rdi, rdi
        mov rsi, rsi
        mov rdx, rdx
        syscall
        ret

section .note.GNU-stack noalloc progbits
