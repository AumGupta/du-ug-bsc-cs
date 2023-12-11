.model small
.data
	arr DB 41,42,43,44,45
.code
start:
	
	MOV BX,OFFSET arr
	MOV AX,43
	MOV DX,0 ;change to 1 if element found
	MOV CX,05
L1:
	CMP AX,[BX]
	JZ L2
	INC BX
	DEC CX
	JNZ L1
L2:
	MOV DX,1
end