         .STACK 0X100
         .MODEL SAMLL  
         .DATA 
     ; HERE WE DO DECLEARATION  OF THE ARR AND VARIABLES
              
  
              ARR DB 3 (4) ,2 (1)
                               
               
          .CODE 
          
          
 MAIN           PROC 
     ;IF ELSE
               
       MOV AX,0X35
       AND AX,1  
       CMP AX,0
       JE HERE   
       JMP HERE2
                 
   RETURN:    
      
                MOV CX,5
   
   
   LOOPHERE:            
              
        ADD AX,1 
         DEC CX     
         CMP CX,1
        JNE LOOPHERE:     
         
         
         
         
    
    MAIN         ENDP
                .Exit
    
                         
                         
           HERE:                  
      ; IF EVEN HA TO 9999 DALI DO  !
       MOV BX, 0X1111
       JMP RETURN: 
       
                  
                  
                  
         HERE2:
        ; IF ODD HA TO 0000     
       MOV BX,0X0000
       JMP RETURN: 
       
        
       
       
       
  
  
  
  
    
    
             
          
          