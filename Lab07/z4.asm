org 100h

mov AH, 02h
mov BH, 00h
mov DH, 24
mov DL, 79
int 10h

mov AH, 0Ah
mov AL, 49
mov CX, 1h
int 10h

mov AH, 00h
int 21h