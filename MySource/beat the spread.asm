;10812 Beat the spread

org 100h
.data
    msg DB 'impossible$'
    st DW ?
    nd DW ?
    x DW ?
    rd DW ?
    th DW ?
.code
main proc  
   MOV AX,@data
   MOV DS,AX
   CALL inprocess
   XOR CX,CX
   MOV CX,AX
   loop1:
   MOV AH,2
   MOV DX,10
   INT 21h
   MOV DX,13
   INT 21h
   CALL inprocess
   MOV st,AX
   CALL inprocess
   MOV nd,AX
   CMP st,AX
   JL  impos
   XOR DX,DX
   ADD AX,st
   MOV x,AX 
   MOV BX,2
   IDIV BX
   CMP DX,0
   JNE impos
   XOR DX,DX
   MOV AX,x
   MOV BX,2
   DIV BX
   
   MOV rd,AX
   CWD
   MOV AX,st
   SUB AX,nd
   MOV BX,2
   IDIV BX
   MOV th,AX
   MOV AH,2
   MOV DX,10
   INT 21h
   MOV DX,13
   INT 21h
   MOV AX,rd
   CALL outprocess
   MOV AH,2
   MOV DX,' '
   INT 21h
   MOV AX,th
   CALL outprocess
   LOOP loop1
   
impos:
   MOV AH,2
   MOV DX,10
   INT 21h
   MOV DX,13
   INT 21h
   LEA DX,msg
   MOV AH,9
   INT 21h
   LOOP loop1
      
ENDP

inprocess PROC
    
    PUSH BX
    PUSH CX     
    PUSH DX

start:
    
    XOR BX,BX    
    XOR CX,CX    
    
    MOV AH,1
    INT 21h     
   
    CMP AL,'-'   
    JE minus
    CMP AL,'+'  
    JE plus
    JMP repeat1
    
minus:
    
    MOV CX,1     

plus:
    
    INT 21h  
    
repeat1:
    
    CMP AL,'0'
    JNGE not_digit
    CMP AL,'9'
    JNLE not_digit
    
    AND AX,000fh  
    PUSH AX       
    
    MOV AX,10     
    MUL BX        
    POP BX        
    ADD BX,AX     
    
    MOV AH,1
    INT 21h
    CMP AL,0dh
    JNE repeat1 
    
    MOV AX,BX  
    
    OR CX,CX   
    JE exit
    
    NEG AX
    
exit:
    POP DX      
    POP CX
    POP BX
    RET
    
not_digit:
    MOV AH,2
    MOV DL,0dh
    INT 21h     
    MOV DL,0ah
    INT 21h
    JMP start
    RET
inprocess ENDP

                
outprocess PROC
    
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    
    OR AX,AX
    JGE end_if
    
    PUSH AX
    MOV DL,'-'     
    MOV AH,2
    INT 21h
    POP AX
    NEG AX         
    
end_if:
    
    XOR CX,CX      
    MOV BX,10d    
    
repeat2:
    
    XOR DX,DX
    DIV BX
    PUSH DX      
    INC CX
    
    OR AX,AX
    JNE repeat2  
    
    MOV AH,2
    
printout:
    
    POP DX
    OR DL,48
    INT 21h        
    LOOP printout
    
    POP DX         
    POP CX
    POP BX
    POP AX
    RET

outprocess ENDP    
           
