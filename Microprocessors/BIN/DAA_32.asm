.model small
.code
.startup
	MOV AL,1FH
	ADD AL,12H
	DAA
	MOV CL ,AL
	MOV AL,56H
	ADC AL,43H
	DAA
	MOV CH,Al
	MOV AL,34H
	ADC AL,65H
	DAA
	MOV DL,AL
	MOV AL,12H
	ADC AL,87H
	DAA
	MOV DH,AL
.exit
end