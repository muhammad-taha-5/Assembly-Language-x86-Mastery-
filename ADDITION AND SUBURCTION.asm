            
                        
                        
                  ; ; NOW STRAT WITH HEXADECIMAL NUMBERS ADDITION AND SUBTRUCTION       
                        
                        
                 .STACK  0X100 
                 .MODEL SAMLL 
                 .DATA 
                 .CODE
 MAIN            PROC
    
            ; NOW STRAT WITH HEXADECIMAL NUMBERS ADDITION AND SUBTRUCTION
             ;  Q1 AX =CX+BL  \
    
                 MOV AX,0X1442
                  MOV BX,0X7235
                   MOV CX,0XA1B2 
                   MOV DX,0X4482   
                     
                     MOV AX,CX
                     MOV  BH,0                 
                     ADD AX,BX ; OR MOV AL,BL                
                                     
               
                  ;  TASK 2   ;  WE ARE AGAIN LOADING THIS DATA BECAUSE PREVIOUS DATA WAS CHANGED
                  
                       MOV AX,0X1442
                       MOV BX,0X7235
                       MOV CX,0XA1B2
                       MOV DX,0X4482
                            
                   MOV CL,DL
                   MOV CH,0 
                   ADD DX,CX
                   ADD DX,AX
                   ADD DX,BX    ; AWOESOME YOUR ANSWER WAS ABSOLLUTLY COOORECT BY THE WAY 
                     
                  
                              ; NOW  FOR THE 3RD TASK    TASK # 3 
                                                                 
                                                                 
                                                                 
                       MOV AX,0X1442
                       MOV BX,0X7235
                       MOV CX,0XA1B2
                       MOV DX,0X4482      
                                    
                                    ;  CX =AX -BX +CX + DX +AL + DH - BL  + BH - DL
                                      
                                        ADD CX,AX
                                        SUB CX,BX
                                        ADD CX,DX
                                        ADD AL,DH 
                                        ADD AL,BH 
                                        SUB AL,BL
                                        SUB AL,DL
                                        ADD CL,AL        
                                      
                             
                                        ;  TASK 4TH
                                         
                       MOV AX,0X1442
                       MOV BX,0X7235
                       MOV CX,0XA1B2
                       MOV DX,0X4482      
                            
                            ;MOV BX,DX
                            ;ADD BX,AX
                            ;ADD BX,CX
                            
                            ; MOV AL,0
                              ;MOV AL,AH
                              ; ADD AL,DL
                              ; ADD AL,DL
                               ; ADD BL,AL    ; ITS ANS COMES LIKE SMALL DIFFERENCE  LIKE "1AE8" BUT CORRECT WAS THIS "1BE8 " 
                           
                           
                                    ; NOW WITH  OTHER WAY TRY   WITH THAT WAY 
                                     MOV BX,DX
                                     MOV BH,0
                                      ADD BX,BX ;ADD BL ,BL 
                                      ADD DX ,AX
                                      ADD DX, CX
                                       ADD DX, BX ; ADD DL,BL
                                       MOV AL ,AH 
                                        MOV AH, 0 
                                        ADD DX,AX       ;CONGRATES YOU REACHED AT THE ACURATE\ CORRECT  RESULT 
                                        
                                         
                                         
                             
                             
                             
                             
                             
                             
  MAIN          ENDP 
                 .EXIT
             