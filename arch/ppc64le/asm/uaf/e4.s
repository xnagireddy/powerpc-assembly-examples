.global _start

_start:
    .quad ._start, .TOC.@tocbase, 0

.text

._start:
    bl load
    li 0,1
    sc

load:
    lis 3, (0xdeadbeef)@ha
    addi 3, 3, (0xdeadbeef)@l
    li 3, 2
    addi 3, 3, 1
    li 3, (0xdeadbeef)@ha
    blr

