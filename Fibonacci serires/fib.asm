.model small
.stack 64
.data
.code

start:
mov ax,@data
mov ds,ax

mov cl,05h
mov al,00h
mov si,2000h
mov [si],al
dec cl
jz l2
mov al,01h
inc si
mov [si],al
inc si
dec cl
jz l2
l1:
mov al,00h
add al,[si-0001h]
add al,[si-0002h]
mov [si],al
inc si
dec cl
jz l2
jmp l1


l2:

mov ah,4ch
int 21h
end start
.end