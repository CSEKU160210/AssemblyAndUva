;#UVA PRBLM  13012

.MODEL SMALL
.STACK 100H  
.DATA
A DW 0
N DW 0 
B DW 0
I DW 0
J DW 0
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
             
         call scan_num
         MOV BX,CX
         PRINTN
         MOV A,0
         
         
         CAL:
           CMP BX,A
           JE PRINT1
            INC A
           CALL SCAN_NUM
           MOV DX,CX
           PRINTN 
           
            CMP DX,BX 
             JE LOOP1 
            JMP CAL
         
            
         LOOP1:
            INC J
            JMP CAL
            
            PRINT1:
                 MOV AX,J
                 ;PRINTN
                 CALL PRINT_NUM  
                 PRINTN
           
          
                 EXIT:
                 MOV AH,4CH
                 INT 21H        
   
   MAIN ENDP

 DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
END MAIN
        