org 100h
.data
   w dw 10,20,30,40
   arry1 dw 1,2,3,4,5 
   arry2 db 5,4,3 dup(2,3 dup(0),1)
   arry3 db 5 dup(4)   
.code
   
main proc
    xor ax,ax
    lea si,w
    mov cx,4
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