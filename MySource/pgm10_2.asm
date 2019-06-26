select proc
    push bx
    push cx 
    push dx
    push si
    dec bx
    je END_SORT
    mov dx,si
                     
SORT_LOOP:
    mov si,dx
    mov cx,bx
    mov di,si
    mov al,[di]
    
FIND_BIG:
    inc si
    cmp [si],al
    jng NEXT
    mov di,si
    mov al,[di]
    
NEXT:
    loop FIND_BIG
    call SWAP
    dec bx
    jne SORT_LOOP
    
END_SORT:
    pop si
    pop dx
    pop cx
    pop bx
    
    ret
    
select endp
swap proc
    
    push ax
    mov al,[si]
    xchg al,[di]
    mov [si],al
    pop ax
    ret
    
swap endp