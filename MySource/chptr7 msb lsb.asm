;org 100h

;mov al,8fh ;8f=10001111

;and al,7fh ;clear the sign bit

;mov dl,al
;mov ah,2
;int 21h
;ret  ;00001111 


org 100h

mov al,81h ;80h=10000000

or al,0 ;make msb & lsb 1

mov dl,al
mov ah,2
int 21h
ret  ;10000001 

;org 100h

;mov al,80h ;80h=10000000

;xor al,81h ;complement msb & lsb

;mov dl,al
;mov ah,2
;int 21h
;ret  ;10000000 
