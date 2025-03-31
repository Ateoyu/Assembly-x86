org 100h
; 2a * b + 2c == 2a*b*2c+

push 2h
push word [a]

pop AX
pop CX
mul CX
push AX

push word [b]

pop AX
pop CX
mul CX
push AX

push 2h
push word [c]

pop AX
pop CX
mul CX
push AX

pop AX
pop CX
add AX, CX


mov AH, 00h
int 21h

a dw 2
b dw 6
c dw 4
y dw 0