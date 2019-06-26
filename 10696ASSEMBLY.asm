;UVA PRBLM 10696

.MODEL SMALL
.STACK 100H
.DATA
A DW 0
B DW 0  
C DW 0
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
    
  call SCAN_NUM ;SCAN N
  MOV AX,CX 
  PRINTN
  
  CMP AX,101      ;CHECK IF CONDITION
  JLE PRINT
  JMP CALCULATION
  
  PRINT:
  PRINT "F91"
  PRINT "("
  
  CALL PRINT_NUM 
  PRINT ")"
  PRINT "= 91"
  PRINTN " "
  JMP EXIT
  
  CALCULATION:
              ;ADD A,AX
            ; PUSH AX
              MOV BX,AX
             SUB BX,10
             MOV AX,BX 
             PRINT "F91 ="
             PRINT "("
            CALL PRINT_NUM
            PRINT ")"
             ;POP CX
             PRINTN " "
             ;POP BX
     
     EXIT:
     
         MOV AH,4CH
         INT 21H 
         
;
END MAIN
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
      
      
    
    
    