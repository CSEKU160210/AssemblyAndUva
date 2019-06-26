org 100h


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

mov dl,10
mov ah,2
int 21h
  
mov dl,13
mov ah,2
int 21h

cmp bl,cl

je box1
jg box2
jl box3


box1:
mov dx,'='
mov ah,2
int 21h
jmp end 

box2:
mov dx,'>'
mov ah,2
int 21h
jmp end 

box3:
mov dx,'<'
mov ah,2
int 21h

end:
ret  

