  ;UVA 12802        
          
 INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
 A DW 0
 N DW 0
 B DW 0
 D DW 2
VAR1 DW ?
TEMP DW ?

.CODE

   MAIN PROC
    
           STRT:
           
           XOR AX,AX
           XOR BX,BX
           XOR CX,CX
           XOR DX,DX 
           MOV D,2
                    
       CALL SCAN_NUM
       MOV  AX,CX
       PRINTN
       
       ADD N,AX
       
         MUL D 
         MOV AX,AX
        CALL PRINT_NUM
        PRINTN          
                    
    
    CALL PALLINDROM
    MOV AX,A
     
     CALL PRIME  
  

     MOV BX,B
    
    CHECK1: 
    CMP AX,1
    JE CHECK2
    JMP EXIT
    
    CHECK2:
         CMP BX,1
         JE STRT
         JMP EXIT 
    
     
    
   
    
    MAIN ENDP 
    ;FOR USER INPUT
    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
    
    
    
    
PALLINDROM PROC
  
    
    AND BX,0        ;BX=0
    AND CX,0        ;CX=0
    MOV CL,10D      ;CL=10
    
    
    NUMBER_SAVE:
    MOV VAR1,BX
    
    
    MOV AX,BX
    XOR BX,BX
    XOR DX,DX
    
    CHECK:    
    DIV CL
    ;MOV TEMP,AL
    MOV DL,AH
    XOR AH,AH
    MOV TEMP,AX
    MOV AX,BX
    MUL CL
    ADD AX,DX
    MOV BX,AX
    MOV AX,TEMP
    CMP AX,0
    JE BREAK
    JMP CHECK 
    
    
    BREAK:
    
    MOV DX,VAR1
    
    CMP BX,DX
    JE PRINT_SAME
    JMP PRINT_DIFF
    
    PRINT_SAME:
    PRINTN
    XOR AX,AX
      MOV A,1
      ;MOV AX,A
       JMP EXIT
     
    
    PRINT_DIFF:
    PRINTN 
    XOR AX,AX
    MOV A,0
    ;MOV AX,A 
    EXIT:
    RET
 PALLINDROM ENDP
    
    
 
 PRIME PROC  
    mov ax,@data
    mov ds,ax    ;data initialization
  
 

  
  call scan_num    ;scan num from keyboard & it stores the value in cx
  
  mov ax,cx
  
  mov b,2
  div b
    
    mov a,0
    
  cmp ax,a
  je print1
    MOV B,0
    JMP EXIT1
   
  
  
  
  print1:
    MOV B,1
  
  
  exit1: 
  RET
    mov ah,4ch
    int 21h
end PRIME
  
  
  
  
  
  
  
  
   
END MAIN
    
    