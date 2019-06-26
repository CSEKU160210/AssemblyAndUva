org 100h
    .data
    
    input db 20 dup("$");51,52 dup(0)
    msg db 'Enter the input:$ '
    pal db 'pallindrome$'
    notpal db 'notpallindrome$'
    
    .code
    
    lea dx,msg
    mov ah,9
    int 21h
    
    lea dx,input
    mov ah,10 ;to read characters from keyboard
    int 21h 
    
    mov ah,2
    mov dl,13
    int 21h
    mov dl,10
    int 21h
    
    lea bx,input ; put the starting address of input in bx
    mov al,[bx+1]
    mov ah,0
    add bx,ax
    
    inc bx ; reached the last character of string
    
    lea si,input 
    add si ,2  ;starting address of the string 
       ;si => starting address
       ;bx => ending address
    mov ch,0
    mov cl,[si-1] ;size is copied to counter  
    
    cmp cx,1     ; compaire the string size with 1
    je pallindrome 
    
    shr cx,1 ;divide the size by 2 
               
               
    compare:
    mov al,[si]
    cmp [bx],al
    jne not_pallindrome
    
    loop compare
    
    pallindrome:
    lea dx ,pal
    mov ah,9
    int 21h
    
    jmp done
    
    not_pallindrome:
    lea dx,notpal
    mov ah,9
    int 21h
    
    
 done:
    ret 