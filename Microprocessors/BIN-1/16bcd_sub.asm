.model small
.code
	MOV AX, 5678h 
	MOV BX, 1234h 
	CLC 
	SUB AX, BX
	DAS
end