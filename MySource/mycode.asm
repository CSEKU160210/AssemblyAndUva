.model small
.stack 100h
.code
main proc 
    call multiply
    
    mov ah,4ch
    int 21h
main endp

multiply proc
    push ax
    push bx
    mov dx,0
repeat:
    test bx,1 
    jz shifting 
    
    add dx,ax
shifting:
    shl ax,1
    shr bx,1
    
    jnz repeat
    
    pop bx
    pop ax
    
    ret 
    
    
     
     
    
    