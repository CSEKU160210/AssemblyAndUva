;#UVA PRBLM 10055

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
              
              CMP DX,BX     ;DX>BX
              JG DIFFER      ;JUMP DIFFER
              JMP DIFFER1
              
              DIFFER:
                    SUB DX,BX    ;DX=DX-BX
                    MOV AX,DX    ;AX=DX
                    JMP PRINT
              DIFFER1:
                     SUB BX,DX
                     MOV AX,BX     ;BX=BX-DX
                                    ;AX=BX
                     
                     
                     
              
              PRINT:
                   CALL PRINT_NUM   ;PRINT AX
             
                     PRINTN
                 JMP STRT
             
           
     
                 EXIT:
                 MOV AH,4CH
                 INT 21H        
   
   MAIN ENDP

 DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
END MAIN
        