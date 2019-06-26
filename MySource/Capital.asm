org 100h 
.data
prompt db 'Type a line of text:',0dh,0ah,'$'
nocap_msg db 0dh,0ah,'no capitals$'
cap_msg db 0dh,0ah,'first capital = ' 
first db ']'
      db ' last capital = '
last db '@ $'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,prompt
    int 21h

mov ah,1
int 21h

while:
cmp al,0dh
je end_while

cmp al,'A'
jnge end_if 
cmp al,'Z'
jnle end_if

cmp al,first
jnl check_last
mov first,al

check_last:
cmp al,last
jng end_if
mov last,al

end_if:
int 21h
jmp while

end_while:
   mov ah,9
   cmp first,']'
   jne caps
   
   lea dx,nocap_msg
   jmp display
   
caps:
   lea dx,cap_msg
   
display:
   int 21h
   mov ah,4ch
   int 21h
   
main endp
end main
   