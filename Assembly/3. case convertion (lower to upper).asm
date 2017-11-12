;case covertion

.model small
.stack 100h
.data
msg1 db 'Enter a Lower Case Letter: $'
msg2 db 0dh,0ah,'In Upper Case it is: $'

.code
main proc 
    ;initializa ds
    mov ax,@data
    mov ds,ax
    
    ;print user prompt
    lea dx,msg1
    mov ah,9
    int 21h
    
    ;input a character
    mov ah,1
    int 21h
    sub al,20h  ;convert it to upper case
    mov bl,al
    
    ;diaplay
    lea dx,msg2
    mov ah,9
    int 21h
    
    ;display2 
    mov dl,bl
    mov ah,2
    int 21h  
    
    
    ;dos exit
    mov ah,4ch
    int 21h
    
    main endp
end main