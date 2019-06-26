;10970 big chocolate

org 100h

.data

n1 db ?
n2 db ?
output db ?

.code

mov ax,@data
mov ds,ax

mov ah,1
int 21h
sub al,30h 
mov n1,al
         
mov ah,2
mov dl,' '
int 21h

mov ah,1
int 21h
sub al,30h
mov n2,al

mul n1
mov output,al

add ah,30h
add al,30h

mov bx,ax
sub bx,1                          
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h
mov ah,2
mov dl,bh
int 21h

mov ah,2
mov dl,bl
int 21h

             
mov ah,4ch
int 21h

ret