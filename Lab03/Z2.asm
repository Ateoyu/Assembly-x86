org 100h

mov AH, 09h
mov DX, string1
int 21h

mov AH, 09h
mov DX, newline
int 21h

mov byte [string1+3], "$" 
mov DX, string1
int 21h

mov AH, 00h
int 21h

string1 db "wabadabadoo$"
times 9 db 0
newline db 0Dh, 0Ah, "$"

