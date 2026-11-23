%option noyywrap
%{
#include <stdlib.h>
#include <stdio.h>
%}

%%
[+-]?[0-9]+(\.[0-9]+)?([eE][+-]?[0-9]+)?   printf("NUMERO REAL EXPONENCIAL\n");
[0-9]+                                      printf("NUMERO\n");
[a-zA-Z][a-zA-Z0-9]*                        printf("IDENTIFICADOR\n");
[ \t\n]+                                    ;
.                                           ;
%%

int main(void) {
    yylex();
    return 0;
}
