.model small
.stack 64
.data
.code

start:
mov ax,@data
mov ds,ax

mov cl,05h
mov si,3000h
mov al,[si]
inc si
dec cl
jz l3
l2:
cmp al,[si]
jnc l1
inc si
dec cl
jz l3
jmp l2
l1:
mov al,[si]
inc si
dec cl
jz l3
jmp l2
l3:


mov ah,4ch
int 21h
end start
.end