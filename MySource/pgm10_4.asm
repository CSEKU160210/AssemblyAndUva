.model small
.stack 100h
.data

five dw 5

scores dw 67,45,98,33
       dw 70,56,87,44
       dw 82,72,89,40
       dw 80,67,95,50
       dw 78,76,92,60
       
avg    dw 5 dup(0)
.code
main proc
    mov ax,@data
    mov ds,ax
    mov si,6
    
REPEAT:
    mov cx,5
    xor bx,bx
    xor ax,ax
    
FOR:
    add ax,scores
    add bx,8
    loop FOR
    
    xor dx,dx
    div FIVE
    mov avg[si],ax
    sub si,2
    jnl REPEAT
    mov ah,4ch
    int 21h
main endp
end main