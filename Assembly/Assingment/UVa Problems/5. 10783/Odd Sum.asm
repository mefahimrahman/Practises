;UVA 10783 - Odd Sum
;Author: Fahim Rahman

INCLUDE EMU8086.INC

.MODEL SMALL
.STACK 100H
.DATA
TESTCASE DW ?
A DW ?
B DW ?
SUM DW ?
I DW ?
T DW 1
.CODE
MAIN PROC
    ;INITIALIZE DATA SEGMENT
    MOV AX,@DATA
    MOV DS,AX
    
    ;TESTCASE
    CALL SCAN_NUM
    MOV TESTCASE,CX
    PRINTN
     
        
OUTERFOR:
    MOV AX,T    ;T=1 THEN INCREMENT
    CMP AX,TESTCASE
    JG EXIT     ;T>TESTCASE
                ;ELSE
    CALL SCAN_NUM   ;A
    MOV A,CX 
    PRINTN
    
    CALL SCAN_NUM   ;B
    MOV B,CX
    PRINTN
    
    MOV SUM,0       ;SUM=0
    
    MOV AX,A        ;LOOP INITIALIZATION
    MOV I,AX        ;I=A
INNERFOR:
    ;CMP
    MOV AX, I
    CMP AX, B
    ;IF A>B
    JG PRINT
    ;ELSE
    AND DX,0    ;CLR DX REG
    MOV AX,I    ;TO DIVIDE I
    MOV CX,2    ;TO DIVIDE BY 2
    DIV CX      ;I/2
    CMP DX,0    ;REMENDER IS IN DX
    JE AFTER    ;IF (I%2=0)
    ;ELSE
    MOV AX,I
    ADD AX,SUM
    MOV SUM, AX ;SUM+=I
   
AFTER:   
    INC I      ;I++
    JMP INNERFOR
    
PRINT:
    PRINT "Case "
    MOV AX,T
    CALL PRINT_NUM
    PRINT ": "
    MOV AX,SUM
    CALL PRINT_NUM
    PRINTN
    INC T       ;T++
    JMP OUTERFOR
            
           
           
EXIT:
    ;RETURN TO DOS
    MOV AH,4CH
    INT 21H           
           
    MAIN ENDP
    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS

END MAIN