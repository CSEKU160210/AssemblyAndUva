;UVA PRBLM 11854

.MODEL SMALL
.STACK 100H
.DATA
A DW 0
B DW 0  
C DW 0
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
    
   ; PRINTN "ENTER A"
    
    CALL SCAN_NUM
    
    MOV AX,CX
    ADD A,AX
    IMUL A
    MOV A,AX
    CMP A,0  ;A==0 THEN EXIT
    JE EXIT
    XOR AX,AX
    
    ;PRINTN "ENTER B"
    CALL SCAN_NUM
    MOV AX,CX
    ADD B,AX
    IMUL B
    MOV BX,AX
     
    CMP BX,0
    JE EXIT
    XOR AX,AX
    
    ADD BX,A 
    
    
     
    ;PRINTN "ENTER C"
    CALL SCAN_NUM
    MOV AX,CX
    ADD C,AX
    IMUL C
    MOV DX,AX
    
    CMP DX,0
    JE EXIT
    XOR AX,AX
    
    
    CMP BX,DX ;C2==A2 *B2
    JE PRINTR
    
    PRINTN "WRONG"
    JMP EXIT
    
    PRINTR:
    PRINTN "RIGHT"
    
    
  
     
     EXIT:
     
         MOV AH,4CH
         INT 21H 
         
END MAIN
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
      
      
    
    
    