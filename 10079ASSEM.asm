;UVA PRBLM 10079

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
    STRT:
    MOV AX,@DATA
    MOV DS,AX     ;DATA INITIALIZATION
    
    
    INCLUDE 'EMU8086.INC'
    ;FOR USER INPUT
    
   
             
             
            XOR CX,CX
            XOR BX,BX      ;CLEAR REGISTER
            XOR AX,AX
             XOR DX,DX 
             MOV BX,2
             
             CALL SCAN_NUM  ;SCAN N
             PRINT
             
             MOV AX,CX 
             ADD A,AX
             
             CMP AX,0
             JE EXIT  ;N<0 BREAK
             
             ADD AX,1 ;ELSE N+1
             
             MUL A     ;N*N+1
             
             DIV BX          ;/2
              
              ADD AX,1   ;+1
              
              PRINTN " "
              
              CALL PRINT_NUM
             
             
                   JMP STRT
             
           
     
                 EXIT:
                 MOV AH,4CH
                 INT 21H        
   
   MAIN ENDP

 DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
END MAIN
        