 .STACK 0X100
  .MODEL SAMLL 
  .DATA      
    
     ARR1 DB 7,3,6,5,9
       
      .CODE 
      
MIAN      PROC      
      
           MOV AX,@DATA          
           MOV DS,AX
           MOV SI, OFFSET ARR1      
  
          
          
    OUTERLOOP:
          MOV DI,SI  ;J=I  
          INC DI     ;J = I + 1 
    INNERLOOP:
      
                     
                     ;THIS   WRONG METHODE to do 
                       ;CMP [DI],[SI]   X  " WRONG " I  compare  j 
         ; NOW FOR IF condition in the we use  here the swap condition             
                     
          MOV AL,[DI] ;J 
          CMP AL,[SI] ; compare  AL /j  to SI /i ; if j<i then " j will be exchanged with  i " 
          JL SWEPT:   ;  if j<i then " j will be exchanged with  i "                    
                     
            RETURN:
            
      INC DI
      CMP DI,OFFSET ARR1+4
      JL INNERLOOP:
    
     
     
     
     
   INC SI
   CMP SI ,OFFSET ARR1+3 ; it means that   
   JL OUTERLOOP:  
       
       
  
MIAN       ENDP    
          .EXIT

      SWEPT:
      
        XCHG AL,[SI] ; 2ND IS exchanged by  si means = 1st       
        MOV [DI],AL  ; THAT AL WILL BE SHIFTED INTO  [DI]  IT MEANS 2ND INDEX OF THE SAME ARRAY    
        JMP RETURN:
      
                     

                           2ND TASK  SAME TASK WITH  SIMPLE WAY  AND USING SKIP  CONDITION 

.STACK 0X100 
.MODEL SAMLL 
.DATA

ARR DB 2,7,12,5,6,13,9,8,11,10
ARR2  DB  ?
.CODE 


 MIAN       PROC  
  MOV AX,@DATA
  MOV DS,AX
  MOV SI,OFFSET ARR
         
   
    
      OUTERLOOP:
 
             MOV DI,SI  ;i=0
             INC DI     ;J=i+1 
             
      INNERLOOP:
                
           ;NOW FOR IF condition
       ; AS WE COULD NOT COMPARE THESE TWO MEMORYS WITH EACH OTHER
         ;CMP [SI],[DI] THATS wrong X               
          
          MOV AL,[DI] ;AL=J ;JUST  FOR THE SACK OF COMPARING   
          CMP AL,[SI]
          JGE  SKIP:
         
          XCHG [SI],AL
          MOV [DI],AL             
             
             SKIP: 
       
             INC DI 
             CMP DI,OFFSET ARR+10        
                    
        JL INNERLOOP:     

             INC SI 
             CMP SI,OFFSET ARR+9      
             JL OUTERLOOP:  
 
                 
         
    
    


MIAN  ENDP 
     .EXIT 


               
                                            ;  3RD TASK  USING DIFINE WORD                     




.STACK 0X100 
.MODEL SAMLL 
.DATA
                       ;  "THIS  WITH DIFINE WORD" !
ARR DW 2,7,12,5,6,13,9,8,11,10
ARR2  DW  ?
.CODE 


 MIAN       PROC  
  MOV AX,@DATA
  MOV DS,AX
  MOV SI,OFFSET ARR
         
   
    
      OUTERLOOP:
 
             MOV DI,SI  ;i=0
              ADD DI,2  ;J=i+1 
             
      INNERLOOP:
                
           ;NOW FOR IF condition
       ; AS WE COULD NOT COMPARE THESE TWO MEMORYS WITH EACH OTHER
         ;CMP [SI],[DI] THATS wrong X               
          
          MOV AX,[DI] ;AL=J ;JUST  FOR THE SACK OF COMPARING   
          CMP AX,[SI]
          JGE  SKIP:
         
          XCHG [SI],AX
          MOV  [DI],AX             
             
             SKIP: 
       
             ADD DI,2 
             CMP DI,OFFSET ARR+20        
                    
        JL INNERLOOP:                  
        
                 
                ADD SI,2
             CMP SI,OFFSET ARR+18                  
 
             JL OUTERLOOP:  
 
                 
         
    
    


MIAN  ENDP 
     .EXIT 


               
                  
