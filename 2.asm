. Find number of positive and negative numbers in memory

	START
	LDX	#0
	LDS	#0	. S stores positive count
	LDT 	#0	. T stores negative count
LPSTART	LDA	ARR, X
	COMP 	#0
	JLT	LPNEG
LPPOS	LDA	#1
	ADDR	A, S
	J	LPEND
LPNEG	LDA	#1
	ADDR	A, T
LPEND	TIX	SIZE
	JLT	LPSTART
	RSUB

ARR	RESW 	100
SIZE	WORD	100
	END