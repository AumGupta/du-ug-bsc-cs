.model small
.code
.startup
	MOV DX ,1274H
	MOV BX, 3049H
	MOV AL, BL
	ADD AL, DL
	DAA
	MOV CL,AL
	MOV AL,BH
	ADC AL,DH
	DAA
	MOV CH,AL
.exit
end
