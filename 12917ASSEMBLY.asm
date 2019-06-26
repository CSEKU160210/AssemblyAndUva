;#UVA PRBLM 12917

.MODEL SMALL
.STACK 100H  
.DATA
A DW 0
N DW 0 
B DW ?
R DW ?
K DW ?
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
            MOV DX,CX      ;X INPUT
            PRINTN
            
            CALL SCAN_NUM 
            MOV BX,CX       ;Y INPUT
            PRINTN
            
            CALL SCAN_NUM
            MOV AX,CX        ;Z INPUT
            PRINTN
            
            SUB AX,BX
            MOV A,AX    ;Z-Y
            
            CMP DX,A
            JLE PRINT12
            
            PRINTN "Hunters win!"
            jmp strt
            
            PRINT12:
                 printn "Props win!"
                 
                 jmp strt
             
            
                 EXIT:
                 MOV AH,4CH
                 INT 21H        
   
   MAIN ENDP

 DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
END MAIN
        