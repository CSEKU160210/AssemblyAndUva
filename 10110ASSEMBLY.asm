;UVA PRBLM 10110

.MODEL SMALL
.STACK 100H
.DATA
N DW 0
X DW 0
A DW 0
B DW 0
C DW 0
COUNTER DW 0
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
    CALL SQRT   ;call sqrt function
   
        MOV AX,BX
        MUL AX
       ; MOV C,AX
        
       CMP N,AX
       JE PRINT1
       
       PRINTN "NO"
      JMP EXIT
      
      PRINT1:
           PRINTN "YES"
    
    
    
 
     EXIT:
     
         MOV AH,4CH
         INT 21H 
                   
        MAIN ENDP 


SQRT PROC     ;sqrt function strt  
    
        MOV B,2d 
        
    CALL SCAN_NUM   ;take a number n
    ;mov ah,1
   ; int 21h
    MOV AX ,CX        ;ax==n
    ADD A,AX
    ADD X,AX 
    mov N, CX         ; x=n
    ADD BX,AX          ;bx=n
    ;DETERMINE SQRT ROOT OF GIVEN NUMBER
    
    DIV B            ;n/2 porjonto loop continue hobe
    MOV COUNTER,AX    ;from 1 to n/2
    WHILE:
         CMP COUNTER,1
         JE NEXT       ;(x+(n/x))/2 formula n/2 porjonto continue korle sqrt pabo
       XOR AX,AX
       ADD AX,A      ;ax==n
            xor dx,dx           ;n/x
       DIV BX
       mov cx,ax                   ;x+ax
       ADD ax,BX 
       xor dx,dx                    ;/2
       DIV B
       MOV BX,ax
       DEC COUNTER
       JMP WHILE
     NEXT:  
     RET
     SQRT ENDP         
    
    ;FOR USER INPUT
    
    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS  
    
;
END MAIN
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
      
      
    
    
     