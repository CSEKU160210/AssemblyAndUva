;UVA PRBLM 10773

.MODEL SMALL
.STACK 100H
.DATA
N DW 0
D DW 0
u DW 0
v DW 0
t1 DW 0
t2 dw 0
i dw 0
U1 DW 0
V1 DW 0
DIFFER DW 0
COUNTER DW 0
D3 DW 0
 B DW 0
 A DW 0
 X DW 0
 ROOT DW 0
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
    
    call SCAN_NUM
    mov n,cx
    printn
    
    WHILE:
    cmp n,1
    je exit 
    
    call scan_num
    ;MOV AX,CX       ;D
    MOV D,CX
     printn
     
     call scan_num
     mov DX,cx       ;V
     ADD V,DX
     printn
     
     call scan_num
     mov BX,cx
     ADD U,BX        ;U
     printn
     
     L1:
       CMP V,0
       JE PRINT1
       
     L2:
     CMP U,0
     JE PRINT1
     
     L3:
      CMP V,BX
      JGE PRINT1
      
      T1CAL:
         MOV AX,D
         DIV U
         MOV T1,AX
         XOR AX,AX
         XOR DX,DX
      
       
      
      CALCULATION1:
                       ;U*U
                       
           MOV AX,U
           MUL AX
           MOV U1,AX
           XOR AX,AX
           
      CALCULATION2:
                    ;V*V
      MOV AX,V
      MUL AX
      ;MOV V1,AX
     ; XOR AX,AX
      
     DIFFER1:
           SUB U1,AX
           XOR AX,AX
          MOV AX,U1
          MOV D3,AX 
          XOR AX,AX
          
      CALL SQRT 
      MOV BX,X
          MOV ROOT,BX
          MOV AX,D
          DIV ROOT
          MOV T2,AX
          XOR DX,DX
          XOR AX,AX 
          
        MOV CX,T2  
       SUB CX,T1
       MOV AX,CX
       CALL PRINT_NUM 
       
       DEC N
       PRINTN           
        JMP WHILE
      
      
      
      
       
    
    
     PRINT1:
    
        PRINTN "CANNOT DETERMINE"
        DEC N
        JMP WHILE
    
   
     EXIT:
     
         MOV AH,4CH
         INT 21H 
                   
     
   MAIN ENDP



SQRT PROC     ;sqrt function strt  
    
        MOV B,2 
        
    ;CALL SCAN_NUM   ;take a number n
    ;mov ah,1
   ; int 21h
    MOV AX ,D3       ;ax==n
    ADD A,AX
    ADD X,AX 
    mov N, CX         ; x=n
    ADD BX,AX          ;bx=n
    ;DETERMINE SQRT ROOT OF GIVEN NUMBER
    
    DIV B            ;n/2 porjonto loop continue hobe
    MOV COUNTER,AX    ;from 1 to n/2
    WHILE1:
         CMP COUNTER,1
         JE NEXT       ;(x+(n/x))/2 formula n/2 porjonto continue korle sqrt pabo
       XOR AX,AX
       ADD AX,A      ;ax==n
            xor dx,dx           ;n/x
       DIV X
       ;mov cx,ax                   ;x+ax
       ADD Ax,X 
       xor dx,dx                    ;/2
       DIV B
       MOV X,ax
       DEC COUNTER
       JMP WHILE1
     NEXT:  
     RET
     SQRT ENDP         
    

 DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
END MAIN
        
     
     
     
     
     
     
     
     
     
      
      
    
    
     