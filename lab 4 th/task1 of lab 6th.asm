.stack 0x100 
.model small 
.data   
arr1 db 12 ,  1,2,3,4,7,6,5,9,0,8,7,10
    
    
arr2 db 12 (?)
        
.code
;create a matix 2d arr make its tanspose and then  make the 2nd 2d arr and then tanspose the  that arr and store  
;the arr into the 3rd arr 
main proc 
   mov ax , @data
   mov ds,ax 
   mov ax,arr1 offset;+[3*4+1]+1       
     mov bl ,[arr1+0] 
     mov [arr2+0],bl
      
     mov bl,[arr1+1]
     mov [arr2+4],bl
     
      mov bl,[arr1+2]
     mov [arr2+8],bl
         
     mov bl,[arr1+3]
     mov [arr2+12],bl
                      
            ; this the 2nd  row 
     mov bl ,[arr1+8] 
     mov [arr2+2],bl
      
     mov bl,[arr1+9]
     mov [arr2+5],bl
     
      mov bl,[arr1+10]
     mov [arr2+8],bl
         
     mov bl,[arr1+11]
     mov [arr2+11],bl
        
                 ; this the 3rd  row 
     mov bl ,[arr1+4] 
     mov [arr2+1],bl
      
     mov bl,[arr1+5]
     mov [arr2+4],bl
     
      mov bl,[arr1+6]
     mov [arr2+7],bl
         
     mov bl,[arr1+7]
     mov [arr2+10],bl
                                    
    
    
main endp 
.exit 
