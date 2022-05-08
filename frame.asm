	 ORG 800H  
;---TITLE------------------------------------ 
	 LXI H,TYTUL  
	 RST 3  
;---GET-VALUES------------------------------- 
	 LXI H,ZNAK  
	 RST 3  
	 RST 2  
	 LXI H,GRUBOSC  
	 RST 3  
	 RST 5  
	 LXI H,ENTER  
	 RST 3  
;---TOP-------------------------------------- 
	 MOV B,E  
GORA  
	 MVI C,80  
GORA1  
	 DCR C  
	 RST 1  
	 JNZ GORA1  
	 DCR B  
	 JNZ GORA  
;---VERTICAL--------------------------------- 
	 MVI C,24  
	 MOV B,E  
ODEJW0  
	 DCR C  
	 DCR C  
	 DCR B  
	 JNZ ODEJW0  
	 MVI D,80  
	 MOV B,E  
ODEJK0  
	 DCR D  
	 DCR D  
	 DCR B  
	 JNZ ODEJK0  
;---PRINT----------------------------------- 
PION0  
	 MOV B,E  
PION1  
	 DCR B  
	 RST 1  
	 JNZ PION1  
	 LXI H,SPACJA  
	 MOV B,D  
PION2  
	 DCR B  
	 RST 3  
	 JNZ PION2  
	 MOV B,E  
PION3  
	 DCR B  
	 RST 1  
	 JNZ PION3  
	 DCR C  
	 JNZ PION0  
;---BOTTOM---------------------------------- 
	 MOV B,E  
DOL  
	 MVI C,80  
DOL1  
	 DCR C  
	 RST 1  
	 JNZ DOL1  
	 DCR B  
	 JNZ DOL  
;---END------------------------------------- 
	 HLT  
TYTUL 	 DB        'Frame generator@' 
ZNAK 	 DB         13,10,'Enter char: @' 
GRUBOSC 	 DB      13,10,'Enter weight: @' 
ERR 	 DB          13,10,'You entered wrong weight!@' 
ENTER 	 DB  13,10,'@' 
SPACJA 	 DB ' @' 
