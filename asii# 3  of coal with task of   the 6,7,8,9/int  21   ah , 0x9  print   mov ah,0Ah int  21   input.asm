.stack 0x100 
.model small  
.data

string1 db 25,0,25 dup('$')
newline db 0xA, 0XD,'$'
;len1 equ $-string1 
string2 db 20,0,20 dup('$')
;len2 equ $-string2  

row db 12     
col db 25 
.code

main proc 
mov ax ,@data
mov ds,ax      ; this the code of vidieo memory??
                        
; Calculate position      [rows*80+col]*2 


mov ah,0Ah     ;input the string  
lea dx, string1
int 21h 
      ; this how we are  writting the (endl;) /newline   
mov ah,09h   ;; writting 
lea dx,newline
int 21h  

 mov ah,0Ah 
lea dx, string2
int 21h
 
       
mov ah,02h      ;; setting sourcer
mov bh,0
mov dh,[row]
mov dl,[col]
int 10h
inc row

mov ah,9h
lea dx, string1+2
int 21h


mov ah,02h     ;; setting sourcer
mov bh,0
mov dh,[row]
mov dl,[col]
int 10h
               
mov ah,9h
lea dx,string2+2 
int 21h    

main endp 
.exit 
         
 ; write byte value 0A7h into the port 110:
;mov al, 0A7h
;out 130, al

; write word value 1234h into the port 112:
;mov ax, 1234h
;out 130, ax

;mov ax, 0 ; reset register.

; read byte from port 110 into AL:
;in al, 110

; read word from port 112 into AX:
;in ax, 112
      
