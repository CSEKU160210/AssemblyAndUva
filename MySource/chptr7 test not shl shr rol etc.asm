;org 100h

;mov ax,0fh;0fh=00001111

;not ax    ;complement ax

;mov dx,ax
;mov ah,2
;int 21h   ;11110000

;ret
 
  
;org 100h

;mov ax,0Dh;04h=0100

;shr ax,1    ;1000,a 0 is shifted into 
             ;the rightmost bit position

;mov dx,ax
;mov ah,2
;int 21h   ;1000

;ret


;org 100h

;mov ax,12h;07h=0111

;shr ax,1  ;1000,a 0 is shifted into 
          ;the leftmost bit position

;mov dx,ax
;mov ah,2
;int 21h   ;0011

;ret

; shl=input*2 & shr=input/2,
;if input is odd 
;nmbr the output is the integr of 
;the fraction



;org 100h

;mov dh,8Ah;04h=0100
;mov cl,3

;shl dh,cl    ;1000,a 0 is shifted into the
;              rightmost bit position

;mov bh,dh
;mov dl,bh
;mov ah,2
;int 21h   ;1000

;ret
 
  
;org 100h

;mov ax,03h   ;04h=0100
;mov cl,2     ;2 to the power cl ,cl,2=4

;sal ax,cl    ;multiplies ax with 4

;mov dx,ax
;mov ah,2
;int 21h      ;3*4=12

;ret
               
               
               
;org 100h

;mov ax,0Eh   ;0E=14

;mov cl,2     ;2 to the power cl ,cl,2=4

;sar ax,cl    ;divides ax with 4

;mov dx,ax
;mov ah,2
;int 21h      ;14/4=3

;ret


org 100h

mov al,192d ;192d=11000000

mov cl,1     ;two bit from left side is 
             ;shifted to left side 

shr al,cl    
              ;10111011 ;11011101
mov dl,al
mov ah,2
int 21h      ;00000011

;ret




;org 100h

;mov al,192d  ;192d=11000000

;mov cl,2     ;two bit from left side is 
             ;shifted to left side 

;rcl al,cl    

;mov dl,al
;mov ah,2
;int 21h      ;00110000

;ret
                  