org 100h

.data

num1 db ?
num2 db ?
res db ?

.code
main proc

mov ah,1
int 21h
sub al,48
mov num1,al

mov ah,1
int 21h
sub al,48
mov num2,al

mul num1
mov res,al

mov al,2
mul res

add al,48
mov dl,al
mov ah,2
int 21h

ret