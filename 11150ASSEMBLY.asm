;UVA PRBLM 11150
.MODEL SMALL
.STACK 100H
.DATA
A DW 0
T DW 0
.CODE  
MAIN PROC
    
   
    MOV AX,@DATA  ;DATA SEGMENT INITIALIZE
    MOV DS,AX
               
    INCLUDE 'EMU8086.INC'
    
    ;FOR USER INPUT

    
    XOR CX,CX
    XOR AX,AX
    XOR BX,BX  ;O ASIGN ALL THE RESISTER
              
   CALL SCAN_NUM      ;N==AX
   
   MOV AX,CX
   XOR CX,CX 
     PRINTN
     MOV A,AX
         
     MOV BX,3     ;BX ==3
         
     WHILE:    
          CMP AX,BX
          JGE CALCULATION
          JMP IF
     
   CALCULATION:
              XOR DX, DX
              DIV BX
              ADD A,AX
              ADD AX,DX
             JMP WHILE
   IF:
     CMP AX,2
     JE LOOP1  
     JMP PRINT
     
   LOOP1:
     INC A
     JMP PRINT
     
   PRINT:
      MOV AX,A
      CALL PRINT_NUM
   
              
               
 
     
     EXIT:
     
         MOV AH,4CH
         INT 21H
        
       
     MAIN ENDP
             
    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS  
    
END MAIN
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
      
      
    
    
    