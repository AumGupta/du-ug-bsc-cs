.model small
.code 
.startup
	MOV AX ,1245
	MOV CX ,100
	DIV CX
	AAM
	ADD AX,3030H
	XCHG AX,DX
	AAM
	ADD AX,3030H
		
.exit
end
	



