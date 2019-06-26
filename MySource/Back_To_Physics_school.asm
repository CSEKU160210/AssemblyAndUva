


org 100h

.data

v db ?
t db ?
res db ?

.code 
main proc
    mov ah,1 
    int 21h    
    sub al,48
    mov v,al 
    
    mov dl,10
    mov ah,2
    int 21h
  
    mov dl,13
    mov ah,2
    int 21h
    
    mov ah,1 
    int 21h
    sub al,48
    mov t,al 
    
    mul v 
    
    mov res,al
    mov al,2
    
    mul res 
        
    mov dl,al
    add dl,48
        
    mov ah,2
    int 21h
    
    ret