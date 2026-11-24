%{
#include <stdio.h>
#include <stdlib.h>
%}
%option noyywrap
%%
0[xX][0-9a-fA-F]+   { printf("Hex %s = %ld\n", yytext, strtol(yytext, NULL, 16)); }
[ \t\n]             ;
.                   { printf("No reconocido: %s\n", yytext); }
%%
int main() { yylex(); return 0; }
