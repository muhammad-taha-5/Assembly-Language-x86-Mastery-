.stack 0x100
.model small
.data
num dw 5          ; number to square
result dw 0
;r2 db 0       ; store result
str db 25,0,25 dup('$')
.code
main proc
    mov ax,@data
    mov ds,ax

    ; Call CALC
    call CALC
    mov result,ax
    ;mov r2,ah  
          
   mov ah,0Ah   ;; input string  and then pint the same string 
   lea dx,str 
   int 21h  
     
;mov dl ,result
;add ah,'0'    
;mov ah,02h
;int 21h  
 
      mov ax,result    
      mov bl,10            
       div bl 
       add al,'0' 
       add ah,'0' 
       
       mov [str+22],al  
       mov [str+24],ah   
      
       mov ah,09h
       mov dx,offset str
       int 21h
    
    
    
main endp  
 .exit  
   
   CALC proc
    
    mov ax,num   
    
   call SQUARE  
   add ax, 10
  
   
    
   ret
CALC endp
   
      
      
  SQUARE proc
    mul ax      
    ret
SQUARE endp     
 
   
    
    