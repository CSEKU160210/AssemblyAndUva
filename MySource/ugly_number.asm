org 100h

.data
msg db 'The 1500th ugly number is 859963392 $'  
.code
main proc 

mov ax,@data
mov ds,ax

lea dx,msg
mov ah,9
int 21h

mov ah,4ch
int 21h
  
ret