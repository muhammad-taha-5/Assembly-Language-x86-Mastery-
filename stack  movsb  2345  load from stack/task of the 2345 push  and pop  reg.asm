 
 .stack 0x100 
 .model small 
  .data 
   
va db ?
total dw ?   
  .code 
  
  main proc 
    mov ax ,@data
    mov ds,ax 
    
 mov   ax, 2345       ; number
        ; SP is already pointing to top of stack

PUSH_LOOP:
        cmp     ax, 0
        jle     END_PUSH       ; exit when number is zero

        ; digit = num % 10
        mov     cx, 10
        xor     dx, dx         ; DX must be cleared before div
        div     cx             ; AX = AX/10, DX = AX%10 (digit)

        ; Push digit
        push    dx             ; push the digit (0-9) on stack

        ; num = num / 10 (AX already contains quotient)
        jmp     PUSH_LOOP  
        
        

END_PUSH: 

  xor dx,dx 
  
   here:
  xor ax,ax
  mov al ,10        
  mul dl  
  pop cx 
  add ax ,cx
  mov dx,ax 
  xor ax,ax
  mov al ,10        
  mul dl  
  pop cx 
  add ax ,cx
  mov dx,ax 
   xor ax,ax
  mov al ,10        
  mul dl  
  pop cx 
  add ax ,cx
  mov dx,ax 
   xor ax,ax
  mov al ,10        
  mul dl  
  pop cx 
  add ax ,cx
  mov dx,ax 

end:
mov ah,4ch
int 21h
    
main endp
.exit 
  
  
  