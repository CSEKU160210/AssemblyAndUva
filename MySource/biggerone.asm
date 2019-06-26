org 100h

mov bx,3
mov cx,4

cmp bx,cx 

jg nxt

add cx,48
mov dx,cx 
mov ah,2
int 21h
jmp end 

nxt:
mov cx,bx
add cx,48 
mov ah,2
int 21h

end:
ret