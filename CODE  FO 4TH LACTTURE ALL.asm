               
               
                ;  NOW  FOR THE  bits to store in the emulator ;1A and 1a will starts from the  first index 0000
                
                 MOV [0X0000],0X1A
                 
                ;  NOW  FOR THE  bits to store in the emulator  ;1ABC
                
                   MOV [0X0001], 0X1ABC  ;IF WE Put 16 bits then it stores it into the memomry in the reversed order 
                                      ;1abc and 1abc will starts from the  first index 0001= that equal to the 2nd index of arr 
                          
                MOV [0X0000], 0XDF ; 1ABC,DF
                MOV [0X0001],0X1ABC  ; 1ABC ;   here when this command works then  this will over write at the first index okay got it 
                           
                 
                          ; these were home task for uderstanding
                 
                 
                        
                        
                        
                 ;; task 2 now writting  the code at emulator 
                 .STACK 0X100
                 .MODEL SMALL
                 .DATA 
                 .CODE
MAIN              PROC 
                      MOV [0X0000],0X1A  
                     ; ASSIGN TWO NUMBERS AND THEN SUM THEM 
                     MOV SI,0X10
                     MOV BX,0X20
                      MOV BYTE PTR DS[SI],0XBC
                      MOV BYTE PTR  DS[BX],0X76 
                        ;NOW FOR THE SUBTRACT TO NUMBERS 
                            MOV AL,[BX] ; BIGER ONE 
                            SUB AL,[SI] ;SMALLER ONE 
                            MOV [0X0030],AL 
                            
                       
                       ; NOW FOR ADDITIOIN
                       MOV AL,[SI]
                       ADD AL,[BX]
                       MOV  [0X0040],AL 
                       
                      
                       
                      
                    
                               
                               
                          ;; IF YOU WANT TO  DO THIS ON THE OTHER SIDE ;
                          ; ASSIGN TWO NUMBERS AND THEN SUM THEM 
                     MOV SI,0X1F
                     MOV BX,0X2F
                      MOV BYTE PTR DS[SI],0XBC
                      MOV BYTE PTR  DS[BX],0X76 
                        ;NOW FOR THE SUBTRACT TO NUMBERS 
                            MOV AL,[BX] ; BIGER ONE 
                            SUB AL,[SI] ;SMALLER ONE 
                            MOV [0X003F],AL 
                            
                       
                       ; NOW FOR ADDITIOIN
                       MOV AL,[SI]
                       ADD AL,[BX]
                       MOV  [0X004F],AL 
                            
                ;; 4 TASK  4TH  [0X0001] i think so this will be the offset address
                               
   
   
MAIN               ENDP
                  .EXIT 