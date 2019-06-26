;#UVA PRBLM 11479

.MODEL SMALL
.STACK 100H  
.DATA
A DW 0
B DW 0
C DW 0
SUM1 DW 0
SUM2 DW 0
SUM3 DW 0
N DW 0
M DW 0
P DW 0
.CODE
MAIN PROC   
    STRT:
    MOV AX,@DATA
    MOV DS,AX     ;DATA INITIALIZATION
    
    
    INCLUDE 'EMU8086.INC'
    ;FOR USER INPUT
    
   
             
             
            XOR CX,CX
            XOR BX,BX   ;CLEAR REGISTER
            XOR AX,AX 
            xor dx,dx
                       
            CALL SCAN_NUM
            MOV AX,CX       ;INPUT A
            ADD A,AX
            ADD N,AX
            PRINTN
            
            
            CALL SCAN_NUM
            MOV BX,CX
            ADD B,BX
            ADD M,BX    ;INPUT B
            PRINTN
            
            CALL SCAN_NUM
            MOV CX,CX
            ADD C,CX
            ADD P,CX      ;INPUT C
            PRINTN
            
            
           S:
           XOR AX,AX
           MOV AX,A  
           ADD AX,B ;A+B
           MOV SUM1,AX
          
            S1:
            XOR AX,AX
            
           MOV AX,B
           ADD AX,C  ;B+C 
           MOV SUM2,AX
           
            S3:
            XOR AX,AX
            MOV AX,C
           ADD AX,N  ;C+A
           MOV SUM3,AX
           
           L1:
             XOR AX,AX
             MOV AX,SUM1
             CMP AX,P
             JLE PRINT1
           L2: 
               XOR AX,AX
               MOV AX,SUM2
               CMP AX,M
             JLE PRINT1
               
            L3:
              XOR AX,AX
              MOV AX,SUM3
            CMP AX,N
            JLE PRINT1
            
            L4:
              CMP M,0
              JLE PRINT1
            L5:
            CMP N,0
            JLE PRINT1
            L6:
             CMP P,0
             JLE PRINT1
             
           CHECK:
              XOR AX,AX
              ADD AX,M  ;A==B
              CMP AX,N
              JE CHECK1
              
           CHECK1:
                  XOR AX,AX
                  ADD AX,N    ;B==C
                  CMP AX,P
                   JE PRINT2 
                   
                    CHECK12:
              XOR AX,AX
              ADD AX,M   ;A==B
              CMP AX,N
              JE PRINT3 
              
               CHECK13:
                  XOR AX,AX
                  ADD AX,N    ;B==C
                  CMP AX,P
                   JE PRINT3 
              
              
                  
           CHECK2:
                XOR AX,AX
                ADD AX,P
                CMP AX,M
                JE PRINT3
               
                  
            PRINT1:
                 PRINTN " INVALID"
                 JMP EXIT
             
             PRINT2:
                 PRINTN "EQUILATERAL"
                 JMP EXIT
                 
             PRINT3:
                 PRINTN "ISOSCELES"
                  JMP EXIT
                  
               PRINTN "SCALENE"   
                   
                       
                       
         
                 EXIT:
                 MOV AH,4CH
                 INT 21H        
   
   MAIN ENDP

 DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
END MAIN
        