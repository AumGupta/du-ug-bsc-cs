.model small
.data 
	arr dw 4141H,4242H,4343H,4444H,4545H
.code
.startup
	MOV AX,3009h
	mov bx,1111h
	sub ax,bx
	das
	
.exit

end