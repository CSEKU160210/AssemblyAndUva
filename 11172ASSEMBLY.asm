;UVA 11172

.MODEL SMALL
.STACK 100H
.DATA
A DW 0
B DW 0
.CODE  
MAIN PROC
    
    
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
                                            
       PRINTN "ENTER THE VALUE OF A"                            
    
    CALL SCAN_NUM  ; TAKE THE VALUE OF V AND IT STORES THE VALUE IN CX
    
       MOV AX,CX  ;AX=CX=A      
     
      
      PRINTN "ENTER THE VALUE OF B" 
      
      CALL SCAN_NUM 
     MOV BX,CX    ;BX=CX=B
      
      ;COMPARE V AND T WITH 0;IF EQUAL THEN EXIT;OTHERWISE JUMP PRINT FOR PRINT
      
     CMP AX,BX
     JE PRINT3
      JG PRINT2
      JL PRINT1
      
      PRINT1:
      PRINTN "<"
      JMP EXIT 
      
      PRINT2:
      PRINTN ">"
      JMP EXIT
    
     
     PRINT3:
     PRINTN "="
     JMP EXIT 
    
     
     
     
     
     
     
     
     
     EXIT:
     
         MOV AH,4CH
         INT 21H 
         
END MAIN
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
      
      
    
    
    