%{
#include <stdio.h>
%}
%option noyywrap
EMAIL  [a-zA-Z0-9._%+-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z]{2,}
%%
{EMAIL}    { printf("TOKEN EMAIL valido: %s\n", yytext); }
.|\n       { }
%%
int main() { yylex(); return 0; }
