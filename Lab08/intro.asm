org 100h

mov AH, 00h         ;
mov AL, 12h         ; Switching to graphics mode
int 10h             ;

mov AX, 1h
int 33h             ; enabling cursor


main_loop:
    mov AX, 03h     ; Read cursor position 
    int 33h         ;

    call draw_pixel

    mov AH, 01h
    int 16h
    cmp AL, 'q'
        je koniec           ; end of q is pressed
    cmp AL, 'c'
        je change_colour

jmp main_loop

koniec:
    mov AH, 00h         ; clear keyboard buffer
    int 16h

    mov AX, 2h
    int 33h

    mov AH, 00h
    int 21h

draw_pixel:
    mov AH, 0Ch     
    mov AL, [colour]
    dec CX
    int 10h
    dec DX
    int 10h
    dec DX
    int 10h
    inc DX
    dec CX
    int 10h
    add CX, 2
    int 10h
    ret 

change_colour:
    inc byte [colour]
    mov AH, 00h         ; clear keyboard buffer
    int 16h
    jmp main_loop

colour db 1h