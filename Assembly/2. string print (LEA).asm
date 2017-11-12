;print string program

.model small
.stack 100h
.data

msg db 'Hello World$'

.code
main proc
    ;initialize ds
    mov ax,@Data
    mov ds,ax
    
    ;display the string
    lea dx,msg
    mov ah,9
    int 21h
    
    ;return to dos
    mov ah,4ch
    int 21h
    
    main endp
end main