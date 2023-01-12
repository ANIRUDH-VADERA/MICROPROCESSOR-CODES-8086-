.model small
.stack


.code
        MOV SI,2000H
        MOV BX,[SI]
        MOV AX,0001H
        MOV DX,0000H
        MOV DI,3000H
        L1:
                CMP BX,0000H
                JE L2
                MUL BX
                DEC BX
                JMP L1
        L2:
                MOV [DI],DH
                INC DI
                MOV [DI],DL
                INC DI
                MOV [DI],AH
                INC DI
                MOV [DI],AL


end
