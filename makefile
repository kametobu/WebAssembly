Hello:  .PHONY
	rm -f hello hello.o
	nasm -f elf64 -F dwarf -g -o hello.o hello.asm
	ld -m elf_x86_64 -o hello hello.o
.PHONY:
