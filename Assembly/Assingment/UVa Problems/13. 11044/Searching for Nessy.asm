;UVA 11044 - Searching for Nessy
;Author: Fahim Rahman

INCLUDE EMU8086.INC

.MODEL SMALL
.STACK 100H
.DATA 
T DW ?
ROW DW ?
COL DW ?
A DW ?
B DW ?
.CODE
MAIN PROC
    ;INITIALIZE DATA SEGMENT
    MOV AX,@DATA
    MOV DS,AX
    
    CALL SCAN_NUM
    MOV T,CX
    PRINTN
WHILELOOP:
    MOV AX,T
    CMP AX,0
    JE EXIT
    CALL SCAN_NUM
    MOV ROW,CX
    PRINTN
    CALL SCAN_NUM
    MOV COL,CX
    PRINTN
    
    AND AX,0
    MOV AX,ROW
    MOV CX,3
    DIV CX    ;ROW/3
    MOV A,AX
    MOV AX,COL
    MOV CX,3
    AND DX,0
    DIV CX    ;COL/3
    MOV CX,A
    MUL CX    ;(ROW/3)*(COL/3)
    
    CALL PRINT_NUM
    PRINTN



    DEC T
    JMP WHILELOOP    
    
    
    EXIT:
    ;RETURN TO DOS
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
END MAIN