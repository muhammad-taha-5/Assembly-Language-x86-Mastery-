                .STACK 0X100
                .MODEL SMALL
                .DATA  
                
                 VAR DB ? 
                
                .CODE 
 MAIN           PROC
                MOV AX,@DATA
                MOV DS,AX     
                     
                     
               MOV AL,0 
                     
        OUTERLOOP:
                
                MOV AH,0
        INNERLOOP:      
               INC AH
               INC VAR
               CMP AH,5
               JNE INNERLOOP:
               
               INC AL
               CMP AL,5 
               JNE OUTERLOOP: 
               
                    
                    
                    
                    
                    
             MOV AL ,0
         OUTLOOP:   
                MOV AH,5
           INN_LOOP:
                DEC AH
                 INC VAR 
                 CMP AH,AL 
                JGE INN_LOOP:
       
                INC AL
                INC VAR
                CMP AL ,5
                JNE OUTLOOP:     
                    
                    
                    
                 
               MOV AL,5       
        OUTERLOO:
                
                MOV AH,5
        INNERLOO:      
               DEC AH
               DEC VAR
               CMP AH,0 
               JNE INNERLOO:
               
               DEC AL
               CMP AL,0 
               JNE OUTERLOO: 
                 
      
                    
                    
                 
                 
                 
                 MOV AL,0 
                     
        OUTERL:
                
                MOV AH,AL
        INNERL:      
               INC AH
               INC VAR
               CMP AH,5
               JNE INNERL:
               
               INC AL
               CMP AL,5 
               JNE OUTERL:        
                    
                    
                     
               MOV AL,5       
        OUTERLO:
                
                MOV AH,AL
        INNERLO:      
               DEC AH
               DEC VAR
               CMP AH,0 
               JNE INNERLO:
               
               DEC AL
               CMP AL,0 
               JNE OUTERLO: 
                 
              
                    
                    
                    
   MAIN            ENDP 
                   .EXIT
                   





                                      /// 3RD TASK 
                       
       .STACK 0X0100
               .MODEL SAMLL 
               .DATA 
               
                 SUM DB ? 
                 ARR DB 1,2,3,4,5
             
                 .CODE
                  
  MAIN            PROC                
                 
             MOV  AX,@DATA
             MOV DS,AX  
               
             MOV DI,OFFSET ARR
                           
             MOV AX,0    
                  
    LOOPIT:
              CMP AL ,5     
              JNL J_NOT_LESS_THAN: 
                   
              INC AL 
              MOV BL,[DI]
              ADD SUM,BL
              INC DI
               
              ; MOV AH,VAR   ;EXTRA 
               JMP LOOPIT:
               
             J_NOT_LESS_THAN:
                
 MAIN             ENDP
                  .EXIT 
                       
                          
                          




                                    // NEW CODE  TOAPPLY THE LOOP WITH NEW METHODE 

                .STACK 0X0100
               .MODEL SAMLL 
               .DATA 
               
                 VAR DB ? 
                  
             
                 .CODE
                  
  MAIN            PROC                
               
             MOV  AX ,@DATA
             MOV DS,AX    
            
                           
             MOV AL,0    
                  
    LOOPIT:
              CMP AL ,5     
              JNL J_NOT_LESS_THAN: 
         
                
              INC AL     
              INC VAR   
             ; MOV AH,VAR   ;EXTRA 
               JMP  LOOPIT:
               
             J_NOT_LESS_THAN:
                
 MAIN             ENDP
                  .EXIT 







               .STACK 0X0100
               .MODEL SAMLL 
               .DATA 
               
                  SUMUL DB ? 
                 ARR DB 1,2,3,4,5
             
                 .CODE
                  
  MAIN            PROC                
            
             MOV  AX,@DATA
             MOV DS,AX  
                  
                  
            MOV SI,OFFSET ARR     
                   
              MOV CL ,0
                
                
       LOOPIT:
       
              
              CMP CL ,5    
            JNL NOT_LESS_THAN:
 
             MOV BL,[SI]
             MUL BL
            INC SI
            JMP LOOPIT:  
            
             MOV AL,BL
             MOV SUMUL,AL   
            
             
            INC CL
                
                 
          NOT_LESS_THAN:
         
              
                  
                  
 MAIN             ENDP
                  .EXIT 
                       
 
              
         // new code at stack  0x0100 it means that total 100 ( 256) biyts to use 
          .stack 0X0100
          .model small 
          .data 
          
           arr2 DB 2,2,2,5,5
           V2  DB ?
           .CODE
 MAIN       PROC             
            
            MOV AX, @DATA
            MOV DS,AX
            MOV AX , 0X1111
           ; MOV PUSH,AX
            SUB SP,2  ; SUB SS:[SP],2
            MOV BP,SP
            MOV [BP],AX 
MAIN         ENDP 
 
             .EXIT 
            
             
          
         
               
              
              
 
 
 
 
 
 
 
 
 
 
 
 
 
 
                       







