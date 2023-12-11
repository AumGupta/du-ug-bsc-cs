.model small
.data 
	DATA1 DB 41H,42H,43H,44H,45H
.code
.startup
	MOV BX,OFFSET DATA1
	MOV CL,[BX]
	MOV DL,[BX+3]
	MOV [BX+3],CL
	MOV [BX],DL
.exit
end