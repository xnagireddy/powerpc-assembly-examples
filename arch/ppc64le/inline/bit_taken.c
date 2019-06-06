#include <stdio.h>

inline int bit_taken(int data)
{
    int taken;
    asm("cntlzw %0, %1\n\t"
        : "=b" (taken)
        : "b" (data)
    );
    return sizeof(data) * 8 - taken;
}

int main(int argc, char **argv) {
    printf("bit_taken([%d]): [%d]\n", 1, bit_taken(1));
    printf("bit_taken([%d]): [%d]\n", 2, bit_taken(2));
    printf("bit_taken([%d]): [%d]\n", 3, bit_taken(3));
    printf("bit_taken([%d]): [%d]\n", 14, bit_taken(14));
    printf("bit_taken([%d]): [%d]\n", 15, bit_taken(15));
    return 0;
}

