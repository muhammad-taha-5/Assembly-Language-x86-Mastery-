; Task-2
; Write a print procedure; this has an input parameter that is a
; null terminated string, and it will print it on the display beginning
; at the current point where the cursor is. It should ensure that the
; process keeps the cursor at its spot in its row and column by use of
; global variables and furthermore, should move the cursor each time
; the character has been printed. It must have the capability to 
; automatically wrap the line when the cursor moves to column 80,
; as well as automatically re-screen when the cursor moves past
; the 24th line by moving all the lines to the top of the screen
; and emptying the last line. Moreover, it should be able to
; read the special characters like newline (n) and tab (t) in a
; sensible manner and the content in the present screen should
; be preserved except when scrolling is being performed. One 
; may expect that the functionality will not change with 
; varying sizes of strings and will be identical with repeated
; calls. 

;Handles Bell (07h), Backspace (08h), 
;Line Feed (0Ah),
;and Carriage Return (0Dh) 

; this  the carriage return 
; mov ah, 02h
; mov dl, 0Dh     ; Carriage Return
; int 21h
   
;mov ah, 02h
;mov dl, 09h      ; Tab
;int 21h
        
;mov dl, 0Ah      ; Line Feed
;int 21h

;newline db 0Dh, 0Ah,'$'

;mov ah, 09h
;lea dx,newline
;int 21h       
                    
     .stack 0x100
     .model small  
     
     .data 
           s1 db 25,0,25 dup ("$")     
           rows db 10h 
           col  db 80h 
           
           newline db 0A 0D,'$'
               
       .code 
       
       main proc 
       mov ax,0xb800  ; vedio memory 
       mov  es,ax         
                     
     ;; taking  the  input of string
         mov ah,0Ah
         lea dx,s1
         int 21h
           mov ax,0 
           mov bx,0
           mov cx,0
                         
          lea bx,s1     ; this the offset of the arr  
          mov cl,[bx+1]  ;total number of the indexs 
          add bx,2      ; because of the resereved first two location of the input  arr   
         
                              
      
         
      mov si,80          ;number of the cols to print the   
      l1:  
              
      mov al,[bx]  
      mov byte ptr es:[si],al 
      
      add si,2   
      inc bx
              
     add si ,158         
              
              
     loop l1:        
              
       end:
       main endp 
       .exit 
                    
                    
                    