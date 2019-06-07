.global _start

_start:
    .quad ._start, .TOC.@tocbase, 0

.text

._start:
    bl call_a_function
    li 0, 1
    li 3, 0
    sc

# Call a function
call_a_function:
    stwu 1, -16(1)
    mflr 0
    stw 0, 20(1)

    li 3, 1234
    bl _print_int

    lwz 0, 20(1)
    mtlr 0
    addi 1, 1, 16
    blr

# TODO: Implement print int function
_print_int:
    blr
