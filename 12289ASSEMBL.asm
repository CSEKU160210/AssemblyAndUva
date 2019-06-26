;#UVA PRBLM 1124

.MODEL SMALL
.STACK 100H  
.DATA
char db 30 DUP(?)
;ARRAY1 DB 100 DUB(?)
A DB 0
COUNT DB 0 
COUNT1 DB 0
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
              MOV COUNT,0
              
            Input:        ;get the string
                 mov ah, 1  ;input
                 int 21h
                cmp al, 13 
                 
                je after    ;if enter then exit

                mov char[bx], al
                    inc bx
                   
                    INC COUNT 
                     PRINTN     
                 jmp Input   ;jumpt to input

          after:
              CMP COUNT,5
              JE PRINT3
                 
                 XOR BX,BX
                 MOV BX,0
              MOV AL,CHAR[BX]
              CMP AL,'O'
              JE L2
               
                 INC BX
                
                 MOV AL,0
                 MOV AL,CHAR[BX]
                 CMP AL,'N'
                 JE L2
                 INC BX
                 MOV AL,0
                 MOV AL,CHAR[BX]
                 CMP AL,'E'
                 JE L2 
                 JMP IF
            L2:
              INC COUNT1
              
            IF:
             CMP COUNT1,2
             JGE PRINT1
             JNGE PRINT2 
               JMP EXIT
               
          PRINT1:
              PRINTN "1"
              JMP EXIT
              
          PRINT2:
          PRINTN "2"
          JMP EXIT
          
          PRINT3:
          PRINTN "3"
          JMP EXIT    
            
            
                 
     
                 EXIT:
                 MOV AH,4CH
                 INT 21H        
   
   MAIN ENDP

 DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
END MAIN
        