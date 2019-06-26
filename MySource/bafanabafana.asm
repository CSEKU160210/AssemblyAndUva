org 100h

first:
mov ah,1
int 21h
sub al,48 
mov cl,al


mov ah,1
int 21h
sub al,48
mov bl,al

mov ah,1
int 21h
sub al,48


add bl,al

again:
cmp cl,bl
jg ad
jl nxt

nxt:
sub bl,cl
jmp again

ad:
mov dl,bl
add dl,48
mov ah,2
int 21h 

jmp first

ret