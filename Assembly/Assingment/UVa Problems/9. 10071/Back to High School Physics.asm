;UVA 10071 - Back To High School Physics
;Author: Fahim Rahman

INCLUDE EMU8086.INC
.MODEL SMALL
.STACK 100H
.DATA
S DW ?
V DW ?
T DW ?
.CODE
MAIN PROC
    ;INITIALIZE DATA SEGMENT
    MOV AX,@DATA
    MOV DS,AX
WHILELOOP:
    CALL SCAN_NUM  
    MOV V,CX
    PRINTN
    CALL SCAN_NUM
    MOV T,CX
    PRINTN
    MOV AX,V
    MUL CX ;V*T
    MOV CX,2
    MUL CX  ;2*V*T
    
    CALL PRINT_NUM
    PRINTN
    JMP WHILELOOP    
    
    
    MAIN ENDP
    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
END MAIN