org 100h

mov AH, 01h
int 21h

cmp AL, '_'

jg ifGreater
jl ifLesser
je ifEqual

ifGreater:
    mov AH, 02h
    mov DL, '>'
    int 21h
    jmp endOfProgram

ifLesser:
    mov AH, 02h
    mov DL, '<'
    int 21h
    jmp endOfProgram
    
ifEqual:
    mov AH, 02h
    mov DL, '='
    int 21h
    int 21h


endOfProgram:
    mov AH, 00h
    int 21h
