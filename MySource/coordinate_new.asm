.model small
.stack 100h
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
    
    ;check sign
    cmp al,'-'
    je minus
     
    cmp al,9
    jne inputprocess
    je process
    
    minus:
    ;mov sign,al
    jmp inputprocess
    
    inputprocess:;converting into number
    mov ah,0
    mov bx,ax
    sub bx,48
    mov ax,sum   ;mov sum into ax for multiply operation
    mul b
    mov sum,ax
    add sum,bx
    jmp input
    
    process:
    mov ah,1
    int 21h    
    ;check sign
    cmp al,'-'
    je inputprocess
    mov ah,2     ;new line
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ax,sum   ;move to ax for div operation
    
    endprocess:
    mov dx,0
    div b
    mov cx,dx
    push cx      ;push the remainder into stack
    inc count    ;count push time
    
    cmp ax,0
    jne endprocess
    je printoutput
    
    printoutput:
    cmp sign,'-' ;check sign
    je printminus
    pop cx       ;get the last value of stack
    mov dx,cx
    mov ah,2
    add dx,48
    int 21h
    
    dec count
    cmp count,0
    jne printoutput
    je newline
    
    printminus:
    MOV AH,2
    mov dl,'-'
    int 21h
    mov sign,0   ;sign refresh
    jmp printoutput
    
    newline:
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,4ch ;return to DOS
    int 21h
    main endp
end main
    
    
    
    
    
    
    
    
    
    









