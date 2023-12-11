.model small
.code
.startup
	MOV DX, 3099H
	MOV CX, 1234H
	MOV AL, DL
	SUB AL,CL
	DAS
	MOV BL,AL
	MOV AL,DH
	SBB AL,CH
	DAS
	MOV BH,AL
.exit
end
