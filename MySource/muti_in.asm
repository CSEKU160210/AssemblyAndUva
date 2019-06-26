org 100h

.data
;b dw 10
num dw ?
;count dw 0
;sign db ?
.code

; //READ 3 DIGITS // ;
;read first digit fo e.g. '1'
MOV ah,1h
INT 21h ;read into AL

; BL will be 10.
MUL num ; AX = AL * num
MOV BL,AL

; read second digit for e.g. '2'
MOV ah,1h
INT 21h ;read into AL

;BL will be '11' now.
ADD BL,AL

;BL will be '110' now.
MUL num ; AX = AL * num
MOV BL,AL

;read third digit
MOV ah,1h
INT 21h ;read into AL

;AL is 3, so BL will be '123'
ADD BL,AL

; // FINISH READING 3 DIGITS // ;
end main