;UVA 10055 - Hashmat The Brave Warrior
;Author: Fahim Rahman

INCLUDE EMU8086.INC
.MODEL SMALL
.STACK 100H
.DATA  
A DW ?
B DW ?

.CODE
MAIN PROC
    ;INITIALIZE DATA SEGMENT
    MOV AX,@DATA
    MOV DX,AX
    
WHILE_LOOP:
    ;SCAN 1ST NUMBER  
    CALL SCAN_NUM
    MOV A,CX
    PRINTN
    ;SCAN 2ND NUMBER
    CALL SCAN_NUM
    MOV B,CX
    PRINTN
    
    ;SAVE TO COMPARE
    MOV AX,A
    MOV BX,B
    CMP AX,BX
    ;IF AX>BX
    JG ALARGE
    ;ELSE 
    SUB BX,AX
    ;SAVE TO AX FOR PRINTING
    MOV AX,BX
    CALL PRINT_NUM
    ;NEW LINE
    PRINTN
    JMP WHILE_LOOP

ALARGE:
    SUB AX,BX
    CALL PRINT_NUM
    ;NEW LINE
    PRINTN    
    
    JMP WHILE_LOOP
   
    ;RETURN TO DOS
    MOV AH,4CH
    INT 21H     
         
    MAIN ENDP

    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
    
END MAIN 