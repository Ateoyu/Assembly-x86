org 100h
; 2*a + 2*b - 2*c = 2a* 2b* + 2c* -

push word 2h
push word [a]
pop AX
pop DX
mul DL
push AX

push word 2h
push word [b]
pop AX
pop DX
mul DL
push AX


pop AX
pop DX
add AX, DX
push AX

push word 2h
push word [c]
pop AX
pop DX
mul DL
push AX

pop AX
pop DX
sub DX, AX
push AX

mov AH, 00h
int 21h

a dw 2
b dw 6
c dw 4
y dw 0