BUILD_DIR=../../build/x64/latihan

main: main.o
	ld -o $(BUILD_DIR)/main $(BUILD_DIR)/main.o
main.o: main.asm
	nasm -f elf64 -o $(BUILD_DIR)/main.o main.asm
