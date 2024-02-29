BUILD_DIR=../../build/x86/interfacing

main: tambah.o tambah10.o
	gcc main.c -m32 $(BUILD_DIR)/tambah.o $(BUILD_DIR)/tambah10.o -z noexecstack -o $(BUILD_DIR)/main
tambah.o: tambah.asm
	nasm -f elf32 tambah.asm -o $(BUILD_DIR)/tambah.o
tambah10.o: tambah10.asm
	nasm -f elf32 tambah10.asm -o $(BUILD_DIR)/tambah10.o
