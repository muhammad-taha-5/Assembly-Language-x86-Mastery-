.stack 100h
.model small
.data
ch   db ?
msg1 db "DIGIT ENTERED$"
msg2 db "ALPHABET ENTERED$"
msg3 db "SPECIAL CHARACTER ENTERED$"
c1 db ?

.code
main proc
    mov ax,@data
    mov ds,ax  
    mov ax,0
    mov es,ax  
    mov word ptr es:[96*4+0],apna
    mov word ptr es:[96*4+2],cs
    
    

    ;mov ah,00h
     ;int 16h   
    mov ah,01    ; same work       
    int 21h
     mov ch,al
     
    call ANALYZE 
               
     int 60h          
               
               
               
    
    
    
    
   main endp 
    .exit  
    apna proc
        
    push ax
    push dx
    mov al,c1
     
     cmp al,1
    je DIGIT
    cmp al,2
    je ALPHA
    jmp OTHER_symbol:
    
      DIGIT:
    mov ah,9
    lea dx,msg1
    int 21h
    jmp DONE

ALPHA:
    mov ah,9
    lea dx,msg2
    int 21h
    jmp DONE

OTHER_symbol:
    mov ah,9
    lea dx,msg3
    int 21h
  
DONE:   
    
    pop dx
    pop ax
    iret
apna  endp
    
      ANALYZE proc
    mov al,ch   
    
             ; check digit (0–9)
    cmp al,'0'
    jb OTHER
    cmp al,'9'
    ja CHECK_ALPHA
    mov c1,1
    ret
    
    CHECK_ALPHA:
                    ; check A–Z
    cmp al,'A'
    jb CHECK_SMALL
    cmp al,'Z'
    ja CHECK_SMALL
    mov c1,2
    ret
    
    CHECK_SMALL:
    ; check a–z
    cmp al,'a'
    jb OTHER
    cmp al,'z'
    ja OTHER
    mov c1,2
    ret

OTHER:
    mov code,3
    ret
ANALYZE endp
    
    
    
    