
            .STACK 0X0100  
            .MODEL SMALL
            .DATA  
           i  DB ?  
           VAR DB 5
           
           .CODE   
             
MAIN        PROC 
                   
                ; THIS IS FOR JG OR  JNG \ JA OR JNA
                 ; THIS  FOR JUMP greater or not greater .
                          
            MOV BX,@DATA
            MOV DS,BX
            CMP BX,2
                
            JGE HERE:        
                    ;  IF=> 2 THEN  VAR = 20 && IF<= THEN  VAR = 10   
            MOV VAR,10
             
 JMP SKIP:
           HERE:
           MOV VAR ,20     
   SKIP: 
             
                    
                   
         MOV AX,0X35
         ROR AX,1 
        JC HERE1: 
        JMP HERE2:             
        RETURN:  
             
          
          
          
          
          
          
          
          
          
          
            MOV i,0x5    ;MOV AL,5 ;MOV AX,5  ;AL;CL; BL
              
             
      HERE3:        
             DEC i  ;AL  ;CL    ;BL    
             INC VAR ;VAR  ;AL   ;AL   
             CMP i,0  ;AL,0 ;CL,0 ;BL,0 
            JNE HERE3:
             
             
                    
                       
           MAIN      ENDP 
                    .EXIT
           
             
             
              
             
             HERE1: 
             MOV BX,0X11  
              ROL AX,1
               JMP RETURN:
             
           HERE2:
           MOV BX,0X22
           ROL AX,1
            JMP RETURN:
               
             
             