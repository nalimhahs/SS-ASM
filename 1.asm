. Max of 100 numbers
	
	START
	LDX	#0
LPA	LDA	ARR, X
LPB	TIX	#100
	JGT	LPE
	COMP	ARR, X
	JGT	LPA
	J 	LPB
	STA	MAX
LPE	RSUB

ARR   	RESW	100
MAX 	RESW	1
	END	