org 100h

mov AH, 02h
mov DH, 0x0C
mov DL, 0x28
int 10h

mov DL, 'A'
int 21h
mov AH, 00h
int 21h