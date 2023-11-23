// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

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
