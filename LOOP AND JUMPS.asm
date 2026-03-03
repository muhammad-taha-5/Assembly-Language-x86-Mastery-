         
         .STACK 0X100
         .MODEL SAMLL  
         .DATA 
     
                    
                    
               VAR DB ?
               VAR2 DB 5
                 ARR DB 3 (4) ,2 (1)
                 
                  
           .CODE 
           
MAIN      PROC
                    
         MOV  AX,@DATA 
         MOV  DS,AX
         MOV AX,1     ;NOW HERE IN THIS  CODIITION  it moves to skip condition 
         CMP AX,2
         JG  HERE:
 
         MOV VAR, 10  
         JMP SKIP:   
       
        HERE:    
           MOV VAR,20 
              
              SKIP:
              
              
              
               ; THIS THE LOOP     
       MOV CX,5
   LOOPHERE:        
              
         ADD AX,1 
         DEC CX     
         CMP CX,1
         JNE LOOPHERE:     
        ; JMP LOOPHERE ;  THIS condition make  loop infinte    
         
                       
              
           ;now loops with JMPS
                       
                MOV AL,5 ;WE CAN PRIVNTE  the storage in the registers \
            MOV VAR,0   
           HERE3: 
                   INC VAR 
                   
               DEC AL ;SUB AL,1
               CMP AL,1
               JNE HERE3: ; IF WE   don't  want to use the GR THEN  WE CNA ALSO CREATE A  VER OF instead  of  using  AL\AX WE should use  VAR NAMED  x,y,z
             
              
                 
                
                
                       ;now loops with JMPS
                       
                    ;WE CAN PRIVNTE  the storage in the registers \        
            HERE2 :   
                INC VAR 
                   
               DEC VAR2 ; SUB AL,1
               
               CMP VAR2,1
               JNE HERE2:
             JMP SKIP2: 
             
                    SKIP2:   
                       
    MAIN         ENDP
                .Exit
    
               
               
               
               
               
               
               
               