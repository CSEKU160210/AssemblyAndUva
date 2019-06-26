;Triangle

org 100h 
.data
inval db 'Invalid',10,13,'$'
equileteral db 'Equilateral',10,13,'$'
isosceles db 'Isosceles',10,13,'$'
scalene db 'Scalene',10,13,'$'


.code
main proc 
    mov ax,@data
    mov ds,ax
    call scan
    XOR cx,cx
    mov ch,dl
    cases:
    PUSH cx
    call scan
    mov bh,dl
    call scan
    mov bl,dl
    call scan 
    mov ch,dl 
    
    mov cl,bh   
    add cl,bl
    cmp cl,ch
    jl invalid 
    mov cl,bl
    add cl,ch
    cmp cl,bh
    jl invalid
    mov cl,bh
    add cl,ch
    cmp cl,bl
    jl invalid    ;end of invalid
    
    cmp bh,bl
    jne nequal
    cmp bh,ch 
    je equal
    jne iso
    
    nequal:  
    cmp bh,ch
    je iso
    cmp bl,ch
    je iso
    jne scal
    
    
    
    invalid:
    lea dx,inval
    mov ah,9
    int 21h
    jmp next
    
    equal:
    lea dx,equileteral
    mov ah,9
    int 21h
    jmp next
    
    iso:  
    lea dx,isosceles
    mov ah,9
    int 21h
    jmp next 
    
    scal:
    lea dx,scalene
    mov ah,9
    int 21h
    jmp next 
    
    
    next:
    POP cx
    LOOP cases

ret 
main endp  

scan proc       
    mov dx, 0
    input:
    mov ah, 1
    int 21h  
    cmp al, ' '
    je exit
    cmp al, 13
    je exit
    push ax
    mov al, 10
    mul dl
    mov dl, al
    pop ax
    sub al, '0'
    add dl, al
    jmp input
    exit: 
    ret
scan endp

output proc
    xor cx, cx
    1st:
    cwd 
    mov bx, 10
    idiv bx
    push dx
    inc cx
    cmp ax, 0
    jg 1st
    
    2nd:
    pop dx 
    add dx, '0'
    mov ah, 2
    int 21h
    loop 2nd  
    ret
output endp




