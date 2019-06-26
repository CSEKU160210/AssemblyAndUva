;12577 Hajj-e-akbar

org 100h

.data
akbar db 0ah,0dh,'Hajj-e-Akbar $'
azgar db 0ah,0dh,'Hajj-e-Azgar $'
     
.code

mov ax,@data
mov ds,ax  
mov ah,1
int 21h

while:
cmp al,0dh
je end_it
cmp al,'H'
jne check    
mov bh,1
cmp al,'U'
jne check
mov bh,0

check:   
int 21h
jmp while 

end_it:  
mov ah,9
cmp bh,0
jne haji
lea dx,azgar    
jmp show_it

haji:
lea dx,akbar 

show_it:
int 21h

ret




