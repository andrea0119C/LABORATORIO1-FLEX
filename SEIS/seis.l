%{
#include <stdio.h>
%}
%%
"if"|"else"|"while"|"int"   printf("PALABRA_RESERVADA: %s\n", yytext);
[0-9]+                      printf("ENTERO: %s\n", yytext);
[a-zA-Z_][a-zA-Z0-9_]*      printf("IDENTIFICADOR: %s\n", yytext);
[ \t\n]                     ;
.                           ;
%%
int main()
{
yylex();
return 0;
}
