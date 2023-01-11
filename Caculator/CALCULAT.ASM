.model small
.stack

.code
;Starting of the Code
MOV SI,2500H
MOV CL,[SI]
;01H ADD(OPERAND1 - 8Bit OPERAND2 - 8Bit)
;02H SUBTRACT(OPERAND1 - 8Bit OPERAND - 8Bit)
;03H MULTIPLICATION(OPERAND1 - 8Bit OPERAND - 8Bit)

;11H ADD(OPERAND1 - 16Bit OPERAND2 - 16Bit)
;12H SUBTRACT(OPERAND1 - 16Bit OPERAND2 - 16Bit)
;13H MULTIPLICATION(OPERAND1 - 16Bit OPERAND - 16Bit)

;14H DIVISION(OPERAND1 - 16Bit OPERAND2 - 8Bit)
;15H DIVISION(OPERAND1 - 32Bit OPERAND2 - 16Bit)

MOV AX,0000H
MOV BX,0000H

MOV SI,2000H
CMP CL,10H
JC INPUT_8_Bit
JMP INPUT_16_Bit

;8 Bit Input
INPUT_8_Bit:
        MOV AL,[SI]
        INC SI
        MOV BL,[SI]
        JMP CHECK
;16 Bit Input
INPUT_16_Bit:
        MOV AX,[SI]
        INC SI
        INC SI
        MOV BX,[SI]
        JMP CHECK
        
CHECK:
        CMP CL,01H
        JE ADD_8_BIT
        CMP CL,02H
        JE SUB_8_BIT
        CMP CL,03H
        JE MUL_8_BIT
        CMP CL,11H
        JE ADD_16_BIT
        CMP CL,12H
        JE SUB_16_BIT
        CMP CL,13H
        JE MUL_16_BIT
        CMP CL,14H
        JE DIV_16_8_BIT
        CMP CL,15H
        JE DIV_32_16_BIT
        JMP PRO_END

ADD_8_BIT:
        ADD AL,BL
        MOV DI,3000H
        MOV [DI],AL
        JMP PRO_END
ADD_16_BIT:
        ADD AX,BX
        MOV DI,3000H
        MOV [DI],AH
        INC DI
        MOV [DI],AL
        JMP PRO_END
SUB_8_BIT:
        SUB AL,BL
        MOV DI,3000H
        MOV [DI],AL
        JMP PRO_END
SUB_16_BIT:
        SUB AX,BX
        MOV DI,3000H
        MOV [DI],AH
        INC DI
        MOV [DI],AL
        JMP PRO_END
MUL_8_BIT:
        MUL BL
        MOV DI,3000H
        MOV [DI],AH
        INC DI
        MOV [DI],AL
        JMP PRO_END
MUL_16_BIT:
        MUL BX
        MOV DI,3000H
        MOV [DI],DH
        INC DI
        MOV [DI],DL
        INC DI
        MOV [DI],AH
        INC DI
        MOV [DI],AL
        JMP PRO_END
DIV_16_8_BIT:
        MOV SI,2000H
        MOV AX,[SI]
        INC SI
        INC SI
        MOV BL,[SI]
        DIV BL
        MOV DI,3000H
        MOV [DI],AX
        JMP PRO_END
DIV_32_16_BIT:
        MOV SI,2000H
        MOV DX,[SI]
        INC SI
        INC SI
        MOV AX,[SI]
        INC SI
        INC SI
        MOV BX,[SI]
        DIV BX
        MOV DI,3000H
        MOV [DI],DX
        INC DI
        INC DI
        MOV [DI],AX
        JMP PRO_END



PRO_END:
end
