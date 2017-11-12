;UVA 11172 - Relational Operator
;Author: Fahim Rahman

INCLUDE EMU8086.INC
.MODEL SMALL
.STACK 100H
.DATA
A DW ?
B DW ?
TESTCASE DW ?
.CODE
MAIN PROC
    ;INITIALIZE DATA SEGMENT
    MOV AX,@DATA
    MOV DX,AX
    
    ;INPUT TESTCASE
    CALL SCAN_NUM
    PRINTN
    MOV TESTCASE,CX 
    MOV DX,TESTCASE
    
WHILE_LOOP: 
    CMP DX,0
    JZ EXIT
    ;SCAN 1ST NUMBER
    CALL SCAN_NUM
    PRINTN
    ;SAVE IT TO A
    MOV A,CX
    
    
    ;SCAN 2ND NUMBER
    CALL SCAN_NUM
    PRINTN
    
    
    CMP A,CX
    ;IF A==CX
    JE EQAL
    ;IF A>CX
    JG GRETER
    ;ELSE
    PRINT "<"
    PRINTN 
    DEC DX
    JMP WHILE_LOOP
    
    
    
EQAL:
    PRINT "="
    PRINTN 
    DEC DX
    JMP WHILE_LOOP
GRETER:
    PRINT ">"
    PRINTN
    DEC DX
    JMP WHILE_LOOP
         
    
         
         
    ;REST OF THE CODE
   
EXIT:   
    ;RETURN TO DOS
    MOV AH,4CH
    INT 21H     
         
    MAIN ENDP

    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
END MAIN 