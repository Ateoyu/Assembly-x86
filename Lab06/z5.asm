org 100h
; a * b / c == ab*c/

push word [a]
push word [b]

pop AX
pop CX
mul CL

push word [c]

pop CX
div CL

mov AH, 00h
int 21h

a dw 2
b dw 6
c dw 4
y dw 0