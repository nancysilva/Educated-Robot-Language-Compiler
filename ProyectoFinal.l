%{
#include "y.tab.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
%}

%{
int line_number = 1;
%}

%%

[0-9]+                     {yylval.ival = atoi(yytext); return num; }

Robot|robot                {yylval.sval = strdup(yytext); return r;}
Please|please|pls|Pls      {yylval.sval = strdup(yytext); return p;}

move                       {yylval.sval = strdup(yytext); return insm;}
turn                       {yylval.sval = strdup(yytext); return inst;} 
  

blocks|block               {yylval.sval = strdup(yytext); return unitb;}
degrees                    {yylval.sval = strdup(yytext); return unitd;}
ahead                      {yylval.sval = strdup(yytext); return ah;}

and                        {yylval.sval = strdup(yytext); return siga;} 
then                       {yylval.sval = strdup(yytext); return sigt;} 

\,                         {yylval.sval = strdup(yytext); return sb;}

[ \t]+        		   /* ignore whitespace */


\n                       { line_number++; return '\n'; }


%%

