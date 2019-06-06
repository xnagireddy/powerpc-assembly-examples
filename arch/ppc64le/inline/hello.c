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

inline int say_hello(const char *name) {
    asm(
        "li      0,1         # syscall number (sys_exit)
        li      3,1         # first argument: exit code
        sc                  # call kernel
    );
    return 0;
}

int main(int argc, char **argv) {
    printf("bit_taken([%d]): [%d]\n", 1, bit_taken(1));
    printf("bit_taken([%d]): [%d]\n", 2, bit_taken(2));
    printf("bit_taken([%d]): [%d]\n", 3, bit_taken(3));
    printf("bit_taken([%d]): [%d]\n", 14, bit_taken(14));
    printf("bit_taken([%d]): [%d]\n", 15, bit_taken(15));
    return 0;
}

