;UVA 12468 - Zapping
;Author: Fahim Rahman

INCLUDE EMU8086.INC
.MODEL SMALL
.STACK 100H
.DATA
A DW ?
B DW ?
I DW ?
S DW ?
.CODE
MAIN PROC
    ;INITIALIZE DATA SEGMENT
    MOV AX,@DATA
    MOV DS,AX 
WHILE:    
    CALL SCAN_NUM ;A
    MOV A,CX
    PRINTN
    CALL SCAN_NUM ;B
    MOV B,CX
    PRINTN
    MOV AX,A
    CMP AX,0
    JL FEXIT      ;IF A=-1
EQ:
    MOV AX,A
    CMP AX,B
    JGE ABIG       ;IF A>B
    ;ELSE
    MOV AX,B
    SUB AX,A       ;B-A
    JMP COND
        

ABIG:
    SUB AX,B       ;A-B
    JMP COND

COND:
     CMP AX,50
     JG SUBT       ;A>50
     JMP PRINT
            
SUBT:
    MOV BX,AX
    MOV AX,100     ;100-S
    SUB AX,BX
    JMP PRINT
    
PRINT:
    CALL PRINT_NUM
    PRINTN
    JMP WHILE        
FEXIT:
    MOV AX,B
    CMP AX,0      ;IF B=-1
    JL EXIT
    JMP EQ
             
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
