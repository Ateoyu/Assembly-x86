org 100h
; a / (b + c) == abc+/

push word [a]
push word [b]
push word [c]

pop AX
pop DX
add AX, DX

mov DX, 0h

pop CX
div CL


mov AH, 00h
int 21h

a dw 2
b dw 6
c dw 4
y dw 0