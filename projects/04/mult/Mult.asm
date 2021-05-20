// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

@R2 // set @R2 to 0
M=0

@R0 // set @R0 to be counter
D=M

(LOOP)
D;JEQ // if counter is 0 then end loop

@R1
D=M
@R2
M=D+M // R2 = R1 + R2
@R0
MD=M-1

@LOOP
0;JMP // continue loop

(END)
@END
0;JMP
