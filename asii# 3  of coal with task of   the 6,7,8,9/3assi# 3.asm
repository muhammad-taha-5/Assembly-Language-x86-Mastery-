.stack 0x100   
.model small 
.data 
 s1 dw  "Enter the row x :$" 
 s2 dw "Enter the col y :$"
 newline db 0xA,0xD,'$'
 h1 db "hellow"
 h2 db  "have A good day" 
x dw ? 
 
 
.code 
main  proc 
mov ax,@data
mov ds,ax
       
    lea si,x    
       
mov ax,0 
mov es,ax
mov word ptr es:[101*4+0],apna
mov word ptr es:[101*4+2],cs

 mov ah ,1h 
int 65h
 
mov ah ,2h
int 65h  
 
   
endp main
.exit 

 apna proc 
    
  cmp ah,1h
  je set:
    
  
 cmp ah,2h
  je  display:
 
 
 iret
 endp apna 
 
 
       set:    
       
        ;;  now for rows 
         mov ah ,9h
         lea dx ,s1
          int 21h
       
    mov ah,1h
    int 21h
    mov ah,0 
    sub ax,30h   
    mov bx,ax
    mov ax,10h
    mul bx
    
             ;now taking 2nd digit 
    mov ah,1h
    int 21h 
     mov ah,0
    sub ax,30h
    mov bh,bl
    mov bl,al
     mov ax,10h
     mul bl
     add al,bh  
   add [si],ax 
                     
         
   mov ah,1h   ;now taking 3rd digit 
    int 21h
    mov ah,0 
    sub ax,30h   
    mov bx,ax
    mov ax,10h
    mul bx 
    
    mov ah,1h  ;now taking 4th digit 
    int 21h 
     mov ah,0
    sub ax,30h
    mov bh,bl
    mov bl,al
     mov ax,10h
     mul bl
     add al,bh  
   add [si+1],ax         
       
     
  iret      
       
            
   display:  
  
   mov ax,[si]
   mov bx,10
    mov cx ,0 
    p1:
    mov dx,0
    div bx
     push dx
     inc cx
     cmp ax,0
     jne p1:
         
    mov ah,9h
    lea dx,newline 
    int 21h  
         
     p2:
     pop dx
     add dl,30h
     mov ah,02h 
     int 21h 
     loop p2:
     iret 
     
        
     
     
     
      
    
    
   
   
    
     
  
  
  
  
  
  
  
  
        iret
        
  