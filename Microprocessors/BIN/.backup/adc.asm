.model small
.code
.startup
	MOV AX,1111H
	MOV BX,2111H
	MOV CX,1112H
	MOV DX,1111H
	SUB AX,BX
	SBB CX,DX
.exit
end
