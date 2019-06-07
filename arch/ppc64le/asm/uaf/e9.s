.global _start

_start:
    .quad ._start, .TOC.@tocbase, 0

.text

._start:
    bl fsum
    li 0, 1
    li 3, 0
    sc

_farray_print:
    li 0, 1
    li 3, 0
    sc

# floating point arithmetic
fsum:
    lis 3, (myFloats)@ha
    addi 3, 3, (myFloats)@l

    lfs 1, 0(3)
    fadd 1, 1, 1
    stfs 1, 0(3)

    li 4, 1
    b _farray_print

.data

myFloats:
    .long 0x3F9DF3B6

