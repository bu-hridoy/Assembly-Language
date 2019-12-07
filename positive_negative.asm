INCLUDE 'EMU8086.INC' 
.model small
.stack 100h
.data

.code

main proc
    
    mov bx , 20     ; input
    cmp bx , 0
    jl if
    jge else
    
    if:
    printn "negative"
    
    jmp shesh
    
    else:
    printn "possitive" 
   
    shesh:  
     
    
    mov ah , 4ch
    int 21h
    main endp 
end main
         