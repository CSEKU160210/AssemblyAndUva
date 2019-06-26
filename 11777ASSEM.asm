;#UVA PRBLM 11777

.MODEL SMALL
.STACK 100H  
.DATA
t1 DW 0
t2 DW 0 
f DW ?
ct1 DW ?
ct3 DW ?
CT2 DW 0
c dw 0
at dw 0
d dw 0
n dw 0

i dw 0
two dw 0 


X DW 0
Y  DW 0
Z DW 0


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
                       
                mov two,2       
             
             CALL SCAN_NUM  ;cX = n
             MOV n,CX
             PRINTN 
             
             while:
                   cmp n,0
                   je exit
                    
                   
              CALL SCAN_NUM    ;scanf t1
              MOV t1,CX     
              PRINTN
                    
                          
              CALL SCAN_NUM
              MOV t2,CX      ;scanf t2
              PRINTN 
              
             
              CALL SCAN_NUM
              MOV f,CX       ;scanf f
              PRINTN 
              
                    
              CALL SCAN_NUM   ;scanf at
              MOV at,CX     
              PRINTN
                    
                          
              CALL SCAN_NUM   ;scanf ct1
              ADD X,CX         ;X
              MOV ct1,CX
                   
              PRINTN
              
                    
              CALL SCAN_NUM
              ADD Y,CX         ;Y
              MOV ct2,CX     ;scanf ct2
              PRINTN
            
                        
              CALL SCAN_NUM   ;scanf ct3
              ;ADD Z,CT3
              MOV ct3,CX     
              PRINTN
            
                 
              XOR AX,AX
              ADD AX,CT1
              CMP AX,CT2
              JLE L
              JMP ELSEIF1
              
              L:
                CMP AX,CT3
                JLE CAL1
                
              CAL1:
                XOR AX,AX
                ADD AX,CT2
                ADD AX,CT3
                
                DIV TWO
                MOV C,AX
                XOR AX,AX
                XOR DX,DX
                
                
               ELSEIF1:
                   XOR AX,AX
                   
                    ADD AX,CT2
                    CMP AX,CT1
                    JLE L1
                    JMP ELSEIF2
                    
               L1:
                CMP AX,CT3
                JLE CAL2
                
                CAL2:
                    XOR AX,AX
                ADD AX,CT1
                ADD AX,CT3
                
                DIV TWO
                MOV C,AX
                XOR AX,AX
                XOR DX,DX
                 
                
               ELSEIF2:
                   XOR AX,AX
                   
                    ADD AX,CT3
                    CMP AX,CT1
                    JLE L3
                    JMP ELSEIF2
                    
               L3:
                CMP AX,CT2
                JLE CAL3
                  JMP RESULT 
                CAL3:
                    XOR AX,AX
                ADD AX,CT1
                ADD AX,CT3
                
                DIV TWO
                MOV C,AX
                XOR AX,AX
                XOR DX,DX   
                 
                 
             RESULT:
                  XOR AX,AX
                  MOV AX,T1
                  ADD AX,T2
                  ADD AX,F
                  ADD AX,AT
                  ADD AX,C
                  
                  MOV D,AX
                  
               CMP D,90
               JGE PRINT1
               JMP CH1
               
              CH1:
               CMP D,80
               JGE PRINT2
               JMP CH2
               
              CH2:
                CMP D,70
                JGE PRINT3
                JMP CH3
              CH3:
              CMP D,60
              JGE PRINT4
              JMP CH4
              
              CH4:
                CMP D,60
                JL PRINT5
                JMP EXIT
                
              PRINT1:
                PRINTN "AN"
                DEC N
                   JMP WHILE 
                 
                         PRINT2:
                PRINTN "BN"
                DEC N
                   JMP WHILE
                
                              PRINT3:
                PRINTN "CN"
                DEC N
                   JMP WHILE
                 
                 
                             PRINT4:
                
             PRINTN "DN"
               DEC N
                   JMP WHILE
                 
                 
                          PRINT5:
                PRINTN "EN"
                ;JMP EXIT 
                 
                  DEC N
                   JMP WHILE
                  
     
                 EXIT:
                 MOV AH,4CH
                 INT 21H        
   
   MAIN ENDP

 DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
END MAIN
        