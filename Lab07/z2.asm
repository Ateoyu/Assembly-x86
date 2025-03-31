org 100h

mov CX, 05h
mov AH, 07h
mov BX, 00h

readCharArray:
    int 21h
    mov [charArray + BX], AL
    inc BX
    loop readCharArray

       
mov BX, charArray + 5
mov byte [BX], '$'   

mov AH, 09h
mov DX, charArray
int 21h

mov AH, 00h
int 21h

charArray db 6