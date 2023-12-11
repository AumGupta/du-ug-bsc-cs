.model small
.code
.startup
	MOV AX,39H
	ADD AL,39H
	AAA
	ADD Ax,3030H
	
.exit
end
