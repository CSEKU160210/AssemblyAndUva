org 100h
.data
   st dw "hello"
   b dw 10,10,10,10
     dw 20,20,20,20 
     dw 30,30,30,30
     dw 40,40,40,40
.code
   
main proc 
    mov ax,@data
    mov ds,ax 
    xor ax,ax
    lea si,b
    mov cx,3
    addons:
    add ax,[si]
    add si,2
    loop addons
    
    mov dx,ax
    ;sub dx,48 
    mov ah,2
    int 21h
    ret 
    main endp
    end main