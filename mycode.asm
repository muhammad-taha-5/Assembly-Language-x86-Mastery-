                               .STACK
          .MODEL SAMLL 
          .DATA
          .CODE
MAIN       PROC                 ; this  is valid    
             MOV BX ,0x4ACB ; In MOV, the destination must be a ( register or memory location — 1234 ) is just a number 
             MOV 0x1234,BX  ;0N THIS MEMORY LOCATION (1234)  we should MOV THE REGISTER ( containing memory)  OR MEMORY location     
               ;SIR  HERE WE WRITTEN THE offset without  = [ ].              
               ; SAME thing again               
                      
                      
              ; THIS IS also valid  MOV [SI+ BX+4], 256             
             MOV  AX,0X1B0C
             MOV  SI,0x4 
             MOV DI ,0X2
              MOV BX,0x4                  
             MOV  [SI+BX+4],AX    ; BY DEFALTit will use the  (DATA SEGMENT):DS 
    
              ;MOV AX,ABCD  ;  BECAUSE HERE is absence of prefix and suffix 
              
              ;MOV DX,[BL+DI+2] this valid 
                
              MOV [BX+DI+2],0XADF3  ; NOW  THIS STATMENT TELLS  that  DS  THIS MEMORY(0XADF3) IS STORED INTO   DS:[]          
              MOV DX,[BX+DI+2] ;AND THEN  THIS MEMORY IS STORED IN THE ( BX )          
              ADD DX,[BL+DI+2] ;REASON THERE is no any pointer like  BL AND  addition could not be  done so  ( ADD DX,[BX+DI+2] )      
              ADD DX,[BX+DI];REASON THERE is no any pointer like  BL
              ;    ;;; ADVANCED INSTURCTIOS 
              MOV BYTE PTR DS:[0X1000],AX   ;  invalid BUT IT  WILL RUN HOWEVER       
              MOV  WORD PTR DS:[0X1000],AL  ;  invalid BUT IT  WILL RUN HOWEVER
            ;  MOV  IP,AX ; as it is pointer   ; INVALID BECAUSE IT TAKE ONLY MEMORY  in the [] closed breses
                     
                   
              MOV SS,BX  ;VALID 
              MOV DS,DX  ;VALID
              MOV BX,[BX] ;VALID    
              ;MOV BX,[BL] ; INVALID
               
               
              ; MOV BX,[BP+BX+10] ;INVALLID
              ; MOV [BP+BL] ; WHAT IS BL WE NO ANY POITER LIKE  BL    
                MOV [[BX]+1],AX ; VALID HERE WE  PUT THE    ADDERSS OF THE AX DS:[[BX]+1] -> MEMORY + OFFSET  
                
                     ;this the  
                MOV BX,0X0001                       
               ; MOV DS:[5*BX],0XABCD   ;invalid              
                MOV DS:[0x1*5],0Xabcd ;valid               
                             
                             
                             
                             
                             
                             
                             
                             
                             
                        ;;;;;; ;  task1   ;  square of 6  
            MOV BX,0X6     
            ADD AX,BX    
            ADD AX,BX
            ADD AX,BX      ; THIS HOW TO PRINTTING THE 36 AT THE LOCATION OF (AX)
            ADD AX,BX
            ADD AX,BX
            ADD AX,BX     ; HERE 24  COMES  HEX OF 24 IS  ( 36 DECIMAL)       
                        
                        
                        
                        
            
            MOV AX ,0 ; THIS STARTS THE AX WITH ZERO       
            MOV BX,0X6     
            ADD AX,BX    
            ADD AX,BX
            ADD AX,BX      ; THIS HOW TO PRINTTING THE 36 AT THE LOCATION OF (AX)
            ADD AX,BX
            ADD AX,BX
            ADD AX,BX
            ADD AX,BX
            ADD AX,BX
            ADD AX,BX  
                  
                           
            MOV AX,2
            MOV BX,4
            MOV CX,6     
            MOV AX,BX,CX  ; NOW  HERE  in this codition no any function of the  CX 
                                   ; JUST HTE VALUE  OF BX MOV INTO THE AX 
                       
           
           
           MOV SI,0X2
           MOV DI,0X3
           MOV BX,0X5
;MOV DS:[SI+DI +4],0X256 ; HTIS WILL GIVE US ERROR BECAUES  THESE COULD NOT WORK  togather
               MOV AX,0X0FFE
 MOV [SI+BX+4],AX ; this will be invalid  
          
          
MAIN               ENDP
                  .Exit
     
     
     

    
                       