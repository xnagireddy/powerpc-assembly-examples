.global _start

_start:
    .quad ._start, .TOC.@tocbase, 0

.text

._start:
    bl sum
    li 0, 1
    sc

sum:
    li 7, 3
    li 9, 10
    add 3, 7, 9
    blr

