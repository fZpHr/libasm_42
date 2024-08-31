section .text 
        global ft_write
        extern __errno_location

ft_write:
        xor rax, rax
        mov rax, 1
        mov rdi, rdi
        mov rsi, rsi
        mov rdx, rdx
        syscall
        cmp rax, 0
        jl error
        ret

error:
        mov rax, -1
        ret

section .note.GNU-stack noalloc progbits
