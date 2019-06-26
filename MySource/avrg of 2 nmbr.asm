.MODEL SMALL
 .STACK
 DATA SEGMENT   ; Beginning of data segment
 num1 DB 10   ;Declaration of first value
 num2 DB 3   ;Declaration of second value
 average DB ?          ;Empty slot to store average
 remainder DB " remainder ",'$'
 rem DB ?           ;Empty slot to store remainder
 DATA ENDS    ;End of data segment
 CODE SEGMENT   ; Beginning of code segment
 ASSUME CS: CODE, DS: DATA
 Start:     ;Starting address
 MOV AX, DATA
 MOV DS, AX   ;Initializes the DS(Data segment) register
 
 MOV AL, num1
 ADD AL, num2
 MOV AH, 00   ; Clears AH Register(Because this is where our remainder will be)
 MOV BL, 02   ; Loads divisor into BL register
 DIV BL    ; DIV : divide AX by BL. Remainder in AH and result in AL
 
 ADD AL, 48
 MOV average, AL  ;stores average
 ADD AH, 48
 MOV rem, AH   ;stores remainder
 
 CALL display           ;call procedure "display"
 
 MOV AX, 4C00H  ;Returns control to MS-DOS
 INT 21H
 
 display proc           ;Procedure "display"
 MOV AH, 02H
 MOV DL, average
 INT 21H    ;Displays average
 
 MOV AH, 09H
 LEA DX, remainder
 INT 21H    ;Displays message "remainder"
 
 MOV AH, 02H
 MOV DL, rem
 INT 21H    ;Displays remainder
 ret     ;returns control back to the point this procedure was called
 display endp           ;End of procedure
 

 
 CODE ENDS    ;End of code segment
 END Start    ;End of program

 ;......................**********.......................................
 ;OUTPUT>:
 ;6 remainder 1 