.model small
.code

mov SI,3000H
mov AL,[SI]
INC SI
mov BL,[SI]
mul BL
INC SI
mov [SI],AL
INC SI
mov [SI],AH

end
