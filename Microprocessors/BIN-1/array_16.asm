.model small
.data
	DATA1 DW 4141H,4242H,4343H,4444H,4545H
.code
.startup
	MOV BX, OFFSET DATA1
	MOV AX, [BX]
	MOV CX, [BX+3*2]
	MOV [BX], CX
	MOV [BX+3*2], AX
.exit
end