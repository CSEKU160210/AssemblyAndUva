;uva prblm 11332

.MODEL SMALL
.STACK 100H
.DATA
DIGIT DW 0
N1 DW 0
N DW 0
N3 DW 0
A DW 0
B DW 0
C DW 0 
Z DW 3

.CODE

MAIN PROC 
    MOV AX,@DATA  ;DATA SEGMENT INITIALIZE
    MOV DS,AX
               
    INCLUDE 'EMU8086.INC'
    
   
    XOR AX,AX
    XOR BX,BX  ;CLEAR REGISTER
    XOR CX,CX
    XOR DX,DX
      
      CALL SCAN_NUM 
      
      PRINTN
      MOV AX,CX
      MOV N,AX
      XOR AX,AX
      
      CALL SUM   ;A=SUM(N)
      MOV AX,C
       
     MOV N,0 
      MOV N,AX
      XOR AX,AX
      
      CALL SUM
      MOV AX,C  ;B=SUM(A)
      
      
        MOV N,0 
      MOV N,AX
      XOR AX,AX
      
      CALL SUM
      MOV AX,C  ;C=SUM(B)
      
   
      CALL PRINT_NUM
      PRINTN
    
   
                
           
     
MAIN ENDP  

     SUM PROC
      
         MOV A,10
         MOV C,0
         
        WHILE:
              CMP N,0
              JE EXIT
              
              MOV AX,N
            DIV A 
            ADD C,DX
            MOV N,AX
            XOR AX,AX
            XOR DX,DX
            JMP WHILE
       EXIT:
          RET
          
          SUM ENDP  
            
            
           

  
    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS  
    
   
    END MAIN  
    
    
 
           
           
            



