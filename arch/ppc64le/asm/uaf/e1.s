.global _start
_start:
    .quad ._start, .TOC.@tocbase, 0
.text
._start:
    bl return_constant
    li 0,1
    sc

return_constant:
    li 3,100
    blr
