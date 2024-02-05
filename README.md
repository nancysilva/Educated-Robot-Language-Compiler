# Educated Robot Language Compiler
This project seeks to create a programming language and its compiler through lex and yacc.
In our grammar we have various limitations, where we find the following:
* Only accepts 2 types of instructions.
  * MOV <num of blocks to move>
  * TURN <either: {90,180,270,360}>

* Programming language must be educated:
  * MOV <num of blocks to move>
  * TURN <either: {90,180,270,360}>
1.	Robot please move 2 blocks ahead
2.	Robot please move 3 blocks ahead and then turn 90 degrees, then move 2 blocks
3.	Robot pls move 1 block, and then turn 270 degrees
4.	robot pls turn 360 degrees and move 9 blocks ahead
5.	robot please turn 180 degrees

 
* Compiler must read the sentence from a file.
* Compiler must generate a file: instructions. asm with the list of instructions
