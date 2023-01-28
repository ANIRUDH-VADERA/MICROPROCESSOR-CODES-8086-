.model small
.stack

.code
mov SI,3000H
mov AX,[SI]
INC SI
INC SI
mov BX,[SI]
mul BX
mov SI,3200H
mov [SI],AX
INC SI
INC SI
mov [SI],DX

end
