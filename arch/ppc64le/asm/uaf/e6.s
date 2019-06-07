.global _start

_start:
    .quad ._start, .TOC.@tocbase, 0

.text

._start:
    bl store_to_writeable
    li 0,1
    sc

# Store a constant to writeable memory
store_to_writeable:
    lis 5, (myStuff)@ha
    addi 5, 5, (myStuff)@l
    stw 3, 0(5)
    blr

.data

myStuff:
    .long 1234

