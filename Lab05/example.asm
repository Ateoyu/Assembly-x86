org 100h

mov AL, 16h
mov DL, 02h

mov AL, 05h
mov DL, 04h
mul DL

add AH, 05h         ; AH += 5
sub AH, 02h         ; AH -= 2



inc AH              ; increment value
inc word [a]
dec AH              ; decrement value
dec word [a]

mov AH, 00h
int 21h

a dw 5h
b dw 4h
c dw 2h
y dw 00h