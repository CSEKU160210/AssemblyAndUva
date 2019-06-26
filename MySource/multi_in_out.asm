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
    mov ah,1
    int 21h
    
    cmp al,'-'
    je minus 
    
    cmp al,13
    je newline
    jne inputprocess
    
    minus:
    mov sign,al
    jmp input
    
    inputprocess:
    mov ah,0
    mov bx,ax
    sub bx,48
    mov ax,sum
    mul b
    mov sum,ax
    add sum,bx
    jmp input
    
    newline:
    mov ah,2
    mov dx,13
    int 21h
    mov dx,10
    int 21h
    mov ax,sum
    
    ;jmp output
    
    output:
    mov dx,0        
    div b
    mov cx,dx
    push cx
    inc count
    
    cmp ax,0
    je printoutput
    jne output
    
    printoutput:
    cmp sign,'-'
    je printminus
    pop cx
    mov dx,cx
    mov ah,2
    add dx,48
    int 21h
    
    dec count
    cmp count,0
    je newline1
    jne printoutput 
    
    printminus:
    mov ah,2
    mov dx,'-'
    int 21h
    
    mov sign,0
    jmp printoutput
    
    newline1:
    mov ah,2
    mov dx,10
    int 21h
    mov dx,13
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main
    
    
    
    
    