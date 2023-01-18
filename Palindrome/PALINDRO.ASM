.model small
.stack 100H

.data

INPUT DB 255 DUP("$")
OUT1 DB "String is Palindrome", "$"
OUT2 DB "String is not Palindrome", "$"
INMSG DB "Enter the string to be Checked","$"

.code

MOV AX,@DATA
MOV DS,AX

BEGIN:
        LEA DX,INMSG
        MOV AH,09H
        INT 21H

        LEA SI,INPUT

INS:
        MOV AH,01H
        INT 21H
        CMP AL,13
        JE START
        MOV [SI],AL
        INC SI
        JMP INS


START:
        MOV SI,OFFSET INPUT

LOOP1:          
        MOV AX,[SI]
        CMP AL,"$"
        JE CHECK
        INC SI
        JMP LOOP1
CHECK:
        MOV DI,OFFSET INPUT
        DEC SI
        CHECKLOOP:
                CMP SI,DI
                JL PALINOUT
                MOV AX,[SI]
                MOV BX,[DI]
                CMP AL,BL
                JNE NOTPALINOUT
                DEC SI
                INC DI
                JMP CHECKLOOP
PALINOUT:
        LEA DX,OUT1
        MOV AH,09H
        INT 21H
        RET
NOTPALINOUT:
        LEA DX,OUT2
        MOV AH,09H
        INT 21H
        RET

end
