.STACK 0x0100
.MODEL small 
.DATA


.CODE 

MAIN     PROC 
  ; WITH ECHO
  
 MOV AH,0X1           ; AH,0X1 = WITH ECHO         /AH,0X7 = WITHOUT  ECHO
  INT 0X21   
           ; DOS /BIOS 
          
      MOV AH,0X1     
      INT 0X21   
          
      MOV AH,0X1     
      INT 0X21   
       
       
          ; WITHOUT ECHO THESE COULD NOT Shwon AT output box "   
          
      MOV AH,0X7     
      INT 0X21   
          
      MOV AH,0X7     
      INT 0X21   
       
      MOV AH,0X7     
      INT 0X21   
       
       
                   ; WITH ECHO 
       
      ; NOW COUT<<  CALL INTERUPT 
      MOV DL,'H'
      MOV AH,0X2 ; FOR PRINTTING 'H'
      INT 0X21    ; after call mov al,dl    
      
       ; now for adding two values and then print by console  by "MOV AH 0X2"
      MOV AH,0X1   ; 1ST NUM 
      INT 0X21
       SUB AL,'0'
       MOV DL,AL
      MOV AH,0X1   ; 2ND NUM 
      INT 0X21 
      SUB AL,'0'         
      ADD DL,AL   ;ADDINTION 
       
           ;NOW FOR OUTPUT  PRINTTING 
    ADD DL,'0'
    MOV AH,0X2    ; PRINTTING CONDITION 
    INT 0X21
           
           
           
           
           ;WITHOUT ECHO  
     
       ; now for adding two values and then print by console  by "MOV AH 0X2"
      MOV AH,0X7   ; 1ST NUM 
      INT 0X21
       SUB AL,'0'
       MOV DL,AL
      MOV AH,0X7   ; 2ND NUM 
      INT 0X21 
      SUB AL,'0'         
      ADD DL,AL   ;ADDINTION 
       
           ;NOW FOR OUTPUT  PRINTTING 
    ADD DL,'0'
    MOV AH,0X2    ; PRINTTING CONDITION 
    INT 0X21
           
           
       
        
 
    HLT ;;it  rerovers the value of last ah 
   MAIN  ENDP 
   .EXIT 