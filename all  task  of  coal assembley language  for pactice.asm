.STACK 0X100
.MODEL SMALL
.DATA
 VAR DB ? 
.CODE 
MIAN     PROC
  MOV AX,@DATA        ; 
  MOV DS,AX           ;   MOV AX,@DATA 
  MOV AX,0            ;    MOV DS,AX 
  MOV BL,0X6          ;    MOV AL,0X6
  ADD AL,BL           ;    ADD AL,0X6
  ADD AL,BL           ;    ADD AL,0X6    ; Ttis is an other methode  
  ADD AL,BL           ;    ADD AL,0X6
  ADD AL,BL           ;    ADD AL,0X6
  ADD AL,BL           ;    ADD AL,0X6
  ADD AL,BL           ; 
  MOV VAR,AL           
                       
      
      
      
       HLT
MIAN  ENDP 
      .EXIT 
  
  
                                                                                       ;TASK2 


  .STACK 0X100
.MODEL SMALL
.DATA
 VAR DB ? 
.CODE 
MIAN     PROC
  MOV AX,@DATA         
  MOV DS,AX            
   MOV AX,0X0100            
   MOV BX,0X55AB
   MOV CX,0X0A11
   MOV DX,0X0001
   
   
   ADD AX,DX
   MOV BL,0
   MOV BL,BH
   ADD AL,BL
   SUB AL,CL
   MOV DX,AX     
      
      
       HLT
MIAN  ENDP 
      .EXIT 
      



                                                                             ;TASK  3
                             

  .STACK 0X100
.MODEL SMALL
.DATA
 VAR DB ? 
.CODE 
MIAN     PROC
  MOV AX,@DATA         
  MOV DS,AX            
  MOV AX,0X0100  
  MOV BX,0XFFAB
  MOV CX,0X0A11
  MOV DX,0X0001
  
    ADD AX,DX
   MOV DX,0
   MOV DL,BH
    ADD AL,DL
     SUB AL,CL
     SUB AL,BL
     MOV DX,AX
      
      
       HLT
MIAN  ENDP 
      .EXIT 
                                                          




                                                                               ;TASK  4


     

  .STACK 0X100
.MODEL SMALL
.DATA
 VAR DB ? 
.CODE 
MIAN     PROC
  MOV AX,@DATA         
  MOV DS,AX            
               ; THIS THE WAY TO  DO THE ADDITION OF 32 bits  
      MOV AX,0X1211  ;AH
      MOV BX,0X3333  ;AL
      MOV CX,0X5211  ;BH
      MOV DX,0X3461  ;BL
            
   
     ADD AX,CX
     ADD BX,DX
     
  
       HLT
MIAN  ENDP 
      .EXIT 
      




                                                 ;TASK  5

     

  .STACK 0X100
.MODEL SMALL
.DATA
 VAR DB ? 
.CODE                               ;other methode 
MIAN     PROC                   ;   MIAN     PROC
  MOV AX,@DATA                  ;    MOV AX,@DATA  
  MOV DS,AX                     ;      MOV DS,AX
                                ;      MOV AX,0X1442
       MOV AX,0X1442            ;      MOV BX,0X7235
       MOV BX,0X7235            ;      MOV CX,0XA1B2
       MOV CX,0XA1B2            ;      MOV DX,0X4482
       MOV DX,0X4482            ;     ADD CX,AX
                                ;     SUB CX,BX
    ADD  CX,AX                  ;      ADD CX,DX
     SUB  CX,BX                 ; 
    ADD  CX,DX                  ;      ADD AL,DH
                                ;       ADD AL,BH
                                ;        ADD BL,DL ; THESE ARE OF MINUS
      ADD BL,DL                 ;    SUB AL,BL  ; HERE THERE ARE SUBTURCTED from , AL
    ADD  CL,AL                  ;      MOV  AH,0
    ADD  CL,DH                  ;     ADD CX,AX 
    ADD  CL,BH                  ; 
                                ; 
     SUB CL,BL                  ; 
                                ; 
                                ; 
       HLT
MIAN  ENDP 
      .EXIT 
      


                                                ;TASK  6




      .STACK 0X100 
.MODEL SMALL
.DATA

.CODE
MAIN   PROC
  
 MOV AX,0X1442   
 MOV BX,0X7235
 MOV CX,0XA1B2
 MOV DX,0X4482 
 
MOV BX,DX
ADD DX,AX
ADD DX,CX
MOV AL,AH
ADD DL,AL 
MOV BH,0
ADD DX,BX
ADD DX,BX
  
          HLT
MAIN     ENDP
       .EXIT


                                                                ;TASK  7TH  ARRY ON MENORY ADDITION 

.stack
.model small 
.data
 sum  db ? 
.code
           
main proc 
  MOV AX,0X1F54 ;AH
  MOV BX,0X0398 ;AL
  MOV CX,0XC0A1 ;BH
  MOV DX,0XF02E ;BL 
  
      MOV [0X1000] ,BX 
      MOV [0X1000+2],AX
      
      MOV [0X1008],DX 
      MOV [0X1008+2],CX
  
  
  
  ADD AX,CX
  ADD BX,DX  
  
  MOV DI ,0X1010
  MOV DS:[DI],BX  
   
  MOV DI ,0X1012 
  MOV DS:[DI],AX
  
        ;  NEXT TASK 
        MOV AX, 0X2340
        OR  AX, 0X2113
        AND AX,0XABFF 
       MOV BX ,0XFF12    
       NEG BX   
       
       XOR BX,AX
     
      HLT
     
main endp  
    .exit 
       
     

                                         FIRST CRADIT LAB 
 
 
 .stack 0X0100
.MODEL SMALL 
.DATA

.CODE 

 MAIN  PROC 
 
    MOV AX ,@DATA
    MOV DS,AX 
    MOV WORD PTR DS:[0X1110]  ,0X5600  
    MOV WORD PTR DS:[0X1110+2],0XA34E
    MOV BYTE PTR DS:[0X1110+2+2],0X12
       
    MOV WORD PTR DS:[0X1115] ,0X41A0
    MOV WORD PTR DS:[0X1115+2],0X1123
    MOV BYTE PTR DS:[0X1115+2+2],0X11  
         
         MOV AX,[0X1110]
         ADD AX,[0X1115]
          
         MOV BX,[0X1112]
         ADC BX,[0X1115+2]   ;
                
         MOV CL,[0X1110+4] ;14
         ADC CL,[0X1115+4] ;19  
         
         MOV [0X111A],AX ;A 
         MOV [0X111C],BX ;C
         MOV [0X111E],CL ;E 
         
         
          
      
         
         
MAIN ENDP 
  .EXIT 
  


                                              task   1 to  10 sum  


  .STACK 0X0100
.MODEL SMALL 
.DATA
   ARR DB  1,2,3,4,5,6,7,8,9,10
    SUM DB ?
.CODE 
MAIN    PROC 
 MOV AX,@DATA
 MOV  DS,AX 
   MOV DI,OFFSET ARR
   MOV BX ,0 
  MOV CX,0  
   HERE:
  
     MOV BL,[DI] 
      ADD DL,BL
      
     INC DI
     INC  CX 
     CMP CX,0X10         
    JL HERE:  
    
     MOV SUM,DL 

     
     HLT 
MAIN ENDP  
    .EXIT 

                                     ; THIS THE TASK OF  SUM   TWO ARRAYS   CONSECUTIVELY ?? 

  .STACK 0X0100
.MODEL SMALL 
.DATA
   A DW  1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20
   B DW  1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20
   C DW ?
    SUM DB ?
.CODE 
MAIN    PROC 
 MOV AX,@DATA
 MOV  DS,AX
 MOV BX ,0 
  MOV SI,OFFSET A 
  MOV DI,OFFSET B
        
         MOV CX,20  
     HERE: 
      MOV AX,0 
       MOV AX,[SI]
       ADD AX,[DI]
       MOV C[BX],AX
          ADD SI,2
           ADD DI,2 
           ADD BX,2
     LOOP HERE:



     HLT 
MAIN ENDP  
    .EXIT 

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
 

                                                                         ;  task  1  lab  5 th  
                        

  
  .stack 0x100
 .model samll 
  .data
     ARR DW 1,1,3,4,5,6,7,8,9,10,1,1,13,14,15,16,17,19,1,18
      NUM DW 1
       COU DW 0       ; and also change their type 
 .code 
   MAIN PROC 
   MOV AX,@DATA
   MOV DS,AX                 
    
    MOV SI ,OFFSET ARR   
    
    
     mov cx ,20 
    
    HERE:
    
       MOV AL ,[SI]
       ADD SI,2        ; IF DB  ;INC SI 
        
         CMP AL,1
          JNE  SKIP:   
          JE HERE2:  
            
            RETURN:
            
           SKIP:   
    
     LOOP  HERE:  
      
    
    MAIN ENDP 
  .EXIT     
  
  
   HERE2: 
        ADD COU,1 ; INC COU 
        JMP RETURN:
    
                                                                         impro  task  of sortting  inthe arr 
        THIS THE LOGIC  OF ; THIS CODE  
 MOV BX,20-1
  
  OUTER:
  MOV SI,OFFSET ARR
   
    MOV CX,BX
     
      INNER:
         MOV AL,[SI]
         CMP AL,[SI+1]
          JLE NO_SWAP:
          XCHG AL,[SI+1] 
          MOV  [SI],AL
          
           
          NO_SWAP: 
          INC SI  
         
      LOOP INNER:  
                   
       DEC BX
       CMP BX,0                        
   JNZ OUTER:
     






  .stack 0x100
 .model samll 
  .data
     ARR DB 1,2,3,4,14,15,16,17,19,20,,10,11,12,13,5,6,7,8,9,18
      NUM DB 1
       COU DB 0       ; and also change their type 
 .code 
   MAIN PROC 
   MOV AX,@DATA
   MOV DS,AX                 
    
       
   mov bx,20-1         ; outer loop counter
  outer:      
  
            MOV SI ,OFFSET ARR
            mov cx,bx 
           inner:
           ; NOW FOR THE SWAP AND  CMP
             mov al,[si]
    cmp al,[si+1]
    jle no_swap
    xchg al,[si+1]
    mov [si],al
no_swap:
           add si,1   ;inc  si   
   
           loop inner
           
       dec bx 
       cmp bx,0
       jnz outer:  ;  till  not become zero 
         
      
    
    MAIN ENDP 
  .EXIT     

  