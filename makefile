ASM_FILES=$(shell find . -name "*.asm")
OBJECT_FILES=$(ASM_FILES:%.asm=%.o)
NASM_OPTS=-f elf64 -F dwarf -g
#LD_OPTS=-m elf_x86_64
#ld $(LD_OPTS) -o hello $(OBJECT_FILES)
LD_OPTS=-no-pie

all: helloworld

%.o: %.asm
	@echo "Assembly file $< -> $@"
	@nasm $(NASM_OPTS) -o $@ $<

clean:
	@echo "Removendo files"
	@rm -f hello *.o

link: $(OBJECT_FILES)
	@echo "LINK files objects"
	@gcc $(LD_OPTS) -o hello $(OBJECT_FILES)

helloworld:  link
	@echo "FINALIZADO!"

.PHONY: clear
