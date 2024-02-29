BUILD_DIR=../../build/x86/extern
NO_STACK=-z noexecstack
LINKING_FLAG=$(NO_STACK) -m elf_i386 -dynamic-linker /lib/ld-linux.so.2 -lc
NASM_FLAG=-f elf32
OBJECT_FILE=$(BUILD_DIR)/main.o $(BUILD_DIR)/hasil.o $(BUILD_DIR)/luas.o $(BUILD_DIR)/keliling.o

main: main.o hasil.o luas.o keliling.o
	ld $(OBJECT_FILE) $(LINKING_FLAG) -o $(BUILD_DIR)/main
main.o: main.asm
	nasm $(NASM_FLAG) -o $(BUILD_DIR)/main.o main.asm
luas.o: luas.asm
	nasm $(NASM_FLAG) -o $(BUILD_DIR)/luas.o luas.asm
keliling.o: keliling.asm
	nasm $(NASM_FLAG) -o $(BUILD_DIR)/keliling.o keliling.asm
hasil.o: hasil.c
	gcc -m32 -c $(NO_STACK) -o $(BUILD_DIR)/hasil.o hasil.c
