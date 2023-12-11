.model small
.code
start:
	MOV AX, 00110001b
	MOV CX,8

	
.IF AX >= 41h
	SUB AX,37H

.ELSEIF  AX>=30h
	SUB AX,30h

.ENDIF


end