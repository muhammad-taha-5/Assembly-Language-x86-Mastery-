                   .STACK 0X100 
                   .MODEL SAMLL
                   .DATA
                   
                    VAR DB 0X01 
                   ARR1 DB 0X10
                   ARR2 DW 0XFFFF
                   
                   
                   
                   .CODE   
MAIN                PROC
                    MOV AX,1 
                    CMP AX,0
                    JZ  HERE
                    JNZ HERE2 
                          
                      RETURN:
                   
 ;THIS THE FOR  JMP EQUAL  AND JMP NOT EQUAL
                          
                  MOV AX ,2
                  MOV BX ,2
                  CMP AX,BX
                  JE HERE  
                  JNE HERE2 
                  
                 RETURN2:
                      
         ;now  for the   JLE \ (JNLE)
                                     
                MOV  AX,11 
                CMP AX,10
                JLE HERE3
                JMP HERE4
                RETURN3:
                     
                RETURN4:    
                      
                      
                      
                      
                      
                          
MAIN                ENDP
                   .EXIT           
                              
                
                                          
              HERE: 
              MOV AX ,0X1111
              MOV BX ,0X1111
              MOV CX ,0X1111   
              JMP RETURN2 
                      
                      
                            
                  HERE2: 
              MOV CX ,0X2222
              MOV DX ,0X2222
              MOV AX ,0X2222             
             
             JMP RETURN 
                        
                        
                  HERE3: 
              MOV CX ,0X2222
              MOV DX ,0X2222
              MOV AX ,0X2222
              JMP RETURN3
                           
                     HERE4: 
              MOV CX ,0X2222
              MOV DX ,0X2222
              MOV AX ,0X2222 
              JMP RETURN3