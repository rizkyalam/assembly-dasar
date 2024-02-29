BUILD_DIR=../../build/x64/macro

main: main.o
	gcc -no-pie -nostartfiles -lc -o $(BUILD_DIR)/main $(BUILD_DIR)/main.o
main.o: main.asm 
	nasm -f elf64 -g -F dwarf main.asm -l $(BUILD_DIR)/main.lst -o $(BUILD_DIR)/main.o
