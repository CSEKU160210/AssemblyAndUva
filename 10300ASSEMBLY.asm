;UVA PRBLM 10300

.MODEL SMALL
.STACK 100H
.DATA
V DW 0
T DW 0
ANS DW 0
.CODE  
MAIN PROC
    
    STRT:
    MOV AX,@DATA  ;DATA SEGMENT INITIALIZE
    MOV DS,AX
               
    INCLUDE 'EMU8086.INC'
    
    ;FOR USER INPUT
    
    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS  
    
    
    
    XOR CX,CX
    XOR AX,AX
    XOR BX,BX  ;O ASIGN ALL THE RESISTER
    XOR DX,DX
    
    CALL SCAN_NUM
    MOV V,CX 
    PRINTN
    COMP:
    CMP V,0
    JE PRINT
    JMP CALCULATION
       CALCULATION:                  
                                   
       ;PRINTN "ENTER THE VALUE OF A"                            
    
    CALL SCAN_NUM  ; TAKE THE VALUE OF V AND IT STORES THE VALUE IN CX
    
       MOV AX,CX 
       PRINTN       
      
      
     ; PRINTN "ENTER THE VALUE OF B" 
      
      CALL SCAN_NUM 
     MOV BX,CX
     PRINTN 
     ; PRINTN "ENTER THE VALUE OF C"       
     
     CALL SCAN_NUM
     MOV DX,CX 
     PRINTN  
     
     
     IMUL DX ;AX=AX*DX=A*C
     ADD ANS,AX
     DEC V
     JMP COMP
     
     PRINT:
      
          MOV AX,ANS
          CALL PRINT_NUM
          JMP EXIT
  
      JMP STRT
     
     
     
     
     
     EXIT:
     
         MOV AH,4CH
         INT 21H 
         JMP STRT
         RET
;
END MAIN
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
      
      
    
    
    `   