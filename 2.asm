. Find number of positive and negative numbers in memory

	START
	LDX	#0
	LDS	#0	. S stores positive count
	LDT 	#0	. T stores negative count
LPSTART	LDA	ARR, X
	COMP 	#0
	JLT	LPNEG
LPPOS	ADDR	S, #1
	J	LPEND
LPNEG	ADDR	T, #1
LPEND	TIX	SIZE
	JLT	LPSTART
	RSUB

ARR	RESW 	100
SIZE	RESW	100
	END