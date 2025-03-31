org 100h

mov AH, 0Ah				;
mov DX, text			;- odzczyt stringa
int 21h					;

mov AH, 09h
mov DX, newline
int 21h

mov AH, 02h
mov DL, [text+4]
int 21h

mov AH

mov AH,00h				;-koniec programu
int 21h

text db 9
times 9 db 0
newline db 0Dh, 0Ah, "$"