;#UVA PRBLM 11498

.MODEL SMALL
.STACK 100H  
.DATA
A DW 0
N DW 0 
M DW 0
I DW 0
K DW 0
X DW 0
Y DW 0
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
             XOR DX,DX 
            
             
             CALL SCAN_NUM  
             MOV K,CX
             PRINTN         ;CX = K
             
             CMP K,0
             JE EXIT
             
             CALL SCAN_NUM
             MOV N,CX
             PRINTN
             
             CALL SCAN_NUM
             MOV M,CX
             PRINTN 
             
             MOV DX,0  ;I=0=DX
             
             LOOP1: 
                 CMP DX,K
                 JG EXIT
                 
                 CALL SCAN_NUM
                 MOV AX,CX      ;X=AX
                 PRINTN
                 
                 CALL SCAN_NUM
                 MOV BX,CX      ;Y=BX
                  
             CMP AX,N
              JE CHECK1   ;X== N 
              
              CMP AX,N
              JG CHECK2   ;X>N 
              
              CMP AX,N   ;X<N
              JL CHECK3
              
              CMP AX,N 
              JL CHECK4  ;X<N
              
            CHECK1:
                 CMP BX,M  ;Y==M
                 JE PRINT1 
                 
            CHECK2:
                  CMP BX,M 
                  JG PRINT2  ;Y>M  
                  
            CHECK3:
                   CMP BX,M
                   JG PRINT3 
            CHECK4:
                 CMP BX,M
                 JL PRINT4  
                  
            PRINT1:
                 PRINTN "DIVISA"
                 INC DX
                JMP LOOP1
                  
            PRINT2:
                 PRINTN "NE"
                 INC DX
                JMP LOOP1
                 
            PRINT3:
                 PRINTN "NO"
                 INC DX
                 JMP LOOP1
            
            PRINT4:
                  PRINTN "SO" 
                  INC DX
                  
                
                JMP LOOP1  
             
             
             
             
         
             
                 EXIT:
                 MOV AH,4CH
                 INT 21H        
   
   MAIN ENDP

 DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
END MAIN
        