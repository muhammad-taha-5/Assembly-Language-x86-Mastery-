               
          .STACK
          .MODEL SMALL
          .DATA
          
          ARR1 DB 1,2,3,4,5
   
         .CODE  

MAIN      PROC 
                   
       
      MOV AX,@DATA
      MOV DS,AX          
          
      MOV BX,OFFSET ARR1
      PUSH BX

      
     CALL SUMFUN ;THIS  THE FUNTION will called  and push the value of the offset in 'SP'      AND 'IP' WILL STORE THE LINE OF CALLING  IN THE STACK AND  'RET'  RETURN AT  THAT POINT 
                       
MAIN        ENDP  
           .EXIT 

 SUMFUN       PROC    
    
     PUSH AX
     PUSH BX
     PUSH CX
     PUSH DX
    
   ;MOV BX [SP+14]  wrong (x).        
   
   MOV BP,SP       ;THIS IS for the SP is must be stored in the 'BP' because  SP could not be stored in the general purpose regaster         
   MOV BX,[BP+10]                       
    
       
       POP DX  
       POP CX
       POP BX 
       POP AX   
             
  RET
 SUMFUN         ENDP   
         
          
          
          
                                                 ; 2nd task   # 2  
          
          .STACK 0X100
          .MODEL SMALL
          .DATA
           SUM  DW ?
              
              
               
            ;0X100
            ARR1 DB 1,2,3,4,5 ; FE
        
     .CODE  
   
            
MAIN      PROC 
                   
       
      MOV AX,@DATA
      MOV DS,AX          
                    
                    
          ; ALL ARR 1,2 3,4,5 OFFSETWILL BE STOREED IN THE BX THIS register
                    
                        
                  
       MOV BX,OFFSET ARR1
       PUSH BX
             
             
     CALL SUMFUN        ;THIS  THE FUNTION will called  and push the value of the offset in 'SP'      AND 'IP' WILL STORE THE LINE OF CALLING  IN THE STACK AND  'RET'  RETURN AT  THAT POINT 
                       
MAIN        ENDP  
           .EXIT 

 SUMFUN       PROC     
    
     PUSH AX        
     PUSH BX        
     PUSH CX        
     PUSH DX        
    
                     ;MOV BX [SP+14]  wrong         
   
   MOV BP,SP         ;THIS IS for the SP is must be stored in the 'BP' because  SP could not be stored in the general purpose regaster         
   MOV SI,[BP+10]    ; here we put offset of array in the [SI/DI/bx] ;source index     ; HERE  THIS MEANS  WE  WANT TO  SUM  OF ARRAY      
      
              ;arr  +10     ; ACTUALLY  THIS THE WAY TO STORE THE DATA IN THE STACK IN MEMORY;     
              ;ip   +8
              ;ax   +6
              ;bx   +4
              ;cx   +2
              ;dx 
               
               
       MOV AX , 0
    
      MOV CX,0      
      HERE: 
        MOV BL,[SI]   ;THIS FOR LOADING THE VALUE 
         
          ADD AL,BL
          INC SI 
          INC CX
          CMP CX,5   
          JL HERE:           
     
      
       MOV SUM,AX                    
    
       
       POP DX  
       POP CX
       POP BX
       POP AX   
             
  RET
 SUMFUN         ENDP   
     






                                               ; 3RD  TASK 

     
          .STACK
          .MODEL SMALL
          .DATA
          
          ARR1 DB 1,2,3,4,5
            SUM DW ?
         .CODE  

MAIN      PROC 
                   
       
      MOV AX,@DATA
      MOV DS,AX          
          
      MOV BX,OFFSET ARR1
      PUSH BX ; as we pushed the BX to stack that why SP contain  the offset adderss of  array  just because of  pushing                 ;THIS IS for the SP is must be stored in the 'BP' because  SP could not be stored in the general purpose regaster         

      
     CALL SUMFUN ;THIS  THE FUNTION will called  and push the value of the offset in 'SP'      AND 'IP' WILL STORE THE LINE OF CALLING  IN THE STACK AND  'RET'  RETURN AT  THAT POINT 
                  
                       
MAIN        ENDP  
           .EXIT 

 SUMFUN       PROC    
                   
       
       MOV  AX , 0X9999
       MOV  BX , 0X9999
       MOV  CX , 0X9999
       MOV  DX , 0X9999
       
       
                    
      PUSH AX
      PUSH BX
      PUSH CX
      PUSH DX 
      

  ;MOV BX [SP+14]  wrong         
   
   MOV BP,SP        ; as we pushed the BX to stack that why SP contain  the offset adderss of  array  just because of  pushing                 ;THIS IS for the SP is must be stored in the 'BP' because  SP could not be stored in the general purpose regaster         
   MOV BX,[BP+10]   ; OFFSET OF ARRAY is stored in the  BX                         
            
           MOV CX,0
           MOV AX,BX
            
         HERE:
             INC CX
             INC BX     ;OFFSET OF ARRAY IS incremented     
             ADD AX,BX
             CMP CX ,5 
              JL HERE:   
        
          MOV SUM,AX
        
       
       POP DX  
       POP CX
       POP BX 
       POP AX   
             
  RET
 SUMFUN         ENDP   
          
               



                                       ; 4TH  TASK 






   .STACK
          .MODEL SMALL
          .DATA
          
          ARR1 DB 1,2,3,4,5 
          ARR2 DB 1,2,3,4,5
          ARR3 DB 1,2,3,4,5
          ARR4 DB 1,2,3,4,5
          ARR5 DB 1,2,3,4,5
         
           SUM DB ?    
         .CODE  

MAIN      PROC 
                   
       
      MOV AX,@DATA
      MOV DS,AX          
          
      MOV BX,OFFSET ARR1
      PUSH BX ; as we pushed the BX to stack that why SP contain  the offset adderss of  array  just because of  pushing                 ;THIS IS for the SP is must be stored in the 'BP' because  SP could not be stored in the general purpose regaster         
       MOV BX,OFFSET ARR2
      PUSH BX
       MOV BX,OFFSET ARR3
      PUSH BX
       MOV BX,OFFSET ARR4
      PUSH BX
       MOV BX,OFFSET ARR5
      PUSH BX
      
     CALL SUMFUN ;THIS  THE FUNTION will called  and push the value of the offset in 'SP'      AND 'IP' WILL STORE THE LINE OF CALLING  IN THE STACK AND  'RET'  RETURN AT  THAT POINT 
                  
                       
MAIN        ENDP  
           .EXIT 

 SUMFUN       PROC    
                   
       
       MOV  AX , 0X0000
       MOV  BX , 0X0000
       MOV  CX , 0X0000
       MOV  DX , 0X0000
       
       
                    
      PUSH AX
      PUSH BX
      PUSH CX
      PUSH DX 
 

  ;MOV BX [SP+14]  wrong         
   
   MOV BP,SP        ; as we pushed the BX to stack that why SP contain  the offset adderss of  array  just because of  pushing                 ;THIS IS for the SP is must be stored in the 'BP' because  SP could not be stored in the general purpose regaster         
   MOV SI,[BP+10]   ; OFFSET OF ARRAY is stored in the  BX                         
              
              
              
              ;arr5  +12 
              ;arr4  +10  
              ;arr3  +E 
              ;arr2  +C         
              ;arr1  +10     ; ACTUALLY  THIS THE WAY TO STORE THE DATA IN THE STACK IN MEMORY;     
              ;ip   +8
              ;ax   +6
              ;bx   +4
              ;cx   +2
              ;dx       
                      
                      
                      
           MOV AX,0 
             
           MOV CX,0 
        
            
         HERE:      
               ; NOW MOV [BX],5  ; because it is  array  !!
                                 
                   ; this is putting the  5  at each  index of array                               
           
           
            
                ; MOV [BX],5 
                     
  
   
          MOV [SI],5          
          MOV BX,[SI] 
          ADD AX,BX
          INC BX                
          INC CX 
          INC SI
          CMP CX,5   
          JL HERE: 
              
                MOV SUM,AL
  
       POP DX  
       POP CX
       POP BX 
       POP AX   
             
  RET
 SUMFUN         ENDP   
        