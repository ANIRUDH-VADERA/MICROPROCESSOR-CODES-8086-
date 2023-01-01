.model small
.stack 64
.data
.code

start:
mov ax,@data
mov ds,ax
; descending sort
mov ch,05h
l4:

mov cl,05h
mov si,3001h
l1:
mov al,[si]
cmp al,[si-01h]
jnc l3

inc si
dec cl
jz l2
jmp l1

l3:
mov ah,[si-01h]
mov  [si-01h],al
mov [si],ah


dec cl
jz l2
jmp l1
l2:

dec ch
jz l5
jmp l4

l5:
mov ah,4ch
int 21h
end start
.end