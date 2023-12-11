.model small
.data 
	DATA1 DB 41H,42H,43H,44H,45H
.code
.startup
	MOV BX,OFFSET DATA1
	MOV AL,43H
	MOV DX,0 ;change to 1 if element found
	MOV CX,05
L1:
	
	CMP AL,[BX]
	JZ L2
	INC BX
	DEC CX
	JNZ L1
L2:
	MOV DX,1
.exit
end