;#UVA PRBLM 12952

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
            XOR BX,BX   ;CLEAR REGISTER
            XOR AX,AX
             XOR DX,DX 
            
             
             CALL SCAN_NUM  ;DX = A
             MOV DX,CX
             PRINTN
         
              CALL SCAN_NUM
              MOV BX,CX     ;BX = B
              PRINTN
              
            CMP DX,BX
            JGE L1
            
            L2:
               MOV AX,BX 
               CALL PRINT_NUM
               JMP EXIT
            L1:
               MOV AX,DX
               CALL PRINT_NUM
               
           
     
                 EXIT:
                 MOV AH,4CH
                 INT 21H        
   
   MAIN ENDP

 DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
END MAIN
        