%{
#include <stdio.h>
%}
%%
"+"     printf("OPERADOR ARITMETICO: suma (+)\n");
"-"     printf("OPERADOR ARITMETICO: resta (-)\n");
"*"     printf("OPERADOR ARITMETICO: multiplicacion (*)\n");
"/"     printf("OPERADOR ARITMETICO: division (/)\n");
"<="    printf("OPERADOR RELACIONAL: menor o igual (<=)\n");
">="    printf("OPERADOR RELACIONAL: mayor o igual (>=)\n");
"=="    printf("OPERADOR RELACIONAL: igual (==)\n");
"!="    printf("OPERADOR RELACIONAL: diferente (!=)\n");
"<"     printf("OPERADOR RELACIONAL: menor (<)\n");
">"     printf("OPERADOR RELACIONAL: mayor (>)\n");
[ \t\n]   ;
.         ;
%%
int main()
{
yylex();
return 0;
}
