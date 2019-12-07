    .model small
    .stack 100h 
    .data
           A db "Bangladesh","$"
           B db "Banglacah","$"
    .code
    main proc
                                      ;Strings are not match at index 7'th.
    MOV       BL,"d"                  ;Put string("d") in BL to Compare
    MOV       BH,"c"                  ;Put string("c") in BH to compare
    CMP       BH,BL                   ;Compare BH and BL
    JG        Bad    
     
        MOV AX, SEG A                    ;Move Segment Number into AX
        MOV DS, AX                       ;Move Segment number into DS
        MOV AH, 09h                      ;Function 09 of INT21,Prnt String
        LEA DX, A                        ;Load Effective Address of string
        INT 21h                          ;Execute Print String
     
        MOV AH, 4Ch                    
        INT 21h                            
     
    Bad:
                                        ;DO SOMETHING LIKE DISPLAY A BAD LOGIN MESSAGE
        MOV AX, SEG B
        MOV DS, AX
        MOV AH, 09h
        LEA DX, B
        INT 21h
                   
        MOV AH, 4Ch                     ;Function 4C of INT21, exit dos
        INT 21h                         ;Execute Exit Dos
     
    main endp
    end main