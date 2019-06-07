.global _start

_start:
    .quad ._start, .TOC.@tocbase, 0

.text

._start:
    bl load_from_readonly
    li 0,1
    sc

# Load a constant from read-only memory
load_from_readonly:
    lis 5, (myStuff)@ha
    addi 5, 5, (myStuff)@l
    lwz 3, 0(5)
    blr

myStuff:
    .long 1234
