.STACK 0X100 
.MODEL SMALL 
.DATA
 ARR DB  7,8,9,4,19,17,16,17,18,20,13,14,15,3,5,6,10,11,12,16

.CODE 
MAIN  PROC 
     
 MOV AX,@DATA
 MOV DS, AX  
      MOV SI,OFFSET ARR
     MOV AL,[SI] 
      MOV CX ,20
           
   MOV AX,0x00
   MOV BX, 0X00FF
   
   OUTER: 
   CMP Al,[SI]
   JB GRE:
   JMP SKIP:  
           
     GRE:
     MOV Al,[SI]
     
 SKIP:      
          INC SI 
   LOOP OUTER: 
        
        
        
        
        
   MOV SI,OFFSET ARR
    MOV BL,[SI] 
      MOV CX,20
      
   sec:    
   
   CMP Bl,[SI]
   JA LESS:
   JMP SKIP2:  
           
     LESS:
     MOV BL,[SI]
     
 SKIP2:      
          INC SI
   LOOP sec: 
      
       
              HLT
       

MAIN  ENDP 
     .EXIT 
     
     
       