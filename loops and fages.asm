            .STACK 0X100
            .DATA
            
             VARIABLE  DB 10
             ARR1 DB 5 DUP (3), 3 DUP(2), 6 DUP(7)
             ARR2 WD 10 DUP (0X0)
            .CODE
MAIN            PROC 
              MOV AX,@DATA  ; HERE WE APPRPCH THE DATA BY AX  
              MOV DS,AX     ;AND THEN WE WERE GIVING  the value of  
                         
            
             MOV VARIABLE,0XFF
            MOV BX,OFFSET VARIABLE  ; IF WE USE ONLY THE STATMENT THEN IT WILL STARTS FROM   (FF) FILLED VARIABLE
              
              MOV BX,OFFSET ARR1
             ADD [BX],1 
             ADD [BX+1],1
             ADD [BX+2],1
             ADD [BX+3],1
             ADD [BX+4],1 
             ADD [BX+5],1 ; this will reach  another arry of whos three elements of (2) .
             
            ;AN OTHER way altternate
             INC [BX],1;ADD BX,1 
             INC [BX+1],1          
             INC [BX+2],1  
             INC [BX+3],1 
             INC [BX+4],1 
             INC [BX+5],1                
             INC [BX+6],1                 
               
               
            ;AN OTHER source
             SUB [BX] ,1;SUB BX,1 
             SUB [BX+1],1      
             SUB [BX+2],1  
             SUB [BX+3],1 
             SUB [BX+4],1 
             SUB [BX+5],1              
             SUB [BX+6],1 
                        
               
             DEC [BX] ,1; DEC BX,1 
             DEC [BX+1] ,1       
             DEC [BX+2] ,1 
             DEC [BX+3] ,1 
             DEC [BX+4] ,1 
             DEC [BX+5] ,1               
             DEC [BX+6] ,1   
                      
                             
                             
                 
           ; NOW FOR  THE LOPPS AND        
            MOV BX ,OFFSET ARR1+13
            
            
            ; NOW for the word; 
            MOV SI, OFFSET ARR2+10 
             
            
            ; HERE IN BX WE HAVE STORED THE SIZE OF LOOP
            MOV AX, 0X13
             
 ; FROM HERE LOOP STARTS 
 STARTHERE:   
            ; INC [BX]  ;FORWARD LOOP 
             ;INC BX  
                     
               ; NOW FOR DEC      
              INC [BX];REVERCE LOOP ; BACK WORD LOOP     
              DEC  BX
                    
                    
                    
                    
                    
              ;IN THE SAME LOOP               
              ; NOW for the word;       
               ; THIS FOR FORWARD LOOP
            ;INC [SI]
            ;ADD SI,2      
            
            ; THIS FOR BACK WORD  LOOP ;  REVERCE LOOP
            
             INC [SI]
             SUB SI,2
             
             
             
                                   
               
  LOOP       STARTHERE        
                      
                   
                            
MAIN          ENDP
             .Exit
                    