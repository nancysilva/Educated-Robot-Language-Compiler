%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
extern int yylex();
extern int line_number;
extern FILE *yyin;
extern FILE *yyout; 

int error_flag = 0;
void yyerror(const char *s);
%}

%union {
    int ival;
    char *sval;
}

%token <ival> num
%token <sval> r p insm inst unitb unitd ah siga sigt sb 

%%

start: sentences '\n'
       | sentences


sentences: /* empty */
          | sentences sentence '\n'

sentence: Sujeto Instruction Next { fprintf(yyout, "\n"); }


Sujeto: r p
;

Instruction: insm num unitb A {fprintf(yyout, "MOV,%d. ", $2);}
           | inst num unitd {
           if ($2 != 90 && $2 != 180 && $2 != 270 && $2 != 360) {
           	yyerror("Error: Invalid turn angle.\n");
           }
           fprintf(yyout, "TURN,%d. ", $2);
        }
;

A: ah
  | /* empty */
;

Next: Simbolo Sig Instruction Next
      | /* empty */
;

Sig: siga sigt
   | siga
   | sigt
   | /* empty */
;

Simbolo: sb
      | /* empty */
;


%%

void yyerror(const char *s) {
    fprintf(stderr, "Error Encontrado. 'Instructions.asm' ELIMINADO. \n");
    error_flag = 1;
}

int main(int argc, char **argv) {
    if (argc == 2) {
        if (!(yyin = fopen(argv[1], "r"))) {
            perror("Error al abrir el archivo: ");
            return 1;
        }

        yyout = fopen("Instructions.asm", "w");
        fprintf(stderr, "Archivo 'Instructions.asm' CREADO. \n");

        yyparse();

        fclose(yyin);
        fclose(yyout);
        
        if (error_flag) {
            remove("Instructions.asm");
        }
        
    } else {
        fprintf(stderr, "Usage: %s filename\n", argv[0]);
        return 1;
    }

    return 0;
}
