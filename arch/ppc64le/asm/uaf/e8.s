.global _start

_start:
    .quad ._start, .TOC.@tocbase, 0

.text

._start:
    bl branch_away
    li 0, 1
    li 3, 0
    sc

_farray_print:
    li 0, 1
    li 3, 0
    sc

# branch away and never return
branch_away:
    lis 3, (myFloats)@ha
    addi 3, 3, (myFloats)@l
    li 4, 1
    b _farray_print

.data

myFloats:
    .long 0x3F9DF3B6

