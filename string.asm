STK SEGMENT
	DW 100 DUP(?)
STK ENDS

DTS SEGMENT
	TXT DB 'Hello, World!', 10, 13, '$'
DTS ENDS

CDS SEGMENT
	ASSUME CS:CDS, SS:STK, DS:DTS
	MAIN PROC FAR
		MOV AX, SEG DTS
		MOV DS, AX
		MOV DX, OFFSET TXT
		MOV AH, 09H
		INT 21H
		MOV AH, 4CH
		INT 21H
	MAIN ENDP
CDS ENDS
END MAIN
