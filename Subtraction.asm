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
    
    sub cl ,al
    mov ah , 2
    add cl , 48
    mov dl , cl
    int 21h
   
    mov ah , 4ch 
    int 21h
    main endp
    
end main