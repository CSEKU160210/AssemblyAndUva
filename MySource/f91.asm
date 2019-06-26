;10696 f91 

org 100h 

.data
msg1 db 'f91 = 91$'  
msg2 db 'f91 = $'
.code

mov ax,@data
mov ds,ax

start:
mov bl, 0
mov cl, 0
mov dl, '0'

input:
mov al, 10 
mul bl      
mov bl, al  
sub dl, '0' 
add bl,dl

mov ah, 1
int 21h
mov dl, al
cmp dl,0dh
jne input 

cmp bl,101
jle small
lea dx,msg2
mov ah,9
int 21h 
xor ax,ax
mov al,bl
xor cx,cx

division:

cwd
mov bx,10
div bx
push dx
inc cx
cmp ax,0
jg division

output:
pop dx
add dl,'0'
mov ah,2
int 21h
loop output


ret
small:
lea dx,msg1
mov ah,9
int 21h 
ret



