. Find number of odd and even numbers in memory

	START
	LDX	#0
	LDS	#0	. S stores odd count
	LDT 	#0	. T stores even count
LPSTART	LDA	ARR, X
	DIV	#2
	MUL	#2
	COMP 	ARR, X
	JEQ	LPEVEN
LPODD	LDA	#1
	ADDR	A, S
	J	LPEND
LPEVEN	LDA	#1
	ADDR	A, T
LPEND	TIX	SIZE
	JLT	LPSTART
	RSUB

ARR	RESW 	100
SIZE	WORD	100
	END