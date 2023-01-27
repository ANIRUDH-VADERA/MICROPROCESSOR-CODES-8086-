.model small
.stack

.code
MOV SI,2000H
MOV CL,[SI]
MOV SI,2500H

MOV AL,[SI]

L1:
        MOV BL,[SI]
        CMP BL,AL
        JC L2
L6:
        INC SI
        DEC CL
        CMP CL,00
        JE L4
        JMP L1

L2:
        MOV AL,BL
        JMP L6

L4:
        MOV DI,3000H
        MOV [DI],AL

end 

