org 100h

mov AL, [a]
mov BL, 02h
mul BL

mov CX, AX

mov AL, [b]
mul BL

mov DX, AX

add CX, DX

mov AL, [c]
mul BL

add CX, AX

mov AH, 00h
int 21h

a dw 5h
b dw 4h
c dw 2h
y dw 00h