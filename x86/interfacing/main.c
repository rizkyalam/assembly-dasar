#include <stdio.h>
#include "tambah.h"

int main() {
    int a;
    int b;

    printf("Masukan angka pertama : ");
    scanf("%d", &a);

    printf("Masukan angka kedua : ");
    scanf("%d", &b);

    int total = tambah(a, b);
    printf("Total jumlah angka: %d\n", total);

    tambah10(&total);
    printf("Total jumlah angka ditambah 10: %d\n", total);

    return 0;
}
