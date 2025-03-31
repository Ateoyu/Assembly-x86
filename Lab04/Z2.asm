org 100h

mov AH, 01h
int 21h

cmp AL, 41h
jl errorCase

cmp AL, 5Ah
jle capitalLetter

cmp AL, 61h
jl errorCase

cmp AL, 7Ah
jle smallLetter
jg errorCase

errorCase:
    mov AH, 09h
    mov DL, errorMsg
    int 21h
    jmp endOfProgram
    
capitalLetter:
    mov AH, 09h
    mov DL, capitalMsg
    int 21h
    jmp endOfProgram

smallLetter:
    mov AH, 09h
    mov DL, smallMsg
    int 21h
    jmp endOfProgram

endOfProgram:
    mov AH, 00h
    int 21h

errorMsg db "Error$"
capitalMsg db "Capital_Letter$"
smallMsg db "Small_Letter$"
