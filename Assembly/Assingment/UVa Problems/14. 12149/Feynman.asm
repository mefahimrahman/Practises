;UVA 12149 - Feynman
;Author: Fahim Rahman

INCLUDE EMU8086.INC
.MODEL SMALL
.STACK 100H
.DATA
A DW ?
I DW ?
S DW ?
SUM DW ?
.CODE
MAIN PROC
    ;INITIALIZE DATA SEGMENT
    MOV AX,@DATA
    MOV DS,AX
         
WHILE:
    CALL SCAN_NUM
    MOV A,CX 
    PRINTN
    CMP CX,0
    JE EXIT ;IF A=0
    ;ELSE
    MOV SUM,0
    MOV I,1
FOR:
    MOV AX,I  ;INITIALIZATION
    CMP AX,A
    JG PRINT  ;IF I>A
    MOV AX,I
    MOV CX,I
    MUL CX    ;S=I*I
    MOV BX,SUM
    ADD BX,AX    ;SUM=SUM+S
    MOV SUM,BX
    INC I
    JMP FOR
    
PRINT:
    MOV AX,SUM    
    CALL PRINT_NUM
    PRINTN
              
    
    JMP WHILE   
    EXIT:
    ;RETURN TO DOS
    MOV AH,4CH
    INT 21H     
         
    MAIN ENDP
    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
END MAIN 