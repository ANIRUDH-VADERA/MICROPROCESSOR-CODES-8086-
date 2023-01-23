.model small
.stack

.code

        MOV SI,2000H
        MOV AX,[SI]
        MOV CX,AX
        INC SI
        INC SI
        MOV BX,[SI]
        SUB AX,BX
        MOV BX,CX
        MOV CX,AX

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
                MOV [DI],DX
                INC DI
                INC DI
                MOV [DI],AX
                MOV BX,CX
                MOV AX,0001H
                MOV DX,0000H

        L3:
                CMP BX,0000H
                JE L4
                MUL BX
                DEC BX
                JMP L3
        L4:
                MOV DI,3000H
                MOV BX,AX
                MOV DX,[DI]
                INC DI
                INC DI
                MOV AX,[DI]
                DIV BX

                MOV DI,3200H
                MOV [DI],DH
                INC DI
                MOV [DI],DL
                INC DI
                MOV [DI],AH
                INC DI
                MOV [DI],AL

end
