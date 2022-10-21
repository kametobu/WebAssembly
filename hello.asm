section .text
global _start

extern helloworld
extern javascript
extern println
extern exit

_start:
	mov rsi, helloworld
	call println
	mov rsi, javascript
        call println
	call exit
