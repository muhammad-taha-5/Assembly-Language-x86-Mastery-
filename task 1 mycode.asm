       ; task 1

MOV AX,0X1111
MOV BX,0X3242
MOV CX,0X1E
MOV DX,0X12
; now the eq DX = DX+ CL+ BL+BX+AX+-BH
ADD DX,BX ; DX,BX their addition
ADD DX,AX ;DX,AX their addition
MOV CH,0  ;CLEAR
ADD DX,CX

ADD DL,BL
MOV BL,BH
MOV BH,0
SUB DX,BX
MOV AX, 10213

; task 2

MOV BX, 3241
MOV CX, 2133
MOV DX, 1321
ADD CL, DH
ADD BH, AL
ADD AL, BL
ADD DX, BX
ADD AH, DL
ADD CX, AX
ADD CH, BH
ADD AX, DX
;  task3:multiplcation

; now  for multipling
MOV AL,5
MOV BL,8
MUL BL


;now  for  home work task: wirte the 24 bit number the memory using the registers : 1ABCAF THIS THE NUM
MOV [0X0001],0XAF
MOV [0X0002],0X1ABC

