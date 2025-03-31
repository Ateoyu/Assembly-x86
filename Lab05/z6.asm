org 100h

mov AL, [b]
mov BL, [c]
div BL

mov CX, AX

mov AX, [a]
div CL

mov AH, 00h
int 21h

a dw 5h
b dw 4h
c dw 2h
y dw 00h