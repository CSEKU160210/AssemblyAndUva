;#UVA PRBLM  12992

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
             MOV B,2  
      CALL SCAN_NUM
      MOV BX,CX
      mov a,0
      PRINTN
      
      WHILE:
           CMP BX,A
           JE EXIT 
           
           CALL SCAN_NUM
           MOV AX,CX
           PRINTN
           
           MUL B
           SUB AX,1
           MOV DX,AX 
            INC A
           
           PRINT "Case #" 
            MOV AX,A
            CALL PRINT_NUM
            PRINT ":"
            MOV AX,DX
            CALL PRINT_NUM 
            PRINTN
           
            JMP WHILE
           
      
     
                 EXIT:
                 MOV AH,4CH
                 INT 21H        
   
   MAIN ENDP

 DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
END MAIN
        