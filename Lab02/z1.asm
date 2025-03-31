org 100h

mov AH, 09h		;
mov DX, text	;-text print
int 21h			;

mov AH, 00h		;
int 21h			;-End of program

text db "Marcel Stankiewicz$"