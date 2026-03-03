 .stack 0x100
.model small  
.data 

a db   1,2,3,4,5,6,7,8,9,5 
b db   1,7,6,5,4,3,2,7,8,6
c db   10 dup(0)
.code
         
         
main proc       
     mov ax,@data
      mov ds,ax 
             
      
          
      LEA si, a   ; MOV SI ,OFFSET a            
      push si 
      
     
      LEA si, b   ; MOV SI ,OFFSET b 
      push si 
      
       LEA si, c  ; MOV SI ,OFFSET c 
       push si 
             
      
             
    ; now for the function  proc of the sum 
         call  sum:  
             
            pop si 
            pop si
            pop si 
             
               
 main  endp
.exit 
         
     sum proc
      
      
                
                
                push bp    ;because we use  the stack pointer 
                mov bp,sp  ; now bp point at the point where staring of the stack lies  stack pointer    
                        
             
                    ; if mov si,[bp+2]   last pushed  (bp)      
                                 
                mov si,[bp+4]; si = c[0]    
                mov di,[bp+6]; di = b[0]
                mov bx,[bp+8]; bx = a[0]      
                   
                
                
                
                
                 mov cx,10
                adding: 
                mov ax,0 
                
                 mov al,[bx] 
                 add al,[di]
                 
                 mov [si],al
                 
                  inc si
                  inc di 
                  inc bx  
                
         
                 loop adding:
                
      pop bp
    
     ret
     sum endp 
      

 