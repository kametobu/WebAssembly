
NASM_OPTS=-f elf64 -F dwarf -g
LD_OPTS=-m elf_x86_64
Hello:  .PHONY
	rm -f hello *.o
	nasm $(NASM_OPTS) -o hello.o hello.asm
	nasm $(NASM_OPTS) -o functions.o functions.asm
	nasm $(NASM_OPTS) -o strings.o strings.asm
	ld $(LD_OPTS) -o hello hello.o functions.o strings.o
.PHONY:
