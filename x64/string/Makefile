BUILD_DIR=../../build/x64/string

reverse: reverse.o
	ld -lc -dynamic-linker /lib64/ld-linux-x86-64.so.2 -o $(BUILD_DIR)/reverse $(BUILD_DIR)/reverse.o
reverse.o: reverse.asm 
	nasm -f elf64 -g -F dwarf reverse.asm -l $(BUILD_DIR)/reverse.lst -o $(BUILD_DIR)/reverse.o
