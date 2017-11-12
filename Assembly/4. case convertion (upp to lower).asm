;case covertion upper to lower

.model small
.stack 100h   
.data
msg1 db 'Enter The Upeer Case Letter: $'
msg2 db 0ah,0dh,'The Lower Case Letter: $'

.code
main proc
    ;initialize the ds
    mov ax,@data
    mov ds,ax
    
    ;show the prompt msg
    lea dx,msg1
    mov ah,9
    int 21h
    
    ;input
    mov ah,1
    int 21h
    add al,20h      ;converting the upper case to lower case
    mov bl,al
    
    ;show the 2nd msg
    lea dx,msg2
    mov ah,9
    int 21h
    
    ;print the output
    mov dl,bl
    mov ah,2
    int 21h
    
    ;return to dos
    mov ah,4ch
    int 21h
    
    main endp
end main