.MODEL SMALL
.STACK 100H
.DATA
A DW 0
MX DW 0
MN DW 100
N DW 0
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
   
    ;PRINT "N:" 
    
    CALL SCAN_NUM
    MOV A,CX 
    XOR CX,CX
    PRINTN
    
       LOOP1: 
    CMP A,0
    JE CALCULATION
    
     ;PRINT "NUM: "
     XOR AX,AX     
   CALL SCAN_NUM 
     PRINTN     ;;N==AX
   MOV AX,CX
   ADD N,AX
   XOR CX,CX
  
    
    
     
     CMP AX,MX
     JG L1
      
        
     L1:
       MOV MX,AX 
       
       
       XOR AX,AX
      MOV AX,N 
     CMP AX,MN
     JL L2
   
      
     L2:
      
        MOV MN,AX   
       
  
         DEC A
        
        JMP LOOP1 
     
     CALCULATION: 
                 XOR CX,CX
                  XOR AX,AX
                  XOR BX,BX
                  XOR DX,DX
                  
                 MOV CX,2
                ADD BX,MX
                ADD DX,MN
                SUB BX,DX
                MOV AX,BX
                IMUL CX
                MOV AX,CX
      
    CALL PRINT_NUM 
    JMP EXIT           
        
     
     EXIT:
     
         MOV AH,4CH
         INT 21H
        
       
     MAIN ENDP
             
    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS  
    
END MAIN
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
      
      
    
    
    