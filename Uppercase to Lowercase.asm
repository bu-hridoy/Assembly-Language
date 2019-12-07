include 'emu8086.inc'
.STACK 100H
.MODEL SMALL
.data 
.code

MAIN PROC 
    
 
    print "Input : "   
    
    MOV AH,1        ;INPUT
    INT 21H
    
    add AL,20H      ;CONVERT FROM UPPER TO LOWERCASE 
    
    printn
    print "Your Output : " 
    
    MOV AH,2
    MOV DL,AL       ;OUTPUT
    INT 21H    
    
    MAIN ENDP

END MAIN