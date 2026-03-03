 
.stack 0x100 
.model small  
.data 
string  dw 'tahataha' 
string2 dw 5 dup(0)  
.code
  

mian  proc
    mov ax,@data
    mov ds,ax   ; this loading  of the ds  and es seg  is must  
    mov es, ax  ; this loading  of the ds  and es seg  is must
    
     mov si ,offset string
     mov di ,offset string2
     
      mov cx, 4
    
   rep  movsw
    
   mov ds:[di+4],'\0'  
    
    
    
 mian endp
 .exit
 
 
 
 
 
 
  