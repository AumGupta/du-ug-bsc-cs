.MODEL SMALL
.DATA

.CODE
.STARTUP

    MOV AL, 'Z'  ; REPLACE 'A' WITH THE ASCII CHARACTER YOU WANT TO CONVERT

    CMP AL, '9'
    JBE not_upper_case

    ; CONVERT UPPERCASE LETTERS TO BINARY ('A' TO 'Z')
    SUB AL, 'A'
    ADD AL, 10
    JMP continue_conversion

not_upper_case:
    ; CONVERT NUMERIC CHARACTERS TO BINARY ('0' TO '9')
    SUB AL, '0'

continue_conversion:
    MOV CX, 8
    XOR BX,BX

AsciiToBin:
    SHL AL, 1 	;MOVES MSB TO CARRY FLAG
    RCL BL, 1 	; 
    DEC CX
    JNZ AsciitToBin

    ; NOW, THE BINARY REPRESENTATION IS IN BL REGISTER

.EXIT
END
