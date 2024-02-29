#include <stdio.h>

typedef long long byte;

void print_bit(byte n) {
    byte s;

    for (byte i = 63; i >= 0; i--) {
        s = n >> i;

        if ((i + 1) % 8 == 0) printf(" ");

        char bit = s & 1 ? '1' : '0';
        printf("%c", bit);
    }

    printf("\n");
}
