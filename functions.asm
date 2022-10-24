section .text

extern linebreak
extern modoleitura
extern printf
extern malloc
extern free
extern fopen
extern fread
SYSCALL_WRITE equ 1
SYSCALL_EXIT equ 60
STDOUT equ 1

global exit
exit:
        mov rax, SYSCALL_EXIT
        xor rdi, 0
        syscall
global eprintf:
eprintf:
        push rbp
	mov rbp, rsp
	call printf
	pop rbp
        ret
global print
print:
        push rax
        push rsi
        call strlen
        pop rsi
        mov rdi, STDOUT
        mov rdx, rax
        mov rax, SYSCALL_WRITE
        syscall
        pop rax
        ret
global println
println:
        push rsi
        call print
        mov rsi, linebreak
        call print
        pop rsi
        ret
global strlen
strlen:
        push rbx
        mov rbx, 0
global loopstart
loopstart:
        mov rax, 0
        lodsb
        test ax,ax
        jz loopout
        inc rbx
        jmp loopstart
global loopout
loopout:
        mov rax, rbx
        pop rbx
        ret
global allocate
allocate:
        push rbp
	mov rbp, rsp
	mov rax, 0
	call malloc
	pop rbp
        ret
global deallocate
deallocate:
       	push rbp
	mov rbp, rsp
	call free
	pop rbp
        ret
global abrirarquivo
abrirarquivo:
        push rbp
	mov rbp, rsp
        mov rsi, modoleitura
	call fopen
	pop rbp
        ret  
global lerdados
lerdados:
        push rbp
	mov rbp, rsp
        mov rcx, rdx
        mov rdx, 1
	call fread
	pop rbp
        ret  