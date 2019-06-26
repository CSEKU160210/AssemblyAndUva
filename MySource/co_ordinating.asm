org 100h

.data

msg1 db "it's in first co_ordinate.$"
msg2 db "it's in second co_ordinate.$"
msg3 db "it's in third co_ordinate.$" 
msg4 db "it's in last co_ordinate.$"
msg5 db "it's in +x co_ordinate.$"
msg6 db "it's in -x co_ordinate.$"
msg7 db "it's in +y co_ordinate.$"
msg8 db "it's in -y co_ordinate.$" 
msg9 db "it's in origin.$"
.code

main proc
    
   mov ah,1
   int 21h
   mov bl,al
   sub bl,48
   
   mov ah,1
   int 21h
   mov cl,al
   sub cl,48
   
   cmp cl,0 
   jg tex6
   je tex2
  
   
   tex2:
   cmp bl,0
   je tex5
   jg tex3 
   jl tex4
   tex3: 
   lea dx,msg5
   mov ah,9
   int 21h
   jmp end
   tex4:
   lea dx,msg6
   mov ah,9
   int 21h
   jmp end 
   tex5:
   lea dx,msg9
   mov ah,9
   int 21h
   jmp end 
   tex6:
   cmp bl,0
   jg tex8
   je tex7
   tex7:
   lea dx,msg7
   mov ah,9
   int 21h
   jmp end
   
   tex8:   
   lea dx,msg1
   mov ah,9
   int 21h
   jmp end
   
   end:
   ret
   
   
   