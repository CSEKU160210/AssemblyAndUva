;10783 - Odd Sum

.MODEL SMALL
.STACK 100H
.DATA
A DW 0
N DW 0
B DW 0
I DW 0
J DW 0
SUM1 DW 0 
PUT DW 0
COUNT DW 0

.CODE

MAIN PROC 
    MOV AX,@DATA  ;DATA SEGMENT INITIALIZE
    MOV DS,AX
               
    INCLUDE 'EMU8086.INC'
    
    ;FOR USER INPUT
    XOR AX,AX
    XOR BX,BX
    XOR CX ,CX
    XOR DX,DX  
    
    MOV B,2
    
    CALL SCAN_NUM   ;INPUT TESTCASE
    MOV DX,CX
    PRINTN 
     ADD N,DX
    MOV I,1
    
    FOR1:
       CMP N,1
       JE EXIT
    
    CALL SCAN_NUM ; input a
    MOV BX,CX
    ADD PUT,BX 
    
    PRINTN
    
    CALL SCAN_NUM  ;input b
    MOV CX,CX  
    printn
    
   FOR:
      
      CMP PUT,CX
      JLE CAL
       JMP PRINTF
    
    CAL:
        XOR DX,DX
        XOR AX,AX
        ADD AX,PUT
      DIV B
      CMP DX,0
      JNE SUM
       INC PUT
       XOR BX,BX
       ADD BX,PUT
       JMP FOR
       
    SUM:
       ADD COUNT,BX
       INC PUT
       XOR BX,BX
       ADD BX,PUT
       JMP FOR
       
   PRINTF:
        XOR AX,AX
        MOV AX,COUNT
        CALL PRINT_NUM
        DEC N
        JMP FOR1
    EXIT:
    
   
MAIN ENDP
  
    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS  
    END MAIN



                                                       
                                                       