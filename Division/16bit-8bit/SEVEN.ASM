.model small
.stack

.code
mov SI,3000H
mov AX,[SI]
INC SI
INC SI
mov BL,[SI]
idiv BL
mov DI,3200H
mov [DI],AX

end
