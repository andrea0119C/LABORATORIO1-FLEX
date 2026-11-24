%{
#include <stdio.h>
%}
%option noyywrap
ID      [a-zA-Z_][a-zA-Z0-9_]*
ENTERO  [0-9]+
%%
[ \t]+                       ;
{ENTERO}{ID}                 { printf("ERROR: token invalido '%s'\n", yytext); }
{ENTERO}                     { printf("ENTERO: %s\n", yytext); }
{ID}                         { printf("ID: %s\n", yytext); }
","                          { printf("COMA\n"); }
\n                           { printf("--- fin de lista ---\n"); }
.                            { printf("ERROR: token invalido '%s'\n", yytext); }
%%
int main() { yylex(); return 0; }
