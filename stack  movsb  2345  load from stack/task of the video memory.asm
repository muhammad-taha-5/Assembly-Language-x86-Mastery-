.model small
.stack 0x100

.data 
msg db 'Hello Video Memory!$'

.code
main proc
    mov ax, @data
    mov ds, ax
     
    mov ax, 0B800h          
    mov es, ax      
                  
    mov al, 'A'              ; Character to display
   mov ah, 0Fh         ;Attribute: White on Black (0Fh)


     mov di,2000
    mov es:[di],ax   
    
    
    
     lea si, msg              ; Source string
    mov ah, 0Bh              ; Attribute: Cyan on Black
write_loop:
    lodsb                    ; Load byte from DS:SI into AL
    cmp al, '$'              ; Check for string terminator
    je done_writing          ; If '$', stop
    
    mov es:[di+4], al          ; Write character
    inc di
    mov es:[di], ah          ; Write attribute
    inc di
    
    jmp write_loop
    
done_writing: