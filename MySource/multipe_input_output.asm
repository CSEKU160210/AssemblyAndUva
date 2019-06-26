org 100h
.data

b dw 10
sum dw 0
count dw 0
sign db ?

.code

main proc
    mov ax,@data
    mov ds,ax
    
    input:
    int ah,1
    int 21h
    
    cmp al,'-'
    je minus
    
    cmp al,13
    jne inputprocess
    je process
    
    minus:
    mov sign,al
    jmp input
    
    inputprocess:
    mov ah,0
    mov bx,ax
    sub bx,48
    mov ax,sum
    mul b
    add sum,bx
    jmp input
    
    process:
    mov ah,2
    mov dl,13
    int 21h
    mov dl,10
    int 21h
    
    mov ax,sum
    
    cmp ax,0
    je printoutput
    jne endprocess
    
    
    
    
    
    
    