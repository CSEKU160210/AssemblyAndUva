;UVA PRBLM 10970

.MODEL SMALL
.STACK 100H
.DATA
M DW 0
N DW 0
A DW 0
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
    
    MOV N,11
    
    CALL SCAN_NUM
    ADD A,CX
    MOV M,CX
    
    PRINTN
    CMP M,0
    JE EXIT
    JMP CALCULATION
    
    CALCULATION:
              MOV AX,M
               DIV N
               CMP DX,0
               JE PRINT1
               JNE PRINT2
               
    PRINT1:
       XOR DX,DX
       XOR AX,AX
       MOV AX,A
      CALL PRINT_NUM
      PRINTN "IS A MULTIPLE OF 11."  
      
      JMP STRT
              
    PRINT2:
    XOR DX,DX
    XOR AX,AX
      MOV AX,A
      CALL PRINT_NUM
      PRINTN " :IS NOT A MULTIPLE OF 11."
      
      
     
                 JMP STRT
        
     
     
     
     
     EXIT:
     
         MOV AH,4CH
         INT 21H 
       
;
END MAIN
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
      
      
    
    
    