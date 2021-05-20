// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

@R2 // set index 2 to 0
M=0

(LOOP)
@R0
D=M

@END
D;JEQ // if index 0 = 0 then end loop

@R1
D=M
@R2
M=M+D // put sum of index 2 and index 1 back to index 2
@R0
M=M-1

@LOOP
0;JMP // continue loop

(END)
@END
0;JMP
