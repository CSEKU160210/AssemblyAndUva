;UVA PRBLM 11984

.MODEL SMALL
.STACK 100H  
.DATA
TESTCASE DW 0
CASE DW 0 
C DW 0
D DW 0
F DW 0
M DW 0
N DW 0
P DW 0
Q DW 0
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
             MOV M,9
             MOV N,5
             MOV F,32
             
             
             
       CALL SCAN_NUM
       MOV TESTCASE,CX
       PRINTN
       
       WHILE:
           CMP TESTCASE,0
           JE STRT
           
           CALL SCAN_NUM
           MOV C,CX
           PRINTN
           
           CALL SCAN_NUM
           MOV D,CX
           PRINTN
           
          MOV AX,M
          DIV N
          MOV P,AX
          XOR AX,AX
          XOR DX,DX
          
          MOV AX,P
          MUL C
          MOV BX,AX
          ADD BX,F
          ADD BX,D
          SUB BX,F
          MOV AX,BX
          MUL N
          XOR DX,DX
          DIV M
           
          PRINT "CASE: " 
          CALL PRINT_NUM
          PRINTN
          
          XOR DX,DX
          XOR AX,AX
           
       
       
       
       
             
                   JMP STRT
             
           
     
                 EXIT:
                 MOV AH,4CH
                 INT 21H        
   
   MAIN ENDP

 DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
END MAIN
        