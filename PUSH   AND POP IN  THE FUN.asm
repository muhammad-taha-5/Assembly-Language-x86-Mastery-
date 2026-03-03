         .STACK 0X100
          .MODEL SMALL
           .DATA
              VAR DB ?
             .CODE
 
MAIN      PROC
 
 
   MOV AX ,@DATA
   MOV DS , AX
              
          
              
              
    CALL  FILLF   ;THIS FUNTION WILL PUT VALUES INTHE AX ,BX, CX ,DX  0X9999 IN ALL 
      
     ; THIS IN WHICH we want to perserve the some speacial vales  we will put them into the stack
     
    CALL IMPRO_VALUE  
      
      
 
  MAIN      ENDP
          .EXIT
      
 IMPRO_VALUE    PROC      
  
       PUSH AX 
       PUSH BX
       PUSH CX
       PUSH DX
       
              ; NOW HERE WE PUT THE 9999 IN THE   AX ,BX, CX ,DX  0X0000 IN ALL
       MOV AX , 0X0000
       MOV BX , 0X0000
       MOV CX , 0X0000
       MOV DX , 0X0000
  
       POP AX 
       POP BX
       POP CX
       POP DX
      
  RET
 IMPRO_VALUE   ENDP
      
      
      
      
           
           
FILLF     PROC
       MOV AX , 0X9999
       MOV BX , 0X9999
       MOV CX , 0X9999
       MOV DX , 0X9999

RET
FILLF   ENDP






                                           ;  TASK # 2
          .STACK 0X100
          .MODEL SMALL
           .DATA
              VAR DB ?
             .CODE
 
MAIN      PROC
 
 
   MOV AX ,@DATA
   MOV DS , AX
              
          
              
              
    CALL  FILLF   ;THIS FUNTION WILL PUT VALUES INTHE AX ,BX, CX ,DX  0X9999 IN ALL 
      
     ; THIS IN WHICH we want to perserve the some speacial vales  we will put them into the stack
     
    CALL IMPRO_VALUE  
      
      
 
  MAIN      ENDP
          .EXIT
      
 IMPRO_VALUE    PROC      
  
       PUSH AX 
       PUSH BX
       
       PUSH DX
       
     ; NOW HERE WE DIVIDE  
      
         ;CL/CH
         ;AL/CH  
         ;reminder  =CH / Ah
         ;qouient   =CL / AL 
      
            MOV AL,CL
            MOV AH,0
            DIV CH
                ; BECAUSE  THE RESULT WILL STORE IN THE AX  THAT'S WHY WE MOV  THE VALUE OF AX INTO THE CX  
                 
                 
            MOV CL,AL
            MOV CH,AH 
      
      
               
               
       POP AX 
       POP BX
       POP DX
      
  RET
 IMPRO_VALUE   ENDP
      
      
      
      
           
           
FILLF     PROC
       MOV AX , 0X9999
       MOV BX , 0X9999
       MOV CX , 0X0209
       MOV DX , 0X9999

RET
FILLF   ENDP     



 






                                       ;TASK : #3
                                       
                                       
          .STACK 0X100
          .MODEL SMALL
           .DATA
             
           REMIN DB ?
           QOU  DB ?    
             
             
             .CODE
 
MAIN      PROC
 
 
   MOV AX,@DATA
   MOV DS,AX
              
          
              
              
    CALL  FILLF   ;THIS FUNTION WILL PUT VALUES INTHE AX ,BX, CX ,DX  0X9999 IN ALL 
      
     ; THIS IN WHICH we want to perserve the some speacial vales  we will put them into the stack
     
    CALL IMPRO_VALUE  
      
      
 
  MAIN      ENDP
          .EXIT
      
 IMPRO_VALUE    PROC      
  
       PUSH AX 
       PUSH BX
       PUSH CX
       PUSH DX
       
     ; NOW HERE WE DIVIDE  
      
         ;CL/CH
         ;AL/CH  
         ;reminder  =CH / Ah
         ;qouient   =CL / AL 
                           
                           
                           
            MOV AL,CL
            MOV AH,0
            DIV CH
                ; BECAUSE  THE RESULT WILL STORE IN THE AX  THAT'S WHY WE MOV  THE VALUE OF AX INTO THE CX  
                 
                 
            MOV QOU,AL
            MOV REMIN,AH 
      
      
               
               
       POP DX 
       POP CX
       POP BX
       POP AX
      
  RET
 IMPRO_VALUE   ENDP
      
      
      
      
           
           
FILLF     PROC
       MOV AX , 0X9999
       MOV BX , 0X9999
       MOV CX , 0X0209
       MOV DX , 0X9999

RET
FILLF   ENDP 
                                       
                                        


















