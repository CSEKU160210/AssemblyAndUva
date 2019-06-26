;#UVA PRBLM 11461

.MODEL SMALL
.STACK 100H  
.DATA
A DW 0
N DW 0 
B DW 0
X DW 0
C DW 0
COUNT1 DW 0
COUNT2 DW 0 
I DW 0 
D DW 0
COUNTER DW 0

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
             MOV BX,CX
             ADD COUNT1,BX   ;A
             PRINTN
             
             CALL SCAN_NUM
             MOV DX,CX
             ADD COUNT2,DX     ;B
             PRINTN 
             
             CMP BX,0
             JE EXIT
             
             CMP DX,0
             JE EXIT 
             
             MOV I,BX  ;I==A
             
             FORLOOP:
                    
                    CMP I,DX
                    JGE PRINT1
                    
                    CALL SQRT 
                    MOV Cx,bX
                   ; INC I
                    
                    MOV AX,Cx
                    MUL AX
                    
                    CMP AX,I
                    JE L1
                    INC I
                    JMP FORLOOP
                    
                L1:
                  INC D 
                  INC I
                  JMP FORLOOP 
                    
           PRINT1:
               MOV AX,D     
                CALL PRINT_NUM
                PRINTN
             
            
       
                 EXIT:
                 MOV AH,4CH
                 INT 21H        
   
   MAIN ENDP 

SQRT PROC     ;sqrt function strt  
    
        MOV B,2
        
   ; CALL SCAN_NUM   ;take a number n
    ;mov ah,1
   ; int 21h
   XOR AX,AX
    MOV AX ,I        ;ax==n
    ADD A,AX
    ADD X,AX 
    mov N, CX         ; x=n
    ADD BX,AX          ;bx=n
    ;DETERMINE SQRT ROOT OF GIVEN NUMBER
    
    DIV B            ;n/2 porjonto loop continue hobe
    MOV COUNTER,AX    ;from 1 to n/2
    XOR DX,DX
    WHILE:
         CMP COUNTER,1
         JE NEXT       ;(x+(n/x))/2 formula n/2 porjonto continue korle sqrt pabo
       XOR AX,AX
       ADD AX,A      ;ax==n
            xor dx,dx           ;n/x
       DIV bX
       mov cx,ax                   ;x+ax
       ADD ax,bX 
       xor dx,dx                    ;/2
       DIV B
       MOV bX,ax
       DEC COUNTER
       JMP WHILE
     NEXT:  
     RET
     SQRT ENDP         
    
    

 DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
END MAIN
        