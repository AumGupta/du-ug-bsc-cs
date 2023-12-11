;6) 32 bit BCD subtraction

.MODEL SMALL
.CODE

MOV AX, 5678h ; Lower 16-bit of Minuend
MOV BX, 1234h ; Lower 16-bit of Subtrahend

MOV CX, 5678h ; Upper 16-bit of Minuend
MOV DX, 1234h ; Upper 16-bit of Subtrahend

CLC ; Clear the carry flag

; Subtract the lower 16-bit BCD numbers
SBB AX, BX
DAS

; Subtract the upper 16-bit BCD numbers
SBB CX, DX
DAS

END