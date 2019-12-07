 include 'EMU8086.INC'
.model small
.stack 100h
.data
.code

main proc 
   
    print "First Input : "         
                
    mov ah , 1
    int 21h 
    mov cl , al
     
    printn 
    print "Second Input :"           
                
    mov ah , 1
    int 21h 
    
    printn
    print "Result "  
    
    add al , cl
    mov ah , 2
    sub al , 48
    mov dl , al
    int 21h
   
    mov ah , 4ch 
    int 21h
    main endp
    
end main