%{
#include <stdio.h>
#include <stdlib.h>
%}
%option noyywrap
%%
[01]+               { printf("Binario %s = %ld\n", yytext, strtol(yytext, NULL, 2)); }
[0-9A-Za-z]+        { printf("No es binario: %s\n", yytext); }
[ \t\n]             ;
.                   { printf("Simbolo invalido: %s\n", yytext); }
%%
int main() { yylex(); return 0; }
