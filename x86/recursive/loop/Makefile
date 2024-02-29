BUILD_DIR=../../../build/x86/recursive/loop

main: main.o
	ld -m elf_i386 $(BUILD_DIR)/main.o -o $(BUILD_DIR)/main
main.o: main.asm
	nasm -f elf32 main.asm -o $(BUILD_DIR)/main.o
