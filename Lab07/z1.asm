org 100h

mov CX, 12h
printH:
    mov AH, 02h
    mov DL, 'H'
    int 21h
    mov AH, 09h
    mov DX, newline
    int 21h
    loop printH

mov AH, 00h
int 21h

newline db 0Dh, 0Ah, "$"