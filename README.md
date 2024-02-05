# Educated Robot Language Compiler
This project seeks to create a programming language and its compiler through lex and yacc.
In our grammar we have various limitations, where we find the following:
* Only accepts 2 types of instructions.
  * MOV <num of blocks to move>
  * TURN <either: {90,180,270,360}>

The programing language must be polite: 
	* Examples of valid sentences: 
		
	* Examples of invalid sentences:
		

 
* Compiler must read the sentence from a file.
* The compiler must generate a file: 'instructions. asm' with list of instructions; However, when it finds that at least one sentence is incorrect, it deletes that same document.

