.model small
.stack

.code
mov SI,3000H
mov AX,[SI]
INC SI
INC SI
mov BX,[SI]
sub AX,BX
INC SI
INC SI
mov [SI],AX

end 
