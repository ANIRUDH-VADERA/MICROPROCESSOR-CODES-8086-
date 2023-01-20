.model small
.stack

.code

MOV SI,2000H
MOV AL,[SI]
MOV AH,00H
MOV DL,AL
MOV CL,00H

L1:
        MOV AL,[SI]
        MOV AH,00H
        MOV BL,DL
        DIV BL
        CMP AH,00H
        JE L2
        DEC DL
        CMP DL,00H
        JE L3
        JMP L1
L2:
        INC CL
        DEC DL
        CMP Dl,00H
        JE L3
        JMP L1
L3:
        CMP CL,02H
        JE L4
        JMP L5
L4:
        MOV SI,3000H
        MOV DL,01H
        MOV [SI],DL
        JMP L6
L5:
        MOV SI,3000H
        MOV DL,00H
        MOV [SI],DL
L6:

end
