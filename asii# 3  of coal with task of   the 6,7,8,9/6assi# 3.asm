.model small
.stack 100h

.data
msg1 db "Enter string: $"
msg2 db 13,10,"Number of vowels = $"
str  db 50,0,50 dup('$')
count db 0

.code
main proc 
 mov ax,@data
 mov ds,ax
 
   mov ah,09h
    lea dx,msg1
    int 21h
    
     mov ah,0Ah
    lea dx,str
    int 21h 

lea ax,str+2  ;; this the total length
 push ax ; 1e 
 call count_vowel: 
 mov count,al 
 
  mov ah,09h
    lea dx,msg2
    int 21h
 
 mov dl,count 
 add dl,'0'
 mov ah,2h
 int 21h     
    
main endp
.exit 
     
     
     
  count_vowel: proc 
  
push bp   ;2e 
mov bp,sp 
 push si ;3e 
 push cx ;4e 
 
 mov si,ss:[bp+4]; this means we are acsessing our adderss by stack   
 mov cx ,0
 
 mov al,[si]
 
  next_char:
  
    mov al,[si]
    cmp al,0Dh   ; this the carreage return 
    ;cmp al,'$'        
    je done
    
    cmp al,'A'
    je vowel
    cmp al,'E'
    je vowel
    cmp al,'I'
    je vowel
    cmp al,'O'
    je vowel
    cmp al,'U'
    je vowel
    cmp al,'a'
    je vowel
    cmp al,'e'
    je vowel
    cmp al,'i'
    je vowel
    cmp al,'o'
    je vowel
    cmp al,'u'
    je vowel
    jmp skip

vowel:
    inc cx
skip:
    inc si
    jmp next_char

done:

mov al ,cl
pop cx 
pop si
pop bp
ret 2   
   
  endp count_vowel:
 
   
  
  
  
  
    
    