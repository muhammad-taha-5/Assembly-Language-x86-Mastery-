.STACK 0X100
.MODEL SMALL
.DATA
 RESULT DB ?
.CODE
MIAN PROC 
 MOV AX,@DATA
 MOV DS,AX   
      
      MOV AH,0X1
      INT 0X21  
      MOV CX,0 
      SUB AL,'0'
      
 
     ; NOW FOR making the loop of factorial 
          
 
        
         
         MOV CL,AL         
         MOV AL,1  ;HERE WE MULTIPLE  WITH AL  AND 1 IS STORED IN THE AL
                 ; AND THEN CL IS MULTIPPLED WITH AL 
        HERE:
                   
          MUL CL
          DEC CL          
           
    
      CMP CL,0
      JA HERE:
      MOV RESULT,AL
      
     HLT
MIAN ENDP 
    .EXIT 
 

