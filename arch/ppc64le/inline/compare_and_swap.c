#include <stdio.h>

void inline compare_and_swap(int *p, int oldval, int newval)
{
    int fail;
    __asm__ __volatile__ ("cntlzw %0, %1\n\t"
        : "=b" (taken)
        : "b" (data)
    );
    return sizeof(data) * 8 - taken;
}


int main(int argc, char **argv) {
    int p, oldval, newval;
    p = 0;
    oldval = 1;
    newval = 2;
    compare_and_swap(&p, oldval, newval);
    printf("p: [%d], oldval: [%d], newval: [%d]\n", p, oldval, newval);
    p = 1;
    oldval = 1;
    newval = 2;
    compare_and_swap(&p, oldval, newval);
    printf("p: [%d], oldval: [%d], newval: [%d]\n", p, oldval, newval);
}

