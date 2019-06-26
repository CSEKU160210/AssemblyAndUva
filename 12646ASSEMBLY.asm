;UVA PRBLM 12646

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

    
    XOR CX,CX
    XOR AX,AX
    XOR BX,BX  ;O ASIGN ALL THE RESISTER
    XOR DX,DX
              
   CALL SCAN_NUM 
                 ;SCAN A
   MOV AX,CX 
     PRINTN
  ; XOR CX,CX
   
   CALL SCAN_NUM
                   ;SCAN B
   MOV BX,CX
    PRINTN
   ;XOR CX,CX 
   
   CALL SCAN_NUM     ;SCAN C
   PRINTN
  MOV  DX,CX
  
  LEVEL1:
        CMP AX,BX
        JE LEVEL3    ;AX==BX
        JNE LEVEL8
  
  LEVEL2:
        CMP AX,DX    ;AX==DX
        JE LEVEL4
  
  
  
  LEVEL3:
         CMP BX,DX  ;BX==DX
         JE PRINT1
  
  LEVEL4:
         CMP AX,BX 
         JNE PRINT3 ;AX!=BX
         
  LEVEL5:
        CMP AX,DX     ;AX!=DX
        JNE LEVEL7
        
  LEVEL6:
        CMP BX,DX
        JE PRINT2  ;BX==DX
  LEVEL7:
        CMP AX,BX
        JE PRINT4   ;AX==BX
  LEVEL8:
        CMP AX,DX    ;AX==DX
         JE PRINT3
        
    PRINT1:
           PRINTN "*"
           JMP EXIT

    PRINT2:
          PRINTN "A" 
          JMP EXIT
          
    PRINT3:
          PRINTN "B" 
          JMP EXIT
          
     PRINT4:
           PRINTN "C"
           JMP EXIT
  

     
     EXIT:
     
         MOV AH,4CH
         INT 21H
        
       
     MAIN ENDP
             
    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS  
    
    
;
END MAIN
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
      
      
    
    
    