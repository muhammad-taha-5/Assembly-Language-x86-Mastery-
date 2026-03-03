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

  