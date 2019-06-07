.text
        .global _start

_start:
        .quad   ._start,.TOC.@tocbase,0
        .previous
 
        .global  ._start
._start:
 
    li      0,1         # syscall number (sys_exit)
    li      3,0         # first argument: exit code
    sc                  # call kernel

