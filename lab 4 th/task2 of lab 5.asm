.stack 0x100
.model small 
.data
arr db ,1,2,3,4,5,6,7,8,9,10,11,12   
.code  
main proc 
  mov ax ,@data
  mov ds ,ax  
  
       
     mov dx,0  
   mov cx ,13
   mov si ,0 
   
   str:
   add  dl ,[arr+si]      
         
              
   inc si
   loop str:  
    mov al,dl      
    
         hlt
main endp
    .exit



 