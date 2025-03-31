org 100h

push word [a]
push word [b]

pop AX
pop DX
mul DL
push AX

push word [c]

pop AX
pop DX
add AX, DX
push AX

pop word [y]

mov AH, 00h
int 21h

a dw 2
b dw 6
c dw 4
y dw 0