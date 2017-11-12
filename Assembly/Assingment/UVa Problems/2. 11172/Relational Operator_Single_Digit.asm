;UVA 11172 - Relational Operator
;Author: Fahim Rahman

.MODEL SMALL
.STACK 100H
.DATA
T DB ?
A DB ?
B DB ?
.CODE
MAIN PROC
    ;INITIALIZE DATA SEGMENT
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H     ;TEST
    SUB AL,30H
    MOV T,AL
    
    ;NEW LINE
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
WHILE:
    MOV BL,T
    CMP BL,0
    JE EXIT
    
    MOV AH,1
    INT 21H   ;A
    SUB AL,30H
    MOV A,AL
    
    MOV AH,1
    INT 21H   ;B
    SUB AL,30H
    MOV B,AL
    
    MOV AL,A
    CMP AL,B
    JE EQP   ;A==B
    CMP AL,B
    JL LP    ;A<B
    ;ELSE
    MOV AH,2
    MOV DL,">"
    INT 21H
    DEC T     ;TEST--
    JMP NEWL
    
LP:
    MOV AH,2
    MOV DL,"<"
    INT 21H   ;TEST--
    DEC T
    JMP NEWL    
    
EQP:
    MOV AH,2
    MOV DL,"="
    INT 21H
    DEC T    ;TEST--
    JMP NEWL
    
NEWL:
    ;NEW LINE
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    JMP WHILE            
    
EXIT:   
    ;RETURN TO DOS
    MOV AH,4CH
    INT 21H     
         
    MAIN ENDP
END MAIN 
