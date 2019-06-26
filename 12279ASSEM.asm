;UVA PRBLM 12279

.MODEL SMALL
.STACK 100H  
.DATA
A DW 0
N DW 0 
J DW 0
TEMP DW 0
GPARTY DW 0
EPARTY DW 0
I DW 0

.CODE
MAIN PROC   
    STRT:
    MOV AX,@DATA
    MOV DS,AX     ;DATA INITIALIZATION
    
    
    INCLUDE 'EMU8086.INC'
    ;FOR USER INPUT
    
   
             
             
            XOR CX,CX
            XOR BX,BX      ;CLEAR REGISTER
            XOR AX,AX
             XOR DX,DX 
                       
           MOV J,0
           WHILE:
               INC J
               CALL SCAN_NUM
               MOV N,CX
               PRINTN
               
              CMP N,0
              JE EXIT
              
                MOV GPARTY,0
                MOV EPARTY,0
                 MOV I,0
            FOR:
               CMP N,0
               JE CAL
              CALL SCAN_NUM
              PRINTN
              MOV TEMP,CX
              
              CMP TEMP,0
              JE GP
             INC EPARTY
             ;INC I 
             DEC N
                JMP FOR 
               
             GP:
               INC GPARTY
              ; INC I
              DEC N
               JMP FOR
            
               CAL:
                XOR AX,AX
                MOV AX,EPARTY
                SUB AX,GPARTY 
                MOV TEMP,AX
                
                PRINT "CASE  "
                 XOR AX,AX
                 MOV AX,J
                 CALL PRINT_NUM
                 PRINT " : "
                 XOR AX,AX
                 MOV AX,TEMP
                 CALL PRINT_NUM
                 PRINTN
                 
                JMP WHILE
            
           
     
                 EXIT:
                 MOV AH,4CH
                 INT 21H        
   
   MAIN ENDP

 DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
END MAIN
        