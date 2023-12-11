.model small
.data
	arr db 41h,42h,43h,44h,45h
	l db 0
	h db 5
	mid db 0
	Found dB "found$"
	notf db "Not found$"
.code
.startup
	mov cl,46h
	mov dl,2
L1:
	mov al,[l]
	add al,[h]
	shr al,1
	mov [mid],al
	mov dh,[h]
	.if [l]==dh
		sub dl,1
		jz l3
		
	.endif
	
	mov bx,offset arr
	mov al,[mid]
	cbw
	mov si,ax
	.IF cl==[bx+si]
		JMP L2
	.ELSEIF cl>[mid]
		mov bl,[mid]
		mov [l],bl
		JMP L1
	.Else
		mov bl,[mid]
		mov [h],bl
		JMP L1

		

	.endif
	l2:
	mov ah,09h
	mov dx,offset found
	int 21h
	jmp l4
	L3:
	mov dx,offset notf
	mov ah,09
	int 21h
	L4:
.exit
end

		
	
	