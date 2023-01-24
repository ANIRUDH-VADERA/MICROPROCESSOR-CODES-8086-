.model small
.stack

.code

mov SI,3000H
mov BX,[SI]
INC SI
INC SI
mov AX,[SI]
INC SI
INC SI
mov DX,[SI]
DIV BX
mov DI,3200H
mov [DI],AX
INC DI
INC DI
mov [DI],DX

end
