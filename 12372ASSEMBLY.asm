;UVA PRBLM 12372

.MODEL SMALL
.STACK 100H
.DATA
V DW 0
T DW 0
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
              
   CALL SCAN_NUM 
   
   MOV AX,CX 
     PRINTN       ;SCAN L
  ; XOR CX,CX
   
   CALL SCAN_NUM
  
   MOV BX,CX       ;SCAN W
    PRINTN
   ;XOR CX,CX 
   
   CALL SCAN_NUM      ;SCAN H
   PRINTN
  MOV  DX,CX
   
   CMP AX,20      ;IF CONDITION
  JLE  LEVEL1
  JMP PRINT2
  
  LEVEL1:
       CMP BX,20
       JLE LEVEL2 
       JMP PRINT2
       
  LEVEL2:
        CMP DX,20
        JLE PRINT1
        JMP PRINT2
  
  PRINT1:
        PRINTN " CASE 1: GOOD "
        JMP EXIT
  
  PRINT2:
        PRINTN " CASE 1: BAD "          
  

     
     EXIT:
     
         MOV AH,4CH
         INT 21H 

         RET
;
END MAIN
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
      
      
    
    
    