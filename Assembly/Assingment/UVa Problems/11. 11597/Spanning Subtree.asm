;UVA 11597 - Spanning Subtree
;Author: Fahim Rahman

INCLUDE EMU8086.INC

.MODEL SMALL
.STACK 100H
.DATA
VERTICES DW ?
I DW ?
RES DW ?
.CODE
MAIN PROC
    ;INITIALIZATION DATA SEGMENT
    MOV AX,@DATA
    MOV DS,AX
    
    MOV I,1
WHILELOOP:
        
    CALL SCAN_NUM
    MOV VERTICES,CX   ;VERTICES
    PRINTN
    CMP CX,0        ;IF
    JE EXIT
    MOV AX,CX
    MOV CX,2
    DIV CX
    MOV RES,AX    ;RES IS IN AX
    PRINT "Case "
    MOV AX,I
    CALL PRINT_NUM
    PRINT ": "
    MOV AX,RES
    CALL PRINT_NUM
    PRINTN
    INC I
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