;UVA PRBLM 10346

.MODEL SMALL
.STACK 100H  
.DATA
A DW 0
N DW 0 
B DW ?
R DW ?
K DW ?
.CODE
MAIN PROC   
    
    MOV AX,@DATA
    MOV DS,AX     ;DATA INITIALIZATION
    
    
    INCLUDE 'EMU8086.INC'
    ;FOR USER INPUT
    
    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
             
             ;XOR B,B
             ;XOR R,R
            XOR CX,CX
            XOR BX,BX 
            XOR AX,AX
             XOR DX,DX 
             
             PRINTN "ENTER VALUE N:"
             
    CALL SCAN_NUM  ;IT STORES THE VALUE IN CX
    
    MOV ax,CX  ;SCANF THE VALUE OF N 
    ADD N,AX 
    ADD A,AX
        PRINTN "ENTER VALUE K:"
        
    
    CALL SCAN_NUM
    MOV CX,CX   ;SCANF THE VALUE OF K 
    
    WHILE:
    CMP N,CX
    JGE LOOP1
   JMP POPOUT
    
    LOOP1:
         DIV CX  
         MOV B,AX
         
         MOV R,DX
         
         ADD AX,B 
       
         
         ADD DX,B
         MOV N,DX
         
         JMP WHILE
      
         
   POPOUT:
       ;
        ;MOV AH,2
        ;ADD AX,48
        ;MOV DX,AX
         call print_num
        ;INT 21H
    
    
 
        
   
  ; MAIN ENDP
END MAIN
        