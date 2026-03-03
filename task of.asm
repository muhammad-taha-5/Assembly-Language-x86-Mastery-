 .stack 0x100
 .model small
 .data
 arr1  dw  0, 9,8,7,6,5,4,3,2,1
 arr2  dw  10,1,2,3,4,5,6,7,8,9
 arr3  dw  ? 
  
 .code
      
 mian proc
  mov ax,@data
  mov ds, ax
  
    mov si ,offset arr1 
    mov bx ,offset arr2  
     mov di,offset arr3
            mov ax,0        
           mov cx , 10
       str:
                        
       mov ax , ds:[si]
       add ax , ds:[bx]   
       
        mov ds:[di] ,ax  
      
          add si,2 
          add bx,2
           add di,2 
        loop str: 
                    
                    
                    
   mian endp 
       .exit 
    
    
    
    