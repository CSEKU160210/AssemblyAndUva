.model small
.data
    str1 db 13,10,'-Enter String: $'
    str2 db 13,10,'-your reverse string: $'
    t db ? 
    str3 db 100 dup('$')
    str4 db 13,10,'-Your string: $'
.code
main proc
    s:
    mov ax,@data
    mov ds,ax
 ;get string   
    mov ah,9
    lea dx,str1
    int 21h

    mov ah,0ah
    lea dx ,str3
    int 21h
  ;get lenght  
    mov bl,str3+1
    add bl,30h
    mov ah,02h
    mov dl,bl
    int 21h
    mov [di],bl
;print entered string
    mov ah,9
    lea dx,str4
    int 21h

    mov ah,9
    lea dx,str3+2
    int 21h
;print reverse string 
    mov ah,9
    lea dx,str2
    int 21h

    mov cx,0   
    lea si,str3+ [di]
    dec si
    mov cl,[si]
    l1:
    mov ah,02h 
    mov dl,[si]
    dec si
    int 21h
    jne l1
main endp
end