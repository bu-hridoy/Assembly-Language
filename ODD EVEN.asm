   
INCLUDE 'EMU8086.INC'
.model small
.stack 100h
.data      
    n db ?
.code

main proc   
    
       
    mov ax , 24  ; input
    mov bl , 2
    
    div bl       ; ah = reminder , al = result
     
    cmp ah , 0 
   
   jg odd 
      print "EVEN"
      jmp exit
         
   odd:
       print "ODD"  
       
   exit:
   

    main endp

end main 