. Find number of positive and negative numbers in memory

	START
	LDX	#0
	LDS	#0	. S stores positive count
	LDT 	#0	. T stores negative count
LPSTART	LDA	ARR, X
	COMP 	#0
	JLT	LPNEG
LPPOS	ADDR	#1, S
	J	LPEND
LPNEG	ADDR	#1, T
LPEND	TIX	SIZE
	JLT	LPSTART
	RSUB

ARR	RESW 	100
SIZE	WORD	100
	END