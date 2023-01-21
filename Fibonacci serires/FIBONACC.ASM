.model small
.stack

.code
        MOV SI,2000H
        MOV DI,3000H
        MOV CL,[SI]
        MOV AL,00H
        MOV [DI],AL
        DEC CL
        INC DI
        MOV AL,01H
        MOV [DI],AL
        DEC CL
        INC DI
        L1:
                CMP CL,00H
                JE L2
                DEC CL
                MOV AL,[DI-02H]
                MOV BL,[DI-01H]
                ADD AL,BL
                MOV [DI],AL
                INC DI
                JMP L1

         L2:

end
