;UVA 12577 - Hajj-e-Akbar
;Author: Fahim Rahman

INCLUDE EMU8086.INC
.MODEL SMALL
.STACK 100H
.DATA
ARY DB ?
TC DW ?
.CODE
MAIN PROC
    ;INITIALIZE DATA SEGMENT
    MOV AX,@DATA
    MOV DS,AX
    
    MOV TC,1
WHILE:
    MOV AX,TC
    MOV TC,AX
    MOV BX,0
INPUT:    
    ;INPUT A ELEMENT
    MOV AH,1
    INT 21H
    CMP AL," "   ;CHECK SPACE
    JE PRINTINP
    CMP AL,13    ;CHECK ENTER
    JE PRINTINP
    MOV ARY[BX],AL   ;INSERT IN ARRAY
    INC BX
    JMP INPUT
    
PRINTINP:
    PRINTN
    MOV SI,0    

OUTPUT:
    MOV DL,ARY[SI]
    CMP DL,"*"      ;IF * Then BREAK
    JE EXIT
    CMP DL,"H"
    JE HA
    CMP DL,"U"
    JE HAA
    INC TC
    JMP WHILE
    
HA:
   PRINT "Case "
   MOV AX,TC
   CALL PRINT_NUM
   PRINT ": "
   PRINTN "Hajj-e-Akbar"
   INC TC
   JMP WHILE
   
   
HAA:
   PRINT "Case "
   MOV AX,TC
   CALL PRINT_NUM
   PRINT ": "
   PRINTN "Hajj-e-Asghar"
   INC TC
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
                