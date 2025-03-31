org 100h

mov AH, 0Ah
mov DX, inputText           ; saves the flag "inputText" as the buffer for the userInput text.
int 21h

mov AX, 00h                 ; simply resets AX to 0000
mov BX, inputText + 2       ; moves the adress of inputText, move over by 2, to BX. It is moved over by 2 because the first two adresses are reserved, first for smthn, second for size of input string
mov AL, [inputText + 1]     ; moves the value of inputText, moved over by 1, to AL. This value is how many bytes long the inputString is
add BX, AX                  ; BX = address of BX + number of bytes. Result is a new address that start of string + length of string. Thus giving the address of the end of the string.
mov byte [BX], '$'          ; at the end of the string, adds a '$' so that when it comes to reading the inputText, it stops reading precisely after it, and doesnt continue indefinitely.

mov AH, 09h
mov DX, newline
int 21h

mov AH, 09h
mov DX, inputText + 2       ; reads and outputs whats stored from the adress of inputText + 2, until it meets a "$".
int 21h

mov AH, 00h
int 21h

newline db 0Dh, 0Ah, "$"
inputText db 9