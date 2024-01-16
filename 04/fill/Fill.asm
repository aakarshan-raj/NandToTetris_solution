(MAIN)   //read keyboard register
@KBD
D=M

@WHITE   //jump if 0
D;JEQ

@SCREEN  //continue execution 
D=A
@R0
M=D
(LOOP_BLACK)
@24576
D=A
@R0
D=D-M
@MAIN    //get out after screen is black  
D;JEQ
@R0
D=M 
A=D
M=-1   //CHANGE TO BLACK
@R0
A=M+1
D=A
@R0 
M=D
@LOOP_BLACK
0;JMP

@MAIN
0;JMP

(WHITE)
@SCREEN
D=A
@R0
M=D
(LOOP_WHITE)
@24576
D=A
@R0
D=D-M
@MAIN   //get out after screen is white
D;JEQ
@R0
D=M 
A=D
M=0   //CHANGE TO WHITE
@R0
A=M+1
D=A
@R0 
M=D
@LOOP_WHITE
0;JMP

@MAIN  //loop back
0;JMP

