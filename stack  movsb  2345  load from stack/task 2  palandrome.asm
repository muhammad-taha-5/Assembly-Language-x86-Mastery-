.stack 0x100 
.model small  
.data 
string  db 'tata' 
;len equ ($-string)   this how fin the length

  
.code
  

mian  proc
    
    
    
    mov ax,@data
    mov ds,ax   ; this loading  of the ds  and es seg  is must  
    mov es, ax  ; this loading  of the ds  and es seg  is must
    
     mov si ,offset string
    
       
 mov al,ds:[si]     
 mov ah,ds:[si+3]
 mov bl,ds:[si+1]
 mov bh,ds:[si+2]
    
    
    cmp al,ah
    cmp bl,bh   
    je here:
       
    
    jne here2:     
    
     retun1:
     retun2:   
 
    
    
 mian endp
 .exit
 
  here:
   mov dx,1 
    jmp retun1:
 
 here2:
 mov dx,0
 jmp retun2:  
 
  