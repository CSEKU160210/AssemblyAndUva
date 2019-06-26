;UVA PRBLM 10071

.MODEL SMALL
.STACK 100H
.DATA
V DW 0
T DW 0
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
    
    MOV BX,2                               
                                   
      ; PRINTN "ENTER THE VALUE OF V"                            
    
    CALL SCAN_NUM  ; TAKE THE VALUE OF V AND IT STORES THE VALUE IN CX
    
    printn
    
       MOV AX,CX        
      ADD V,AX  ;V =V+AX
      
      ;PRINTN "ENTER THE VALUE OF T" 
      
      CALL SCAN_NUM  
      printN
     MOV T,CX
      
      ;COMPARE V AND T WITH 0;IF EQUAL THEN EXIT;OTHERWISE JUMP CALCULATION FOR DISTANCE
      
     CMP AX,0
     JE EXIT
    
     JMP CALCULATION
     
     CMP T,0
     JE EXIT
     
     JMP CALCULATION 
     
     CALCULATION:
                MUL T 
                MUL BX
                
                ;PRINT " SHORTEST DISTANCE:"
                
             CALL PRINT_NUM
                
     
     
     
     
     
     
     
     
     EXIT:
     
         MOV AH,4CH
         INT 21H 
         JMP STRT
         RET
;
END MAIN
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
      
      
    
    
    