STK SEGMENT
 DW 32 DUP(?)
STK ENDS 

CDS SEGMENT 
 ASSUME CS:CDS, SS:STK
 MAIN PROC FAR 
 XOR AL, AL ; Genarating "zero register" 
 MOV AH, 02
 ADD AL, 30H
 MOV DL, AL 
 INT 21H
 MOV AH, 4CH 
 INT 21H 
 MAIN ENDP 
CDS ENDS
END MAIN
