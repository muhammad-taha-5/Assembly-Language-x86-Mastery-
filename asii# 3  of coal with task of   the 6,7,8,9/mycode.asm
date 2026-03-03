.stack 0x100   
.model small 
.data 
 w1 dw 0x9832 
 w2 dw 0x7832
 
 result dw ?   
.code 

main  proc 
    mov ax ,@data
    mov ds, ax  
   mov  ax ,0
   mov es, ax
   mov word ptr es:[101*4+0], apna
   mov word ptr es:[101*4+2] ,cs
    mov ah,1h 
    INT 65h     ;call inturpt     
   
     mov ah,2h 
      int 65h 
      
       mov ah,3h 
      int 65h
    
main endp    
.exit           
   
   apna proc 
    ; when function call  hoga too  ip,cs, flage 16 bit register  
      cmp ah,2h 
      je  multiple:
      cmp ah,3h
      je did: 
       mov  si,[w1]
       mov di,[w2]
       mov dx,si 
       add  dx,di   
        mov result , dx 
        ret
    
    
          
       multiple:
       mov  si,[w1]
       mov di,[w2]
           
        mov ax,si   
        mov bx,di 
        mul bx
         
         mov [result],ax       
         mov [result+2],dx
       
    ret     
    
    did:
       mov  si,[w1]
       mov di,[w2]
        
        mov ax,si
        mov bx,di
        div bl
        
         mov [result],ax ;; lower byte is in ax
         mov [result+4],dx    
    
    
    
    iret 
    apna endp
   
   
     ;; same concpet but  int 67h    
   
;;.stack 0x100   
;;.model small 
;.data 
; w1 dw 0x9444
;w2 dw 0x8943
 
; result dw ?   
;.code 

;main  proc 
;    mov ax ,@data
;   mov ds, ax  
;   mov  ax ,0 
;   
;   mov es, ax
;    mov word ptr es:[101*4+0], offset apna   ; Offset address
;    mov word ptr es:[101*4+2], cs   
;    mov ah,1h 
 ;   INT 65h     ;call inturpt     
   
;     mov ah,2h 
 ;     int 65h
  ;    
   ;   mov ax, 4C00h
    ;int 21h
     ; 
;main endp    
 ; .exit              
   
  ; apna proc 
    ; when function call  hoga too  ip,cs, flage 16 bit register  
   ;   cmp ah,2h 
    ;  je  multiple:  
      
     ;  mov  si,[w1]
      ; mov di,[w2]
       ;mov dx, si 
      ; add dx, di   
     ;   mov result , dx 
     ;      ret 
    
    
          
      ; multiple:
      ; mov  si,[w1]
     ;  mov di,[w2]
           
     ;   mov ax, si   
     ;   mov bx, di 
    ;    mul bx
     ;    mov [result],ax       
     ;    mov [result+2],dx
       
   ; iret 
   ; apna endp  