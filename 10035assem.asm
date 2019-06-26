;UVA PRBLM 10035

.MODEL SMALL
.STACK 100H
.DATA
SUM DW 0
A DW 0
B DW 0
R1 DW 0
R2 DW 0
C dw ?
D DW 0
E DW 0 
P DW 0
.CODE  
MAIN PROC
    
    STRT:
    MOV AX,@DATA  ;DATA SEGMENT INITIALIZE
    MOV DS,AX
               
      INCLUDE 'EMU8086.INC'
    
    
    XOR CX,CX
    XOR AX,AX
    XOR BX,BX  ;O ASIGN ALL THE RESISTER
    XOR DX,DX
    
    MOV D,10
    MOV E,2 
    
    CALL SCAN_NUM
    ;ADD P,CX
    MOV A,CX
    
    PRINTN
    
    CALL SCAN_NUM 
   ; ADD Q,CX
    MOV B,CX
    PRINTN
    
    CMP A,0
    JE EXIT
    
    CMP B,0
    JE EXIT
    
    WHILE:
    CMP A,0
    JG CHECK
    
   CHECK:
      CMP B,0
      JG CAL
       JMP IF
        
    CAL:
       XOR AX,AX
       ADD AX,A
       DIV D 
       MOV R1,DX
       XOR DX,DX  ;R1
       XOR AX,AX
       
       ADD AX,B
       DIV D
       MOV R2,DX ;R2
       XOR DX,DX
       XOR AX,AX
       
       MOV AX,R1   ;R2+R1
       ADD AX,R2
       MOV SUM,AX
       
       XOR AX,AX
       
       
       MOV AX,A
       
       DIV E
       MOV A,AX
         XOR AX,AX   ;A/2
       XOR DX,DX
       
        
       MOV AX,B
       DIV E
       MOV B,AX
       XOR AX,AX
       XOR DX,DX  ;B/2
       
       MOV AX,SUM
       ADD AX,C
       
       CMP AX,10
       JGE L2
       JMP WHILE
       
       L2:
       
         INC C
       
         JMP WHILE
         
         
       IF:
          CMP C,0
          JG PRINT1
          
       PRINT1: 
            MOV AX,C
            CALL PRINT_NUM             
                                      
            PRINTN "CARRRY OPERATION" 
            
            JMP EXIT
         
        PRINT2:
              PRINTN " NO CARRY OPERATION"


     EXIT:
     
         MOV AH,4CH
         INT 21H 
                   
     
   MAIN ENDP



 DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
END MAIN
        
     
     
     
     
     
     
     
     
     
      
      
    
    
     