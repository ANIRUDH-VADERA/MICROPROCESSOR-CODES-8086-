.model small
.stack

.code
MOV SI,2000H
MOV CH,[SI] ; No of elements
DEC CH

L4:
    MOV SI,2000H
    MOV CL,[SI] ; No of Iterations for each element
    DEC CL
    MOV SI,2501H

L1:
    MOV AL,[SI] ; Starting location of array + 1
    CMP AL,[SI - 01H]
    JNC L3
    INC SI
    DEC CL
    JZ L2
    JMP L1

L3:
    MOV AH,[SI-01H]
    MOV [SI-01H],AL
    MOV [SI],AH
    DEC CL
    JZ L2
    JMP L1

L2:
    DEC CH
    JZ  L5
    JMP L4

L5:
end
