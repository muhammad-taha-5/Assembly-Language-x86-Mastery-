.stack 0x100 
.model small  
.data
string1 db "l1f24bscs0756MuhammadTaha$"
;len1 equ $-string1 
string2 db "this_the_length=:25$"  
;len2 equ $-string2  

row db 12     
col db 25 
.code

main proc 
mov ax ,@data
mov ds,ax      ; this the code of vidieo memory??
                        
; Calculate position      [rows*80+col]*2 
    
mov ah,02h  ;service no:2
mov bh,0    ; page no: 
mov dh,row    ;;rows 
mov dl,col    ;;cols 
int 10h 
 
 mov ah,0x9
 mov dx, [offset string1] 
 int 0x21 
 
 ;; now for the second  string#2
  
 mov ah,02h   ;service no:2
 mov bh ,0    ; page no:
 mov dh,row 
 inc dh
 mov dl,col
 inc dl 
 int 10h 
  ;; this decides the page rows & cols
  
 mov ah, 9h
 mov dx,offset string2
 int 21h   
 
  
   
    
 
 
 
 
 
 
 
  