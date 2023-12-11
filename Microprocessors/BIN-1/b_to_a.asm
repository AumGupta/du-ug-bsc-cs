.model small
.code
start:
	MOV AL, 00110001b
	MOV CX,8

	
.IF AL >= 41h
	SUB AL,37H

.ELSEIF  AL>=30h
	SUB AL,30h

.ENDIF


end