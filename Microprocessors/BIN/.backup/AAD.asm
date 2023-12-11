.model small
.code 
.startup
	mov bl ,9
	mov ax, 0702h
	aad
	div bl
.exit
end