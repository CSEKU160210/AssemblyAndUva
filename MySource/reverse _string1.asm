;DATA SEGMENT 
org 100h
.data
        STR1 DB "ENTER YOUR STRING HERE ->$"
        STR2 DB "YOUR STRING IS ->$"
        STR3 DB "REVERSE STRING IS ->$"
        INSTR1 DB 20 DUP("$");the nmbr after db defines how many bytes repeat for and ("x")
                             ;x defines what to repeat 
        RSTR DB 20 DUP("$")
        NEWLINE DB 10,13,"$"
        N DB ?
        S DB ?

;DATA ENDS

;CODE SEGMENT
        ;ASSUME DS:DATA,CS:CODE 
        .code
        main proc
START:

        MOV AX,@DATA
        MOV DS,AX

        LEA SI,INSTR1

;GET STRING
        MOV AH,09H
        LEA DX,STR1
        INT 21H

        MOV AH,0AH
        MOV DX,SI
        INT 21H


        MOV AH,09H
        LEA DX,NEWLINE
        INT 21H

;PRINT THE STRING

        MOV AH,09H
        LEA DX,STR2
        INT 21H

        MOV AH,09H
        LEA DX,INSTR1+2
        INT 21H

        MOV AH,09H
        LEA DX,NEWLINE
        INT 21H

;PRINT THE REVERSE OF THE STRING

        MOV AH,09H
        LEA DX,STR3
        INT 21H

        MOV CL,INSTR1+1
        ADD CL,1
        ADD SI,2

     L1:
        INC SI

        CMP BYTE PTR[SI],"$"
        JNE L1

        DEC SI

        LEA DI,RSTR

     L2:MOV AL,BYTE PTR[SI]

        MOV BYTE PTR[DI],AL

        DEC SI
        INC DI
        LOOP L2

        MOV AH,09H
        LEA DX,NEWLINE
        INT 21H

        MOV AH,09H
        LEA DX,RSTR
        INT 21H


        MOV AH,09H
        LEA DX,NEWLINE
        INT 21H


        MOV AH,4CH
        INT 21H


;CODE ENDS
;END START
main endp
        end main


;OUTPUT:-
;Z:\SEM3\SS\21-30>P25
;ENTER YOUR STRING HERE ->JINESH
;YOUR STRING IS ->JINESH
;REVERSE STRING IS ->
;HSENIJ