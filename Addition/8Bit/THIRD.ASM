.model small
.stack

.code
mov SI,3000H
mov AL,[SI]
INC SI
mov BL,[SI]
add AL,BL
INC SI
mov [SI],AL

end
