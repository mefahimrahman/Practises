;UVA 12461 - Airplane
;Author: Fahim Rahman

INCLUDE EMU8086.INC
.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC

WHILE:        
    CALL SCAN_NUM
    PRINTN
    CMP CX,0
    JE EXIT   ;IF N==0
    ;ELSE
    PRINTN "1/2"     
    ;INFINITE LOOP
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