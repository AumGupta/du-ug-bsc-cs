.model small
.data
	arr1 db 01,02,03,04,05
	arr2 db 01,02,03,04,04
	arr3 db 0,0,0,0,0
	a db 5
.code
.startup
	MOV CX,05;
	MOV DX,0
L1:
	LEA BX,arr1
	ADD BX,DX
	MOV AX,[BX]

	LEA BX,arr2
	ADD BX,DX
	ADD AX,[BX]

	LEA BX,arr3
	ADD BX,DX
	MOV [BX],AX

	ADD DX,1
	SUB CX,1
	JNZ L1



.exit
end