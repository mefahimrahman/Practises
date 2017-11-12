;UVA 11936 - The Lazy Lumberjacks
;Author: Fahim Rahman

INCLUDE EMU8086.INC
.MODEL SMALL
.STACK 100H
.DATA
D DW ?
TESTCASE DW ?
A DW ?
B DW ?
C DW ?

.CODE
MAIN PROC
    ;INITIALIZE DATA SEGMENT
    MOV AX,@DATA
    MOV DS,AX
    
    CALL SCAN_NUM
    MOV TESTCASE,CX   ;TESTCASE
    PRINTN

WHILE:
    MOV AX,TESTCASE
    CMP AX,0
    JE EXIT          
    CALL SCAN_NUM    ;A
    MOV A,CX
    PRINTN
    CALL SCAN_NUM    ;B
    MOV B,CX         
    PRINTN
    CALL SCAN_NUM    ;C
    MOV C,CX
    PRINTN
    
    MOV AX,A
    ADD AX,B ;A+B
    MOV D,AX ;D=A+B
    
    MOV AX,A
    CMP AX,0         
    JE WRPRINT       ;IF A==0
    MOV AX,B
    CMP AX,0         
    JE WRPRINT       ;IF B==0
    MOV AX,C
    JE WRPRINT       ;IF C==0
    MOV AX,D
    CMP AX,C         ;IF d>C
    JG OKPRINT
    ;ELSE
WRPRINT:
    PRINTN "Wrong!!"
    DEC TESTCASE
    JMP WHILE       ;TEST--
    
OKPRINT:
    PRINTN "OK"
    DEC TESTCASE    ;TEST--
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
