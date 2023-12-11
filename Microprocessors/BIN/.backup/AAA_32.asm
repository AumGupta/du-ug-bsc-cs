.model small
.code 
.startup
	MOV BX, 7272H
	MOV Al,BL,
	AAA
	ADD Ax,3030H
	MOV CX,AX
	MOV Al,BH,
	AAA
	ADD ax, 3030H
	
.exit
end
	



