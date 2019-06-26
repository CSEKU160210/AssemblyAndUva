;#UVA PRBLM 1124

.MODEL SMALL
.STACK 100H  
.DATA
char db 30 DUP(?)
;ARRAY1 DB 100 DUB(?)
A DB 0
COUNT DB 0
.CODE
MAIN PROC   
    STRT:
    MOV AX,@DATA
    MOV DS,AX     ;DATA INITIALIZATION
    
    
    INCLUDE 'EMU8086.INC'
    ;FOR USER INPUT
    
   
             
             
            XOR CX,CX
            XOR BX,BX   ;CLEAR REGISTER
            XOR AX,AX
             XOR DX,DX 
             
             MOV BX,0
             
            Input:        ;get the string
                 mov ah, 1  ;input
                 int 21h
                cmp al, 13 
                 
                je after    ;if enter then exit

                mov char[bx], al
                    inc bx      ;bx++
                 jmp Input   ;jumpt to input

          after:
                mov si, 0  ;si=0
                    printn     ;newline
         Output:       ;output
              cmp si, bx ;si=bx then exit
              je exit
              mov dl, char[si]
              mov ah, 2
             int 21h
              inc si      ;si++
             jmp output    
             
           
     
                 EXIT:
                 MOV AH,4CH
                 INT 21H        
   
   MAIN ENDP

 DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
END MAIN
        