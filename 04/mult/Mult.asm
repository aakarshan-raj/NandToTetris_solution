// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

@3        
M=0         // INITIALISE I
(LOOP)    
@3          // LOAD I
D=M
@1          // LOAD N (R1)
D=D-M       
@END
D;JGT      
@2         // LOAD RESULT REG
D=M
@0
D=D+M      // INCR REGISTER REG BY R0 VALUE
@2
M=D        // STORE RESULT
@3
M=M+1      // INCREMENT I
@LOOP
0;JMP
(END)        
@END
0;JMP
