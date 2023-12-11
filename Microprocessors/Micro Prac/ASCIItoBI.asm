.model small
.code
.startup
mov Al,0AH
.if Al>09H
    ADD AL,37H
    MOV CX,08H
L1:
    shl al,01h
    mov al,0h
    adc al,0h
    loop l1
.endif

.exit
end