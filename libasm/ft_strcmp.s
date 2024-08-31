section .text 
        global ft_strcmp

ft_strcmp:
        xor rax, rax
        xor rcx, rcx
        xor rdx, rdx
loop:
        mov cl, [rsi + rax]
        mov dl, [rdi + rax]
        cmp cl, dl
        jne out
        cmp cl, 0
        je out
        inc rax
        jmp loop
out:
        cmp cl, dl
        jg cl_greater
        jl dl_greater
cl_greater:
        sub cl, dl
        neg cl
        movsx rax, cl
        ret

dl_greater:
        sub dl, cl
        movsx rax, dl
        ret


section .note.GNU-stack noalloc
