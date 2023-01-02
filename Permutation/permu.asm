.model small
.stack 64
.data
.code

start:
mov ax,@data
mov ds,ax

mov al,01h
mov cl,05h ; n
mov ch,03h ; r
mov bh,cl
mov bl,cl
sub cl,ch
sub bl,cl
mov cl,bl
mov bl,bh
jz l1

l2:
mul bl
dec bl
dec cl
jz l1
jmp l2

l1:
mov ah,4ch
int 21h
end start
.end