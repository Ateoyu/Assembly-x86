org 100h

forLoop:
    mov AH, 01h
    int 21h

cmp AL, 'Q'
je endOfProgram
jg forLoop
jl forLoop

endOfProgram:
    mov AH, 00h
    int 21h