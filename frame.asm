	 ORG 800H  
;---TITLE------------------------------------ 
	 LXI H,TITLE  
	 RST 3  
;---GET-VALUES------------------------------- 
	 LXI H,CHAR  
	 RST 3  
	 RST 2  
	 LXI H,WEIGHT  
	 RST 3  
	 RST 5  
	 LXI H,ENTER  
	 RST 3  
;---TOP-------------------------------------- 
	 MOV B,E  
TOP  
	 MVI C,80  
TOP1  
	 DCR C  
	 RST 1  
	 JNZ TOP1  
	 DCR B  
	 JNZ TOP  
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
VER0  
	 MOV B,E  
VER1  
	 DCR B  
	 RST 1  
	 JNZ VER1  
	 LXI H,SPACE  
	 MOV B,D  
VER2  
	 DCR B  
	 RST 3  
	 JNZ VER2  
	 MOV B,E  
VER3  
	 DCR B  
	 RST 1  
	 JNZ VER3  
	 DCR C  
	 JNZ VER0  
;---BOTTOM---------------------------------- 
	 MOV B,E  
BOTT  
	 MVI C,80  
BOTT1  
	 DCR C  
	 RST 1  
	 JNZ BOTT1  
	 DCR B  
	 JNZ BOTT  
;---END------------------------------------- 
	 HLT  
TITLE 	 DB        'Frame generator@' 
CHAR 	 DB         13,10,'Enter char: @' 
WEIGHT 	 DB      13,10,'Enter weight: @' 
ERR 	 DB          13,10,'You entered wrong weight!@' 
ENTER 	 DB  13,10,'@' 
SPACE 	 DB ' @' 
