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

(START)
@SCREEN
D=A
@R0
M=D

(CHANGECOLOUR)
@KBD // check keyboard
D=M

@R1
M=0 // default to white

@MAKEDARK // change to black
D;JNE // if not 0

(CONT)
@R1
A=M
D=A // get the colour

@R0 // pointer to screen memory address
A=M
M=D // change to the colour

@R0
M=M+1 // store new pointer

@24576
D=A
@R0
D=M-D

@START // back to the start
D;JEQ // if index is over @SCREEN + 8192 (8K)

@CHANGECOLOUR
0;JMP

(ENDCHANGECOLOUR)
@ENDCHANGECOLOUR
0;JMP

(MAKEDARK)
@R1
M=-1
@CONT // go back to the loop
0;JMP
