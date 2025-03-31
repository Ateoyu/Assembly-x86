org 100h

mov BL, [b]
add BL, [c]
mov AL, [a]

div BL

mov AH, 00h
int 21h

a dw 5h
b dw 4h
c dw 2h
y dw 00h