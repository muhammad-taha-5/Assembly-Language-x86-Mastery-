           .STACK 0X0100 ;SP =100 
           .MODEL SMALL 
           .DATA 
            
            VAR DW ? ; IT MEANS DEFINE WORD  ;  db  =IT MEANS DEFINE single byte  ;       
           
           .CODE
MAIN        PROC 
            MOV AX,@DATA
            MOV DS ,AX              
            MOV AX ,0X1111 
                            
                           
                           
                            
                            
             ; PUSH ,AX   ; IT MEANS  THAT    
             SUB SP,2 ;sp as it is a memory  so then it could not be  tansfer into the  AX 
             ;    MOV [SP],AX;this  WILL give me error because of  the  above reason     
             MOV BP,SP
             MOV SS:[BP],AX 



 
                               
MAIN          ENDP          


              .EXIT     
              
              
           ;NOW FOR POP  now for exchange for without using" XCHG " THIS         
              POP AX ; FIRST COMES BX THEN AX
              POP BX  ; THEN BX = STORE BX  
                            ;AX = STORE BX
              
              
          ; POP THESE VALUES WITHOUT exchanging 
            POP BX                          
            POP AX    ; THIS WILL BE IN THE CORRECT ORDER 
              




            ;  TASK #2
         .STACK 0X0100 ;SP =100 
           .MODEL SMALL 
           .DATA 
            
            ARR DB 2,2,2,2,2 ; IT MEANS DEFINE WORD  ;  db  =IT MEANS DEFINE single byte  ;       
            ARR2 DB 2,2,2,2,2
            ARR3 DB 2,2,2,2,2
            ARR4 DB 2,2,2,2,2
            ARR5 DB 2,2,2,2,2
                
            .CODE
MAIN       PROC
                
           
            MOV AX ,0X1111
            MOV BX ,0X1111
            
            MOV BX ,OFFSET  ARR
            PUSH BX
           
            MOV BX ,OFFSET  ARR2
            PUSH BX
            
             MOV BX ,OFFSET  ARR3
            PUSH BX
            
             MOV BX ,OFFSET  ARR4
            PUSH BX
            
             MOV BX ,OFFSET  ARR5
            PUSH BX          
            
            
            
            POP BX 
            POP BX 
             POP BX 
           POP BX 
             POP BX
             
             
MAIN           ENDP
              .EXIT    
                   