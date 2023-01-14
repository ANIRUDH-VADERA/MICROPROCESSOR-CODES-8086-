.model small
.stack

.code

        MOV AH,01H  ;Accepts the character from keyboard with echo and stores that character on 'AL' register
        INT 21H    ;Interrupt Function

        MOV DL,AL   ;Copies content of AL into DL

        MOV AH,02H
        INT 21H    ;Display the output on the screen with whatever is stored in DL


end

