.model small
.data
	arr dw 0041,0042,0043,0044,0045
	l dw 0000
	h dw 0005
	mid dw?
.code
.startup
	L1: 
	mov al,[l]
	add al,[h]
	mov ah,00
	moc cl,2
	div cl
	mov [mid],al

	mov al,[mid]
	

	
	
	
.exit
end