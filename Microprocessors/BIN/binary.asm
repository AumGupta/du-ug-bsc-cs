.model small
.data
	arr db 01,02,03,04,05
	l dw 0
	h dw 5
	len dw 4

.code
.startup
start:
	mov bx,[h]
	add bx,[l]
	shr bx,1
	
	
	mov dl,06
	
	
	CMP dl,arr[bx] 
	JZ l1
	JA l2
	JB l3
l2:
	cmp bx,[len]
	jz last
	mov [l],bx
	jmp start
l3:
	cmp bx,[l]
	jz last
	mov [h],bx
	jmp start
last:
	mov cx,0
	JMP exit

l1:
	mov cx,1
exit:





	
	

.exit
end
