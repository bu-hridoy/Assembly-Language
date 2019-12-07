INCLUDE 'EMU8086.INC'
.model small
.stack 100h
.data      
    n db ?
.code

main proc   
    
       mov ah , 1
       int 21h
       sub al , 48
       mov n , al 
       
       printn
     
       mov bh, 1
       Loop1:
       
            cmp bh , n
            jg Loop1_EXIT 
            mov bl , 1    
            
            loop2:
                cmp bl , bh
                jg Loop2_EXIT
        
                print '*'      
                inc bl
                jmp Loop2
            
            
            Loop2_EXIT:
            printn
            inc bh
            jmp loop1
       Loop1_exit:
   
   
  
mov ah , 4ch
    int 21h
    main endp

end main 