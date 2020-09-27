. Read 100 bytes from device

	START
	LDX	#0
LP	TD	device
	JEQ	LP
	RD	device
	STCH	ARR, X
	TIX	#100
	JLT	LP
	RSUB

device	BYTE	x'F1'
ARR	RESB 	100
	END