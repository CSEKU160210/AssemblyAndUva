 org 100h
    .data
    
    input1 db 20 dup("$")
    msg db 'Enter the input:$ '
    pal db 'pallindrome$'
    notpal db 'notpallindrome$'
    
    .code
    
    lea dx,msg
    mov ah,9
    int 21h
    
    lea dx,input1
    mov ah,10 ;to read characters from keyboard
    int 21h 
    
    mov ah,2
    mov dl,13
    int 21h
    mov dl,10
    int 21h
    
    lea bx,input1 ; put the starting address of input in bx
    mov al,[bx+1]
    mov ah,0
    add bx,ax
    
    inc bx ; reached the last character of string
    
    lea si,input1 
    add si ,2  ;starting address of the string 
       ;si = starting address
       ;bx = ending address
    mov ch,0
    mov cl,[si-1] ;size is copied to counter  
    
    cmp cx,1     ; compaire the string size with 1
    je pallindrome 
    
    shr cx,1 ;divide the size by 2 
               
               
    compare:
    mov al,[si]
    cmp [bx],al
    jne not_pallindrome
                        
     inc si
     dec bx                   
    loop compare
    
    pallindrome:
    lea dx ,pal
    mov ah,9
    int 21h
    
    jmp done
    
    not_pallindrome:
    lea dx,notpal
    mov ah,9
    int 21h
    
    
 done:
    ret 
    



scan proc
    ;Backup register values in stack
    PUSH BX
    PUSH CX
    PUSH DX
    
    ;Clear register values
    XOR BX, BX
    XOR CX, CX
    
    ;Read first character
    MOV AH, 1
    INT 21H
    
    ;Check if it is a sign or digit
    CMP AL, '-'
    JE NEGATIVE
    CMP AL, '+'
    JE POSITIVE
    JMP INPUT
    
    NEGATIVE:
    ;Store that it is negative number in CX
    MOV CX, 1
    
    POSITIVE:
    ;Take a digit input if first input is sign
    INT 21H
    
    INPUT:
    ;Convert the digit ASCII to number
    AND AX, 000FH
    ;As multiplication erases value in AX
    ;backup the digit to stack
    PUSH AX
    ;Multiply previous value by 10 and add new value
    MOV AX, 10
    MUL BX
    ;Pop new digit from stack
    POP BX
    ADD BX, AX 
    ;Read digit repeatedly until space or carriage return read
    MOV AH, 1
    INT 21H
    CMP AL, ' '
    JE ENDINPUT
    CMP AL, 13
    JE CARRIAGERETURN
    JMP INPUT
    
    CARRIAGERETURN:
    ;If last input is carriage return, print a new line
    MOV AH, 2
    MOV DL, 10
    INT 21H
    
    ;Store the positive input to AX
    ENDINPUT:
    MOV AX, BX   
    
    ;Check if the value is negative
    CMP CX, 0
    JE ENDSCAN
    NEG AX
    
    ENDSCAN:
    ;Restore register values from stack
    POP DX
    POP CX
    POP BX
    RET
ENDP
  
PRINT PROC
    ;Backup register values in stack
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    
    ;Check if Ax is positive or negative
    CMP AX, 0
    JGE INIT
    
    PUSH AX
    MOV DL, '-'
    MOV AH, 2
    INT 21H
    POP AX
    NEG AX
    
    INIT:
    XOR CX, CX  ;Clear CX. Holds number of digits
    MOV BX, 10  ;Holds divisor
    
    DIGITIFY:
    CWD         ;Clear DX
    DIV BX
    PUSH DX     ;Push last digit to stack
    INC CX
    
    ;Check if the quotient is zero
    CMP AX, 0
    JNZ DIGITIFY
    
    ;Pop and print
    MOV AH, 2
    PRINTLOOP:
    POP DX
    OR DL, 30H  ;Convert to ASCII
    INT 21H
    LOOP PRINTLOOP
    
    ;Restore register values from stack
    POP DX
    POP CX
    POP BX
    POP AX
    RET
ENDP