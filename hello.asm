section .text
global _start

_start:
	mov rsi, helloworld
	call println
	mov rsi, javascript
        call println
	call exit

exit:
	mov rax, 60
	xor rdi, 0
	syscall
print:
	push rax 
	push rsi
	call strlen
	pop rsi

	mov rdi, 1
        mov rdx, rax
        mov rax, 1
	syscall
	pop rax
	ret
println:
	push rsi
	call print
	mov rsi, linebreak
	call print
	pop rsi
	ret

strlen:
	push rbx
	mov rbx, 0

loopstart:
	mov rax, 0
	lodsb
	test ax,ax
	jz loopout
	inc rbx
	jmp loopstart

loopout:
	mov rax, rbx
	pop rbx
	ret
linebreak:
	db `\n`, 0

helloworld:
	db `Hello World\n`, 0
javascript:
        db `javascript\n`, 0
