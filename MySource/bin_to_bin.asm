org 100h
.code
main proc
    xor bx,bx
    mov ah,1
    int 21h
    
    while:
    cmp al,0dh
    je end_while
    and al,0fh
    shl bx,1
    or bl,al
    int 21h
    jmp while
    
    end_while:
    
    