org 100h

mov AL, [a]
mul byte [b]
add AX, [c]

mov AH, 00h
int 21h

a dw 5h
b dw 4h
c dw 2h
y dw 00h