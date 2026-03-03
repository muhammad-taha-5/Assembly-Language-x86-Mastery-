                              ; IN  THIS TASK  WE cheek the diveder of  5 how many  are in the arry  and make the sum of them  
.stack 0X100 
.MODEL SMALL    
.DATA
   ARR DB 5,10,15,20,25
    SUM  DB ? 
    COUNT DB ?  
    DIVDE  DB 5 
     T_SUM DB ?
.CODE 

MAIN  PROC  
       MOV AX ,@DATA
       MOV DS, AX
            MOV SI,OFFSET ARR 
              
           MOV CL,DIVDE
           
             MOV CX ,5 
               
            HERE:  
            MOV AX,0
            MOV AL,[SI] 
            MOV BL,AL  
            INC SI
             
            DIV DIVDE
              
            SHR AH,1
            ADC AH,0
                 
            
            SHR AH,1
            ADC AH,0   
            
            XOR AH,1
            INC COUNT 
           ADD SUM,BL       
              
                    
            LOOP HERE: 
                           
            MOV AL,COUNT ; we could not right the operends on the both side 
                         
            MOV DS:[0X600],AL 
         
             ;MOV T_SUM ,SUM   ; THIS ALSO WRONG  BECAUSE  of both side memory
                MOV CL,SUM 
               MOV T_SUM,CL
                              
                   
MAIN ENDP 
 .EXIT 
 
 
  
 