;UVA 12372 - Packing for Holiday
;Author: Fahim Rahman

INCLUDE EMU8086.INC
.MODEL SMALL
.STACK 100H
.DATA
A DW ?
B DW ?
C DW ?
T DW ?
I DW ?
.CODE
MAIN PROC
    ;INITIALIZE DATA SEGMENT
    MOV AX,@DATA
    MOV DS,AX
WHILE:
    CALL SCAN_NUM
    MOV T,CX
    PRINTN
    
    MOV I,1 ;INITIALIZATION
FOR:
    MOV AX,I
    CMP AX,T
    JG WHILE
    CALL SCAN_NUM ;A
    MOV A,CX
    PRINTN
    CALL SCAN_NUM   ;B
    MOV B,CX
    PRINTN
    CALL SCAN_NUM
    MOV C,CX      ;C
    PRINTN
    
    MOV AX,A
    CMP AX,20
    JG BADPRINT  ;A>20
    MOV AX,B
    CMP AX,20
    JG BADPRINT  ;B>20
    MOV AX,C
    JG BADPRINT  ;C>20
GOODPRINT:
    PRINT "Case "
    MOV AX,I
    CALL PRINT_NUM
    PRINT ": "
    PRINTN "good"
    INC I  ;I++
    JMP FOR
    
    
BADPRINT:
    PRINT "Case "
    MOV AX,I
    CALL PRINT_NUM
    PRINT ": "
    PRINTN "bad"
    INC I   ;I++    
    JMP FOR         

   
   
    ;RETURN TO DOS
    MOV AH,4CH
    INT 21H     
         
    MAIN ENDP
    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
END MAIN 
