org 100h

mov AL, [a]
mov BL, [b]
div BL

mov AH, 00h

add AL, [c]

mov AH, 00h
int 21h

a dw 5h
b dw 4h
c dw 2h
y dw 00h