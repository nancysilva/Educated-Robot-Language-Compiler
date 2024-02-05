# Educated Robot Language Compiler
This project seeks to create a programming language and its compiler through lex and yacc.
In our grammar we have various limitations, where we find the following:
* Only accepts 2 types of instructions.
  * MOV <num of blocks to move>
  * TURN <either: {90,180,270,360}> 

* The programing language must be polite: 
	* Examples of valid sentences: 
		* Robot please move 2 blocks ahead
		* Robot please move 3 blocks ahead and then turn 90 degrees, then move 2 blocks
   		* Robot pls move 1 block, and then turn 270 degrees
  		* robot pls turn 360 degrees and move 9 blocks ahead
  		* robot please turn 180 degrees
    
	* Examples of invalid sentences:
		* Robot please turn 180 degrees
		* Robot pls move 2 degrees
		* Robot please move 3 blocks ahead and then turn 89 degrees, then move 2 blocks
		* robot pls turn 90 blocks
		* robot pls turn 180 degrees ahead

 
* Compiler must read the sentence from a file.
* The compiler must generate a file: 'instructions. asm' with list of instructions; However, when it finds that at least one sentence is incorrect, it deletes that same document.

