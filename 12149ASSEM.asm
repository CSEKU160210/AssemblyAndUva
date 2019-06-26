;UVA PRBLM 12149

.MODEL SMALL
.STACK 100H
.DATA
N DW 0
N1 DW 0
TEMP DW 0
N2 DW 0
A DW 0
B DW 0
I DW 0

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
     
    
    MOV A,2 
    MOV B,6
    CALL SCAN_NUM
    MOV AX,CX
    ADD N,AX
    ADD N1,AX
    PRINTN 
    
    CMP AX,0
    JE EXIT
    
     FIRSTCAL:   ;N*(N+1)
    ADD N,1
    MUL N
     mov bx,AX
     
    SECONDCAL:
           MOV AX,N1
           MUL A       ;N*2+1
           ADD AX,1
          
     
     THIRDCAL:
            MUL BX
            
            
    FINALCAL:
             DIV B
             CALL PRINT_NUM
             PRINTN
             XOR AX,AX
             
             JMP STRT
             
    
    
     EXIT:
     
         MOV AH,4CH
         INT 21H 
        
END MAIN
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
      
      
    
    
    