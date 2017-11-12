;Title Echo program

.model small
.stack 100h
.code
main proc
    
    ;input a character
    mov ah,1
    int 21h
    mov bl,al
    
    ;print a new line
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    ;display character
    mov dl,bl
    int 21h
    
    ;return to dos
    mov ah,4ch
    int 21h
    
    main endp
end main