  .model small
.stack 100h
.data
    msg db "Enter a number: $"
    msg2 db "You have entered: $"
    num1 db 0
    num2 db 0
    temp db 0
    ten db 10
    readNum db 0
    t2 db 0
    t1 db 0
.code
    mov ax,@data
    mov ds,ax

    call read
    call endL
    call write


    proc endL
        mov dl,0ah
        mov ah,02h
        int 21h
        ret
    endp

    proc read
        mov dx,offset msg
        mov ah,09h
        int 21h

        mov ah,01h
        int 21h
        mov num1,al

        mul ten
        mov temp,al

        mov dl,temp
        add dl,48
        mov ah,02h
        int 21h

        mov ah,01h
        int 21h
        mov num2,al
        mov dl,num2
        add dl,temp     
        mov readNum,dl
        ret
    endp

    proc write
        mov dx,offset msg2
        mov ah,09h
        int 21h

        mov al,readNum
        mov ah,00
        div ten

        mov t1,ah
        mov t2,al

        mov dl,t1
        add dl,48
        mov ah,02h
        int 21h

        mov dl,t2
        add dl,48
        mov ah,02h
        int 21h
    endp

mov ax,4c00h
int 21h

end 
