.data
 
hello:
    .string "Hello, World!\n"
    hellolength = . - hello

bye:
    .string "Good Bye, World!\n"
    byelength = . - bye

hacked:
    .string "Been Hacked!\n"
    hackedlength = . - hacked
 
.text
    .global _start
    .section ".opd","aw"
    .align 3

_start:
        .quad   ._start, .TOC.@tocbase, 0
        .previous
        .global ._start

._start:
    bl say_hello
    bl say_hacked
    bl say_goodbye
    bl do_exit
 
do_exit: 
    li      0, 1
    li      3, 0
    sc

say_hello: 
    li      0, 4
    li      3, 1
    lis     4, hello@ha
    addi    4, 4, hello@l
    li      5, hellolength
    sc
    blr

say_goodbye:
    li     0, 4
    li     3, 2
    lis    4, bye@ha
    addi   4, 4, bye@l
    li     5, byelength
    sc
    blr

say_hacked:
    li     0, 4
    li     3, 1
    lis    4, hacked@ha
    addi   4, 4, hacked@l
    li     5, hackedlength
    sc
    blr
 
