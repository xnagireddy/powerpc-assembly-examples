.global _start
_start:
    .quad ._start, .TOC.@tocbase, 0
.text
._start:
    bl is_less
    li 0,1
    sc

is_less:
    li 4,10
    li 5,100
    cmp 0,0,4,5
    blt goto_less
    li 3,1
    blr

goto_less:
    li 3,0
    blr
