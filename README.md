# Educated Robot Language Compiler
This project seeks to create a programming language and its compiler through lex and yacc.
In our grammar we have various limitations, where we find the following:
* Only accepts 2 types of instructions.
  * MOV <num of blocks to move>
  * TURN <either: {90,180,270,360}>

If the instruction leads the robot out of the boundaries of the matrix, the CPU should return an illegal instruction error. 

* The programing language must be polite: 
	* Examples of valid sentences: 
		* Robot please move 2 blocks ahead
		* Robot please move 3 blocks ahead and then turn 90 degrees, then move 2 blocks
	* Examples of invalid sentences:
		* Robot moves 2 blocks
		* Robot moves 2 blocks quickly
		* Move 2 blocks right now
		* Robot  2 blocks moves
		* Moves Robot 2 blocks and turn 89 degrees

 
* Compiler must read the sentence from a file.
* The compiler must generate a file: 'instructions. asm' with list of instructions; However, when it finds that at least one sentence is incorrect, it deletes that same document.

