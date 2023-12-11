.model small
.code
.startup
	mov cl, 02H
	mov ax, 0022H
	div cl
.exit
end