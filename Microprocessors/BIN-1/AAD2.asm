.model small
.code 
.startup
	MOV AX, 0305h
	MOV BL, 9
	AAD
	DIV BL
.exit
end