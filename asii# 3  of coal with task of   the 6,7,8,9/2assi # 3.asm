.stack 0x100   
.model small 
.data 
 s1 dw  "Enter the row x :$" 
 s2 dw "Enter the col y :$"
 newline db 0xA,0xD,'$'
 h1 db "hellow"
 h2 db  "have A good day" 
x db ? 
y db ? 
 
.code 
main  proc 
mov ax,@data
mov ds,ax

mov ax,0 
mov es,ax
mov word ptr es:[85*4+0],apna
mov word ptr es:[85*4+2],cs

 mov ah ,1h 
int 55h
 
mov ah ,2h
int 55h  
       
mov ah ,6h
int 55h
 
   
endp main
.exit 

 apna proc 
    
    cmp ah,6h
  je display:
  
  
  cmp ah,1h
  je set:
    
  
 cmp ah,2h
  je bell:
 
 
 iret
 endp apna 
 
 
       set:    
       
        ;;  now for rows 
         mov ah ,9h
         lea dx ,s1
          int 21h
       
    mov ah,1h
    int 21h
    sub al,30   
    mov bl,al
    mov ax,10h
    mul bl
    mov x,al
             ;now taking 2nd digit 
    mov ah,1h
    int 21h
    sub al,30
    add x,al
                       mov dl,x ;; this the row  into dl 
         
          ;;  now for cols       
         mov ah ,9h
         lea dx ,s2
          int 21h
         
   mov ah,1h
    int 21h
    sub al,30   
    mov bl,al
    mov ax,10h
    mul bl
    mov y,al
             ;now taking 2nd digit 
    mov ah,1h
    int 21h
    sub al,30
   add y,al
                         mov dh,y ;this the cols into dh
         
     mov ah,2h
     mov bh,0
     int 21h
     
  iret      
       
      
       
          
  bell:  ; now here it start for bell;
   
   bell_loop:
    
   mov ah,2h
   mov dl,7h
   int 21h
     mov ah,01h
    int 21h       ; keyboard input
    cmp al,'s'
    je stop
    cmp al,'S'
    jne bell_loop:

stop:
        iret
        
   display:   
    
     mov ah,9h
     lea dx,h1 
     int 21h 
     
       mov ah,9h
       lea dx,newline
        int 21h
        mov ah,9h
       lea dx,newline
        int 21h
    
      mov ah,9h
     lea dx,h1 
     int 21h 
    
       iret
    
       
         
         
       
  