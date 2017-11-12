;character display 

.model small
.stack 100h
.code
main proc
    mov ah,2
    mov cx,256
    mov dl,0
    
printLoop:
    int 21h
    inc dl
    dec cx
    jnz printloop
    
    ;dos exit
    mov ah,4ch
    int 21h
    
    main endp
end main