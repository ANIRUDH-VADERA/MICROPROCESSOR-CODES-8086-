.model small
.stack 64
.data
.code

start:
mov ax,@data
mov ds,ax

mov cx,0005h
mov ax,0001h
l2:
mul cx
dec cx
jz l1
jmp l2
l1:

mov ah,4ch
int 21h
end start
.end