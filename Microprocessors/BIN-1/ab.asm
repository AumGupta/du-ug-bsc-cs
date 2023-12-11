.model small
.code
.startup
mov Al,0AH;0100 0001
.if Al>09H
	ADD AL,37H
.endif
.if AL<0AH
	ADD al,30H
.endif
MOV CX,08H

L1:	mov bl, 02
	mov ah,0
	div bl
	sub cx,1h
	JNZ L1


.exit
end