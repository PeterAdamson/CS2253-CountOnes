ENTRY
START
	mov 	R0,#0		;sets counter to 0
	mov	R2,#0	        ;sets counter to 0
	mov	R1,#0x7		;loads number to be counted into R1
L1	MOVS 	R1,R1,ROR#1	;rotates R1 right 1 bit
	ADDCS 	R0,R0,#1	;adds 1 to R0 if the carry is set (e.g. the last bit rotated was a 1)
	ADD 	R2,R2,#1	;increments the counter by 1
	CMP	R2,#32		;checks to see if the program has looped 32 times
	BNE 	L1    		;loops if R2 is not 32
STOP 	B 	STOP

