.stack 0x100
.model small 
.data
m1 db "enter the srting: $" 
m2 db " this the lenght of the string: $"  
str db 20,0,20 dup('$')
len db 0 
.code
main proc   
mov ax,@data
mov ds,ax
mov ax,0 
mov es,ax
mov word ptr es:[104*4+0],offset apna
mov word ptr es:[104*4+2],cs 
int 68h

endp main 
.exit
 
  apna proc 
            
   mov ax,@data
   mov ds,ax
   mov ah,9h 
   lea dx,m1
   int 21h
   
   mov ah,0Ah
   lea dx,str       
   int 21h
    
    ; mov count,0 
     ;lea bx,str+2  
     ;h1:
     ;cmp byte ptr[bx],'$' 
    ; je done
     ; inc count
     ; inc bx
            
      ;jmp h1 
      ;done:
       ;mov ah,9h       
      ; lea dx,m2  
      ; int 21h       
      ;add count,'0' 
            
      ;mov dl,count 
      ;mov ah,02
      ;int 21h
  
     lea si,str+2 
     mov cl,[str+1]
      mov ch,00 
      
      mov ax,cx    
      mov bl,10            
       div bl 
       add al,'0' 
       add ah,'0' 
       
       mov m2+32,al  
       mov m2+33,ah   
      
       mov ah,09
      mov  dx,offset m2
       int 21h
       
   
   
   iret 
  endp apna
  end main
     