org 100h

s:
mov dl,10
mov ah,2
int 21h
  
mov dl,13
mov ah,2
int 21h

mov ah,1
int 21h
mov bl,al 
sub bl,48

mov dl,10
mov ah,2
int 21h
  
mov dl,13
mov ah,2
int 21h

mov ah,1
int 21h
mov cl,al
sub cl,48

sub bl,cl 

mov dl,10
mov ah,2
int 21h
  
mov dl,13
mov ah,2
int 21h

add bl,48
mov dl,bl 
mov ah,2
int 21h

jmp s

ret