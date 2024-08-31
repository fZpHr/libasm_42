section .text 
        global ft_read
        extern __errno_location

ft_read:
        xor rax, rax
        mov rax, 0
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
