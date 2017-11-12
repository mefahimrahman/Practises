;SINGLE DIGIT
;UVA 10055 - Hashmat The Brave Warrior
;Author: Fahim Rahman



.MODEL SMALL
.STACK 100H
.DATA
A DB ?
B DB ?  
SUM DB ?
.CODE
MAIN PROC
    ;INITIALIZE DATA SEGMENT
    MOV AX,@DATA
    MOV DX,AX

WHILE:
    ;INPUT A 
    MOV AH,1  ;INPUT
    INT 21H
    SUB AL,30H
    MOV A,AL   ;SAVE
    
    ;INPUT B
    MOV AH,1   ;INPUT
    INT 21H
    SUB AL,30H
    MOV B,AL   ;SAVE
    
    MOV AL,A
    CMP AL,B
    JG ABIG  ;IF A>B
    ;ELSE
    MOV AL,B
    SUB AL,A  ;B-A
    MOV SUM,AL
    JMP PRINT
    
ABIG:
    MOV AL,A
    SUB AL,B   ;A-B
    MOV SUM,AL 
    JMP PRINT
    
PRINT:
    ;NEW LINE
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV AH,2   ;OUTPUT
    ADD SUM,30H
    MOV DL,SUM 
    INT 21H
    ;NEW LINE
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    JMP WHILE    
    
    ;RETURN TO DOS
    MOV AH,4CH
    INT 21H     
         
    MAIN ENDP
END MAIN 
