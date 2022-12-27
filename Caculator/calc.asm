.model small
.stack 64
.data
.code

start:
mov ax,@data
mov ds,ax

mov si,2000h
mov cl,01h 
;01 add 02 sub 03 mul (04 div not allowed) for 8 bit
;11 add 12 sub 13 mul 14 divfor 16 bit
;result will be in ax (accumulator)
mov ax,0000h
mov bx,0000h

cmp cl,10
jc l11
jmp l12

l10:
cmp cl,01h
jz l1
cmp cl,02h
jz l2
cmp cl,03h
jz l3
cmp cl,04h
jz l4
cmp cl,11h
jz l5
cmp cl,12h
jz l6
cmp cl,13h
jz l7
cmp cl,14h
jz l8
jmp l1


l1:
add al,bl
jmp l9
l5:
add ax,bx
jmp l9

l2:
sub al,bl
jmp l9
l6:
sub ax,bx
jmp l9

l3:
mul bl
jmp l9
l7:
mul bx
jmp l9

l4:
div bl
jmp l9
l8:
div bl
jmp l9


;8 bit input
l11:
mov al,[si]
inc si
mov bl,[si]
jmp l10

;16 but input
l12:
mov ax,[si]
inc si
inc si
mov bx,[si]
jmp l10

l9:
mov ah,4ch
int 21h
end start
.end


; /Users/ayushdwiviedi/dosbox/8086