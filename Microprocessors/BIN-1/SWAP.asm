.MODEL SMALL
.DATA
	ARR DW 1,2,3,4,5
.CODE
.STARTUP
	MOV BX, OFFSET ARR
	MOV CX, [BX]
	MOV DX, [BX+6]
	MOV [BX+6], CX
	MOV [BX], DX
.EXIT
END