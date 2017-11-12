;UVA 12478 - Hardest Problem Ever
;Author: Fahim Rahman

INCLUDE EMU8086.INC
.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    ;JUST PRINT
    PRINTN "KABIR"    
    
    ;RETURN TO DOS
    MOV AH,4CH
    INT 21H     
         
    MAIN ENDP
END MAIN 
