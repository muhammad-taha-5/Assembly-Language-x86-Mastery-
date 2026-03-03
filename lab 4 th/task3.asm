.stack 0x100 
.model small 
.data
 arr1 db 1,2,3,4,5,6,7,6,5,4,7,8
 arr2 db 1,2,3,5,6,6,7,6,5,4,3,2     
 arr3 db 13  (?)
 sum  db 0 
.code 
 main proc 
 mov ax ,@data
 mov ds ,ax     
 
  mov dl, offset arr1
  mov dh, offset arr2   
 
  mov si ,0
  mov cx ,12  
    str:   
  mov al,[arr1 +si]      
  mov bl,[arr2 +si]  
  mul bl
 mov [arr3+si],al    

  add sum ,al     
    mov ax,0
    mov bx,0   
  inc si       
loop str:    
       
       
    
main endp 
    .exit 
    

