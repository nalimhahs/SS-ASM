. SORT ARRAY

	START  
OUTER	LDX	INDEX	 
	LDS	ARR,X	 
	LDX	#0	 	
INNER	LDT 	ARR,X	 
	COMPR	S,T	 
	JLT 	LOOP	 
	JEQ 	LOOP	 
	RMO 	S,A	 
	RMO 	T,S	 
	RMO 	A,T	 
	RMO 	X,A	 
	LDX 	INDEX	 
	STS 	ARR,X	 
	RMO 	A,X		
	STT 	ARR,X	 
LOOP	RMO 	X,A	 
	ADD 	#3	 
	COMP 	LENGTH	 
	RMO 	A,X	 
	JLT 	INNER	 
	LDA 	INDEX	 	
	ADD 	#3	 
	COMP 	LENGTH	 
	STA 	INDEX	 
	JLT 	OUTER	 
	RSUB

ARR	RESW 	10	 
LENGTH	WORD 	30	 
INDEX	WORD 	0
	END