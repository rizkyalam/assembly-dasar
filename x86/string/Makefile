BUILD_DIR=../../build/x86/string

replace-byte: replace-byte.o
	ld -m elf_i386 $(BUILD_DIR)/replace-byte.o -o $(BUILD_DIR)/replace-byte
replace-byte.o: replace-byte.asm
	nasm -f elf32 replace-byte.asm -o $(BUILD_DIR)/replace-byte.o
