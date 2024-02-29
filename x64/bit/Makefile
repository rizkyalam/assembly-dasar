BUILD_DIR=../../build/x64/bit
NO_STACK=-z noexecstack
LINKING_FLAG=$(NO_STACK) -no-pie -nostartfiles -lc
NASM_FLAG=-f elf64 -g -F dwarf main.asm -l
GCC_FLAG=-m64 -c $(NO_STACK)

main: main.o print_bit.o
	gcc $(LINKING_FLAG) -o $(BUILD_DIR)/main $(BUILD_DIR)/main.o $(BUILD_DIR)/print_bit.o
main.o: main.asm
	nasm $(NASM_FLAG) $(BUILD_DIR)/main.lst -o $(BUILD_DIR)/main.o
print_bit.o: print_bit.c
	gcc $(GCC_FLAG) -o $(BUILD_DIR)/print_bit.o print_bit.c
