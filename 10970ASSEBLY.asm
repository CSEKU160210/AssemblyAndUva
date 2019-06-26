;UVA PRBLM 10970

.MODEL SMALL
.STACK 100H
.DATA
M DW 0
N DW 0
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
    
                                 
                                   
       PRINTN "ENTER THE VALUE OF M"                            
    
    CALL SCAN_NUM  ; TAKE THE VALUE OF V AND IT STORES THE VALUE IN CX
    
       MOV AX,CX    ;AX=CX=M    
     
      
      PRINTN "ENTER THE VALUE OF N " 
      
      CALL SCAN_NUM
      MOV BX,CX             ;BX=CX=N
      SUB BX,1               ;CX= N-1=BX-1
    
      
     IMUL BX
     
     PRINTN " BIG CHOLCATE PICES:"
     CALL PRINT_NUM 
     
     
     
                 JMP STRT
        
     
     
     
     
     EXIT:
     
         MOV AH,4CH
         INT 21H 
       
;
END MAIN
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
      
      
    
    
    