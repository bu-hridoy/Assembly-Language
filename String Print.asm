include 'emu8086.inc'
.model small
.stack 100h
.data  
    msg db "I AM NOTHING$"
.code

main proc
    
    mov ax , @DATA
    mov ds , ax
    lea dx , msg
    mov ah , 09H
    int 21h
           
           
    mov ah , 4ch
    int 21h
    main endp
end main