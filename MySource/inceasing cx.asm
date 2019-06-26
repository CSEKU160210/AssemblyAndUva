org 100h

mov cx,0
mov ah,1
int 21h

while:
cmp al,0dh 
je endwhile

inc cx
int 21h
jmp while

endwhile:
mov ah,2
mov dl,13
int 21h
mov dl,10
int 21h
mov dx,cx
add dx,48
int 21h

ret
