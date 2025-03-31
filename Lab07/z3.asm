org 100h

mov CX, 0x0E
mov AH, 07h
mov BX, 00h

readCharArray:
    int 21h
    mov [charArray + BX], AL
    inc BX
    loop readCharArray

       
mov BX, charArray + 14
mov byte [BX], '$'   

mov AH, 09h
mov DX, charArray + 9
int 21h

mov AH, 00h
int 21h

charArray db 15