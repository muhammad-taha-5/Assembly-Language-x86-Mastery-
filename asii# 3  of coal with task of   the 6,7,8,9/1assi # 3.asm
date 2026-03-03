.stack 0x100
.model small 
.data   

sum  dw ?
mult dw ?
subt dw ?   
did  dw ?
num1 db ?
num2 db ?
s1  db "Enter the num1:$" 
s2  db  "Enter the num2:$"
 newline db 0xA ,0xD ,'$' 
.code 

;Bit: The smallest unit (a 0 or a 1).
;Nybble: 4 bits.
;Byte: 8 bits.
;Word: 2 Bytes (16 bits).
;Double Word (DWord): 4 Bytes (32 bits)
;Quad Word (QWord): 8 Bytes (64 bits).

 main proc 
mov ax,@data
mov ds,ax 
 
   mov ah,09h
   lea dx,s1
    int 21h 
   
;after inputing num store in the num1 
mov ah,01h
int 21h
sub al,30h
mov bl,al  
           ;mul bl*10                
 mov ax,10
 mul bl
mov num1,al
               
mov ah,01h   ;; input 2nd digit 
int 21h
sub al,30h
add num1,al 
            
    mov ah,09h
    lea dx,newline
    int 21h         
            
            
   mov ah,09h
   lea dx,s2
    int 21h 
                 ;now for the num2 getting the digits   
  ;after inputing num store in the num1 
mov ah,01h
int 21h
sub al,30h
mov bl,al  
           ;mul bl*10                
 mov ax,10
 mul bl
mov num2,al
               
mov ah,01h   ;; input 2nd digit 
int 21h
sub al,30h
add num2,al 
   
   
call adds                   
call multi           
call subr   
call divide  
     
endp main
.exit 
   
  adds proc
  mov al,num1
  add al,num2
  mov sum,ax      
   ret
  endp adds 
  
      
  subr proc
  mov al,num2
  sub al,num1
  mov subt,ax      
   ret
  endp subr      
             
             
  multi proc
  mov al,num1
  mov bl,num2
  mul bl
  mov mult,ax
   mov [mult+2],dx      
   ret
  endp multi      
        
 divide proc
  mov al,num1
  mov bl,num2
  div bl
  mov did,ax     
   ret
  endp divide       
         